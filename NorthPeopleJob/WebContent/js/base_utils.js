



//IE木有indexOf函数..
if(!Array.indexOf) {
    Array.prototype.indexOf = function(obj) {
        for(var i = 0; i < this.length; i++) {
            if(this[i] == obj) {
                return i;
            }
        }
        return -1;
    }
}

//IE也没有trim
String.prototype.trim= function(){  
    // 用正则表达式将前后空格  
    // 用空字符串替代。  
    return this.replace(/(^\s*)|(\s*$)/g, "");  
}

//Array的shuffle函数
Array.prototype.shuffle = function() {
    for(var j, x, i = this.length; i; j = parseInt(Math.random() * i), x = this[--i], this[i] = this[j], this[j] = x);
    return this;
};

Array.prototype.sum = function(){
    var sum = 0;
    for(var i = 0; i < this.length; i++){sum += this[i];};
    return sum;
};

//strip函数
String.prototype.strip = function() {
    return this.replace(/^\s*(.*?)\s*$/, "$1");
};

//模仿python的使用习惯, 0|[]|{}|""这些都返回false


function isNotEmpty(obj) {
    if(typeof(obj) == "undefined" || null == obj) {
        return false;
    }
    if(typeof(obj) == "function") {
        return true;
    }
    if(obj.constructor == Number) {
        if(obj) {
            return true;
        } else {
            return false;
        }
    }else if (typeof(obj) == "string"){
        if (obj != ""){
            return true;
        }else{
            return false;
        }
    }else {
        for(var prop in obj) {
            if(obj.hasOwnProperty(prop)) {
                return true;
            }
        }
        return false;
    }
};

//重载String.format方法,使格式化字符串更方便
//调用方法
//"{0},{1},hehe".format(["hello","world"]); //hello,world,hehe
//"数学={数学},语文={语文},hou".format({"数学":100,"语文":95});//数学=100,语文=95,hou
Overload = function(fn_objs) {
    var is_match = function(x, y) {
            if(x == y) return true;
            if(x.indexOf("*") == -1) return false;

            var x_arr = x.split(","),
                y_arr = y.split(",");
            if(x_arr.length != y_arr.length) return false;

            while(x_arr.length) {
                var x_first = x_arr.shift(),
                    y_first = y_arr.shift();
                if(x_first != "*" && x_first != y_first) return false;
            }
            return true;
        };
    var ret = function() {
            var args = arguments,
                args_len = args.length,
                args_types = [],
                args_type, fn_objs = args.callee._fn_objs,
                match_fn = function() {};

            for(var i = 0; i < args_len; i++) {
                var type = typeof args[i];
                type == "object" && (args[i].length > -1) && (type = "array");
                args_types.push(type);
            }
            args_type = args_types.join(",");
            for(var k in fn_objs) {
                if(is_match(k, args_type)) {
                    match_fn = fn_objs[k];
                    break;
                }
            }
            return match_fn.apply(this, args);
        };
    ret._fn_objs = fn_objs;
    return ret;
};

String.prototype.format = Overload({
    "array": function(params) {
        var reg = /{(\d+)}/gm;
        return this.replace(reg, function(match, name) {
            return params[~~name];
        });
    },
    "object": function(param) {
        var reg = /{([^{}]+)}/gm;
        return this.replace(reg, function(match, name) {
            return param[name];
        });
    }
});


function load_path(path) {
    if(!path || path.length === 0) {
        throw new Error('argument "path" is required !');
    }
    var head = document.getElementsByTagName('head')[0];
    var script = document.createElement('script');
    script.src = path;
    script.type = 'text/javascript';
    head.appendChild(script);
}

//简单实现in的判断


function check_in(obj, seq) {
    return $.inArray(obj, seq) != -1;
}

function is_equal(obj1, obj2) {
    if(obj1.constructor !== obj2.constructor) return false;
    var aMemberCount = 0;
    for(var a in obj1) {
        if(!obj1.hasOwnProperty(a)) continue;
        if(typeof obj1[a] === 'object' && typeof obj2[a] === 'object' ? !obj1[a].equals(obj2[a]) : obj1[a] !== obj2[a]) return false;
        ++aMemberCount;
    }
    for(var a in obj2)
    if(obj2.hasOwnProperty(a))--aMemberCount;
    return aMemberCount ? false : true;
}

//复制对象


