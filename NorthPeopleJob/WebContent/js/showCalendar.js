function showCalendar(obj,pos,prefix){
   var rv=showModalDialog(prefix+'js/calendar/calendar.html','','dialogwidth=220px; dialogheight=210px; status=no');
   if(rv!=null)
      obj.value=rv;
}

function showCalendarWithoutInputElement(obj,pos){
   var rv=showModalDialog(prefix+'js/calendar/calendar.html','','dialogwidth=220px; dialogheight=210px; status=no');
   return rv;
}