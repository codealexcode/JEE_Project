/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.efrei.model;

/**
 *
 * @author Alexis
 */
public class Member {
    int id;
    String name;
    String firstname;
    String email;
    String phonehome;
    String phonemobile;
    String phonework;
    String address;
    String zipcode;
    String city;
    
    public Member(){}

    public Member(int id, String name, String firstname, String email, String phonehome, String phonemobile, String phonework, String address, String zipcode, String city) {
        this.id = id;
        this.name = name;
        this.firstname = firstname;
        this.email = email;
        this.phonehome = phonehome;
        this.phonework = phonework;
        this.phonemobile = phonemobile;
        this.address = address;
        this.zipcode = zipcode;
        this.city = city;
    }
    
    public int getId(){
        return id;
    }
    
    public void setId(int id){
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public String getPhoneHome(){
        return phonehome;
    }
    
    public String getPhoneWork(){
        return phonework;
    }
    
    public String getPhoneMobile(){
        return phonemobile;
    }
    
    public String getAddress(){
        return address;
    }
    
    public String getZipcode(){
        return zipcode;
    }
    
    public String getCity(){
        return city;
    }
}