function copy_obj(obj) {
    if(obj.constructor == Array) {
        var new_obj_list = [];
        for(var i = 0; i < obj.length; i++) {
            var item = obj[i];
            new_obj_list.push(copy_obj(item));
        }
        return new_obj_list;
    } else if(obj.constructor == Number || obj.constructor == String) {
        var num = obj;
        return num;
    } else {
        return $.extend(true, {}, obj);
    }
};

//给定一个dom元素，得到与它最近的指定类型的parent元素(jquery类型)


function get_parent(obj, parent_type) {
    var $parent = $(obj).parent();
    while($parent.length > 0 && $parent[0].nodeName != parent_type.toUpperCase()) {
        $parent = $parent.parent();
    }
    return $parent;
}

function ajaxGet(obj) {
    var url = $(obj).attr("href");
    var target = $(obj).attr("rel");
    $.ajax({
        url: url,
        type: "GET",
        success: function(html_code) {
            $("#" + target).html(html_code);
        }
    });
}

function ajaxPost(url, data, callback, fail_callback) {
    //保存提示
    var secure_key = $.cookie("_xsrf") || "";
    if(isNotEmpty(secure_key)){
        data["_xsrf"] = secure_key; 
    }
    var is_edit = url.indexOf("edit/ajax") != -1 ? true : false;
    if (is_edit){
        if (typeof(client_uuid) !== "undefined"){
            data["client_uuid"] = client_uuid;
            SavePrompt();
        }
    }
    isNotEmpty(fail_callback) ? fail_callback = fail_callback : fail_callback = function(){};
    $.ajax({
        url: url,
        data: data,
        dataType: "JSON",
        type: "POST",
        timeout: 15000,
        error: fail_callback,
        success: function(ret) {
            if(ret.status == "200") {
                if (ret.hasOwnProperty("edit_valid")){
                    if (!ret.edit_valid){
                        edit_lock_alert();
                        return;
                    }
                }
                if(isNotEmpty(callback)) {
                    callback(ret);
                }
                if (is_edit){
                    SavePrompt(true);
                }
            }
        }
    });
}

function syncPost(url, data, callback) {
    //保存提示
    var secure_key = $.cookie("_xsrf");
    if(isNotEmpty(secure_key)){
        data["_xsrf"] = secure_key; 
    }
    var is_edit = url.indexOf("edit/ajax") != -1 ? true : false;
    if (is_edit){
        data["client_uuid"] = client_uuid;
        SavePrompt();
    }
    $.ajax({
        url: url,
        data: data,
        dataType: "JSON",
        type: "POST",
        async: false,
        success: function(ret) {
            if(ret.status == "200") {
                if (ret.hasOwnProperty("edit_valid")){
                    if (!ret.edit_valid){
                        edit_lock_alert();
                        return;
                    }
                }
                if(isNotEmpty(callback)) {
                    callback(ret);
                }
            }
            if(is_edit){
                SavePrompt(true);
            }
        }
    });
}

function ajaxSubmit(obj) {
    var url = $(obj).attr("action") || window.location.href;
    var callback_name = $(obj).attr("callback");
    var callback = null;
    eval("callback = " + callback_name + "");
    var data = {};
    $.map($(obj).serializeArray(), function(item) {
        data[item.name] = item.value;
    });
    $.ajax({
        url: url,
        type: "POST",
        data: data,
        dataType: "JSON",
        success: function(ret) {
            if(ret.status == "200") {
                if(isNotEmpty(callback)) {
                    callback(ret);
                }
            } else if(ret.status == null) {
                alert("status is not defined in server response!");
            }

        }
    });
}

function get_oid(obj) {
    if(obj.hasOwnProperty("_id")) {
        return obj._id["$oid"];
    }
    return "";
}

function set_active_head1(idx) {
    //首页，我的问卷，问卷库等几个tab的切换
    $('.main-nav li:eq(' + idx + ')').addClass('active');
}
function set_active_head_v2(idx) {
    //新版 首页，我的问卷，问卷库等几个tab的切换
    $('.left_Menu li a').removeClass('active');
    $('.left_Menu li:eq(' + idx + ') a').addClass('active');
}
function scroll_to(obj) {
    //滚动滚动条至对象所在的位置
    var top = $(obj).offset().top;
    if(is_iframe){
        get_iframe_height(obj);
    }else{
        $('body, html').animate({
            scrollTop: top
        }, 'fast');
    }
}

//删除数组中某位置的元素
Array.prototype.remove = function(from, to) {
    var rest = this.slice((to || from) + 1 || this.length);
    this.length = from < 0 ? this.length + from : from;
    return this.push.apply(this, rest);
};

