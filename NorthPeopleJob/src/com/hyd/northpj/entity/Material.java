package com.hyd.northpj.entity;



/**
 * TMaterial entity. @author MyEclipse Persistence Tools
 */

public class Material  implements java.io.Serializable {


    // Fields    

     private Integer sn;
     private String name;
     private String image;
     private String description;


    // Constructors

    /** default constructor */
    public Material() {
    }

    
    /** full constructor */
    public Material(String name, String image, String description) {
        this.name = name;
        this.image = image;
        this.description = description;
    }

   
    // Property accessors

    public Integer getSn() {
        return this.sn;
    }
    
    public void setSn(Integer sn) {
        this.sn = sn;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return this.image;
    }
    
    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return this.description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
   








}