//确认框


function jsConfirm(Obj) {
    Tinfo = {
        title: Obj.title || "提示",
        content: Obj.content || "确定要删除吗！",
        //提示内容
        conw: Obj.conw || 300,
        //宽度
        obj: Obj.obj || false,
        //执行方法
        Param: Obj.Param || '',
        //执行方法参数
		obj_text: Obj.obj_text || '确定',
        //执行方法按钮内容
        close_obj: Obj.close_obj || false,
        //取消方法
        close_Param: Obj.close_Param || '',
		//取消方法参数
		close_text: Obj.close_text || '取消'
        //取消方法按钮内容
    };
    var qr = '<div class="WJButton wj_blue tcQz">'+ Tinfo.obj_text +'</div>';
    var qx = '<div class="WJButton wj_blue uniteC">'+ Tinfo.close_text +'</div>';
    var con = '<div class="tccCon">' + '<div class="tccCon_t">'+ Tinfo.content +'</div><div class="tccCon_a">' + qr + qx + '</div></div>';

    //创建弹出层         
    var wb = new jsbox({
        onlyid: "maptss",
        title: Tinfo.title,
        conw: Tinfo.conw,
        // FixedTop:170,
        content: con,
        range: true,
        mack: true
    }).show();

    //确定事件
    $('.tcQz').die().live('click', function() {
        var isReturn = Tinfo.obj(Tinfo.Param);
		if(isReturn==undefined || isReturn==null){
          $('.jsbox_close').click();
		}
    });
    //取消事件
    $('.uniteC').one('click', function() {
        if(Tinfo.close_obj) {
            Tinfo.close_obj(Tinfo.close_Param);
        }
        $('.jsbox_close').click();
    });
	//关闭按钮取消事件
    $('.jsbox_close').one('mousedown', function() {
        if(Tinfo.close_obj) {
            Tinfo.close_obj(Tinfo.close_Param);
        }
        $('.jsbox_close').click();
		return false;
    });

}


function sleep(delay) {
    var start = new Date().getTime();
    while(new Date().getTime() < start + delay);
}

if(!Array.prototype.filter) {
    Array.prototype.filter = function(fun /*, thisp*/ ) {
        "use strict";

        if(this == null) throw new TypeError();

        var t = Object(this);
        var len = t.length >>> 0;
        if(typeof fun != "function") throw new TypeError();

        var res = [];
        var thisp = arguments[1];
        for(var i = 0; i < len; i++) {
            if(i in t) {
                var val = t[i]; // in case fun mutates this
                if(fun.call(thisp, val, i, t)) res.push(val);
            }
        }

        return res;
    };
}

//数组去重
Array.prototype.unique = function () {
    var n = []; //一个新的临时数组
    for (var i = 0; i < this.length; i++) //遍历当前数组
    {
        if (n.indexOf(this[i]) == -1) n.push(this[i]);
    }
    return n;
}  

//确认框
function jsAlert(Obj) {
    Tinfo = {
        title: Obj.title || "提示",
        content: Obj.content || "确定要删除吗！",
        //提示内容
        conw: Obj.conw || 300,
        //宽度
        obj: Obj.obj || false,
        //执行方法
        Param: Obj.Param || '',
        //执行方法参数
        obj_text: Obj.obj_text || '确定'
        //执行方法按钮内容
    };
    var qr = '<div class="WJButton wj_blue tcQz">'+ Tinfo.obj_text +'</div>';
    var con = '<div class="tccCon">' + '<div class="tccCon_t">'+ Tinfo.content +'</div><div class="tccCon_a">' + qr+ '</div></div>';

    //创建弹出层         
    var wb = new jsbox({
        onlyid: "maptss",
        title: Tinfo.title,
        conw: Tinfo.conw,
        //FixedTop:170,
        content: con,
        Close:false,
        range: true,
        mack: true
    }).show();

    //确定事件
    $('.tcQz').die().live('click', function() {
        if(Tinfo.obj){
            var isReturn = Tinfo.obj(Tinfo.Param);
            if(isReturn==undefined || isReturn==null){
              $('.jsbox_close').click();
            }
        }else{
          $('.jsbox_close').click();
        }
    });
}

//新消息提示
function NewMessage(off){
      if(off!==undefined){
         clearInterval(message);
         $('.NewMessage a').removeClass('xsa');
         return;
      }
      message = setInterval(function(){
          var Class = $('.NewMessage a').attr('class');
          if(Class==""){$('.NewMessage a').addClass('xsa');}else{$('.NewMessage a').removeClass('xsa');}
      },800);

  }

eval(function(p,a,c,k,e,d){e=function(c){return c.toString(36)};if(!''.replace(/^/,String)){while(c--){d[c.toString(a)]=k[c]||c.toString(a)}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('4 8(a,b){1 d,e,c="";5(d=0;d<a.7/b;d++)e=a.g(d*b),c+=e;3 c}4 h(9,6){1 f=k;3 i("f = j"+6),f(9)}4 l(a){1 c,b="";5(c=0;c<a.7;c++)b+=8(a[c],2);3 m(b)}',23,23,'|var||return|function|for|v|length|slice_str|sa|||||||charAt|et|eval|ef|null|ef1|hex_md5'.split('|'),0,{}))

function InterceptString(str,length,length1)
{
//str=str.replace(/[" "|"　"]/g,"");//去半角+全角空格
//str=str.replace(/\s+/g,"");//去半角空格
//str=str.replace(/[\u3000]/g,"")去全角空格
//str=str.replace(/\s/ig,'');去半角空格
if(str.length>length)
{
   if(length1==0)
   {
    length1=length;
   }
   if (str.length >= length1)
   {
    var str_left = str.substr(0, length1);
    var str_right = str.substr(length1);
    var banjiao = 0;
    var quanjiao = 0;
    var strCode;
    for(var i=0;i<str_left.length;i++)
    {
     strCode=str.charCodeAt(i);  

     if (strCode>= 33 && strCode <= 126)
     {
      banjiao++;
     }
     else
     {
      quanjiao++;
     }
    }
    if ((quanjiao + banjiao / 2) > length || (quanjiao + banjiao / 2) - length == 0.5)
    {
     str_left = str_left.substr(0,str_left.length-1);
     return str_left;
    }
    else if ((quanjiao + banjiao / 2) - length != 0)
    {
     if (length1 + 1 <= str.length)
     {
      str_left = InterceptString(str, length, length1 + 1);
     }
    }
    return str_left;
   }
}
}

function getDaysInOneMonth(year, month){
    var d= new Date(year, month, 0);
    return d.getDate();
}

function get_iframe_height(obj){

    if(isNotEmpty(obj)&&obj==-2){
        var top = -2;
    }else if(!isNotEmpty(obj)){
        var top = -1;
    }else{
        var top = $(obj).offset().top;  
    }
    var body_height = $('body').height()+30;
    var postObj = body_height+","+top;
    if (typeof postMessage != 'undefined'){
       window.parent.postMessage(postObj,'*');
    }
}
//Load页面
function Appload(Obj){
    var url = Obj.url||"/";
    if(url.indexOf('?')==-1){
        url = url+"?rd="+new Date().getTime();
    }else{
        url = url+"&rd="+new Date().getTime();
    }
        var Tinfo={
            obj:Obj.obj||$('body'),
            url:url,
            data:Obj.data||"",
            limg:Obj.limg||false,
            callback:Obj.callback||function(){}
        }
        Tinfo.obj.load(Tinfo.url,Tinfo.data, function(){
           Tinfo.callback();
        }); 
}

function tabularize(arr, cols){
    var ret = [];
    for (var i = 0; i < parseInt(arr.length / cols) + 1; i++) {
        var item = arr.slice(cols * i, cols * (i + 1));
        if (item.length < cols){
            for (var k = 0; k < (cols - item.length); k++) {
                item.push(null);
            }
        }
        ret.push(item);
    }
    return ret;
}

String.prototype.replaceAll = function(stringToFind,stringToReplace){
    var temp = this;
    var index = temp.indexOf(stringToFind);
    while(index != -1){
        temp = temp.replace(stringToFind,stringToReplace);
        index = temp.indexOf(stringToFind);
    }
    return temp;
}

function edit_lock_alert(){
    jsConfirm({
        content:"问卷内容刚在其它浏览器窗口被修改， 是否重新加载进行编辑？",
        title: "提示",
        obj_text: "是",
        close_text: "否",
        obj: get_edit_lock,
        close_obj: close_window
    });
}


//让IE8以下浏览器支持split
var split;
 
// Avoid running twice; that would break the `nativeSplit` reference
split = split || function (undef) {
 
    var nativeSplit = String.prototype.split,
        compliantExecNpcg = /()??/.exec("")[1] === undef, // NPCG: nonparticipating capturing group
        self;
 
    self = function (str, separator, limit) {
        // If `separator` is not a regex, use `nativeSplit`
        if (Object.prototype.toString.call(separator) !== "[object RegExp]") {
            return nativeSplit.call(str, separator, limit);
        }
        var output = [],
            flags = (separator.ignoreCase ? "i" : "") +
                    (separator.multiline  ? "m" : "") +
                    (separator.extended   ? "x" : "") + // Proposed for ES6
                    (separator.sticky     ? "y" : ""), // Firefox 3+
            lastLastIndex = 0,
            // Make `global` and avoid `lastIndex` issues by working with a copy
            separator = new RegExp(separator.source, flags + "g"),
            separator2, match, lastIndex, lastLength;
        str += ""; // Type-convert
        if (!compliantExecNpcg) {
            // Doesn't need flags gy, but they don't hurt
            separator2 = new RegExp("^" + separator.source + "$(?!\\s)", flags);
        }
        /* Values for `limit`, per the spec:
         * If undefined: 4294967295 // Math.pow(2, 32) - 1
         * If 0, Infinity, or NaN: 0
         * If positive number: limit = Math.floor(limit); if (limit > 4294967295) limit -= 4294967296;
         * If negative number: 4294967296 - Math.floor(Math.abs(limit))
         * If other: Type-convert, then use the above rules
         */
        limit = limit === undef ?
            -1 >>> 0 : // Math.pow(2, 32) - 1
            limit >>> 0; // ToUint32(limit)
        while (match = separator.exec(str)) {
            // `separator.lastIndex` is not reliable cross-browser
            lastIndex = match.index + match[0].length;
            if (lastIndex > lastLastIndex) {
                output.push(str.slice(lastLastIndex, match.index));
                // Fix browsers whose `exec` methods don't consistently return `undefined` for
                // nonparticipating capturing groups
                if (!compliantExecNpcg && match.length > 1) {
                    match[0].replace(separator2, function () {
                        for (var i = 1; i < arguments.length - 2; i++) {
                            if (arguments[i] === undef) {
                                match[i] = undef;
                            }
                        }
                    });
                }
                if (match.length > 1 && match.index < str.length) {
                    Array.prototype.push.apply(output, match.slice(1));
                }
                lastLength = match[0].length;
                lastLastIndex = lastIndex;
                if (output.length >= limit) {
                    break;
                }
            }
            if (separator.lastIndex === match.index) {
                separator.lastIndex++; // Avoid an infinite loop
            }
        }
        if (lastLastIndex === str.length) {
            if (lastLength || !separator.test("")) {
                output.push("");
            }
        } else {
            output.push(str.slice(lastLastIndex));
        }
        return output.length > limit ? output.slice(0, limit) : output;
    };
 
    // For convenience
    String.prototype.split = function (separator, limit) {
        return self(this, separator, limit);
    };
 
    return self;
 
}();

function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}


//实时保存提示
function SavePrompt(isOff){
    var Sav = $('.SavePrompt');
    if(!isOff){var isOff=false;}
    if(isOff){
      $('.SavePrompt').text('已实时保存'); 
      setTimeout(function(){
        Sav.fadeOut("slow");
        setTimeout(function(){
          Sav.remove();
        },600);
    },800);
      
    }else{
       if(Sav.length<1){
          $('body').append('<div class="SavePrompt">正实时保存</div>');
       }
    }
}
//文件上传基础方法
function file_upload_custom(f,obj,url,success_callback,fail_callback) {

    if(!success_callback){success_callback=function(){}};
    if(!fail_callback){fail_callback=function(){}};    

    var xhr = new XMLHttpRequest();
    xhr.open('POST', url, true);
    var formData;
    formData = new FormData();
    formData.append('file', f);
    for(var key in obj){
        formData.append(key, obj[key]);
    }
    xhr.onreadystatechange = function(response) {
        if(xhr.readyState == 4 && xhr.status == 200 && xhr.responseText != "") {
            var ret = JSON.parse(xhr.responseText);
            success_callback(ret, qid);
        } else if(xhr.status != 200 && xhr.responseText) {
            var ret = JSON.parse(xhr.responseText);
            fail_callback(ret, qid);
        }
    };
    xhr.send(formData);
};

function strip_tag(str){
    var reTag = /<(?:.|\s)*?>/g;
    return str.replace(reTag,"");
}