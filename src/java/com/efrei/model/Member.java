/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.efrei.model;

/**
 *
 * @author Alexis & DrRaider
 */
public class Member {
    private int _id;
    private String _name;
    private String _firstname;
    private String _email;
    private String _phonehome;
    private String _phonemobile;
    private String _phonework;
    private String _address;
    private String _zipcode;
    private String _city;

    public Member(int _id, String _name, String _firstname, String _email, String _phonehome, String _phonemobile, String _phonework, String _address, String _zipcode, String _city) {
        this._id = _id;
        this._name = _name;
        this._firstname = _firstname;
        this._email = _email;
        this._phonehome = _phonehome;
        this._phonemobile = _phonemobile;
        this._phonework = _phonework;
        this._address = _address;
        this._zipcode = _zipcode;
        this._city = _city;
    }

    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public String get_name() {
        return _name;
    }

    public void set_name(String _name) {
        this._name = _name;
    }

    public String get_firstname() {
        return _firstname;
    }

    public void set_firstname(String _firstname) {
        this._firstname = _firstname;
    }

    public String get_email() {
        return _email;
    }

    public void set_email(String _email) {
        this._email = _email;
    }

    public String get_phonehome() {
        return _phonehome;
    }

    public void set_phonehome(String _phonehome) {
        this._phonehome = _phonehome;
    }

    public String get_phonemobile() {
        return _phonemobile;
    }

    public void set_phonemobile(String _phonemobile) {
        this._phonemobile = _phonemobile;
    }

    public String get_phonework() {
        return _phonework;
    }

    public void set_phonework(String _phonework) {
        this._phonework = _phonework;
    }

    public String get_address() {
        return _address;
    }

    public void set_address(String _address) {
        this._address = _address;
    }

    public String get_zipcode() {
        return _zipcode;
    }

    public void set_zipcode(String _zipcode) {
        this._zipcode = _zipcode;
    }

    public String get_city() {
        return _city;
    }

    public void set_city(String _city) {
        this._city = _city;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Member member = (Member) o;

        if (_id != member._id) return false;
        if (_name != null ? !_name.equals(member._name) : member._name != null) return false;
        if (_firstname != null ? !_firstname.equals(member._firstname) : member._firstname != null) return false;
        if (_email != null ? !_email.equals(member._email) : member._email != null) return false;
        if (_phonehome != null ? !_phonehome.equals(member._phonehome) : member._phonehome != null) return false;
        if (_phonemobile != null ? !_phonemobile.equals(member._phonemobile) : member._phonemobile != null)
            return false;
        if (_phonework != null ? !_phonework.equals(member._phonework) : member._phonework != null) return false;
        if (_address != null ? !_address.equals(member._address) : member._address != null) return false;
        if (_zipcode != null ? !_zipcode.equals(member._zipcode) : member._zipcode != null) return false;
        return _city != null ? _city.equals(member._city) : member._city == null;
    }

    @Override
    public int hashCode() {
        int result = _id;
        result = 31 * result + (_name != null ? _name.hashCode() : 0);
        result = 31 * result + (_firstname != null ? _firstname.hashCode() : 0);
        result = 31 * result + (_email != null ? _email.hashCode() : 0);
        result = 31 * result + (_phonehome != null ? _phonehome.hashCode() : 0);
        result = 31 * result + (_phonemobile != null ? _phonemobile.hashCode() : 0);
        result = 31 * result + (_phonework != null ? _phonework.hashCode() : 0);
        result = 31 * result + (_address != null ? _address.hashCode() : 0);
        result = 31 * result + (_zipcode != null ? _zipcode.hashCode() : 0);
        result = 31 * result + (_city != null ? _city.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Member{" +
                "_id=" + _id +
                ", _name='" + _name + '\'' +
                ", _firstname='" + _firstname + '\'' +
                ", _email='" + _email + '\'' +
                ", _phonehome='" + _phonehome + '\'' +
                ", _phonemobile='" + _phonemobile + '\'' +
                ", _phonework='" + _phonework + '\'' +
                ", _address='" + _address + '\'' +
                ", _zipcode='" + _zipcode + '\'' +
                ", _city='" + _city + '\'' +
                '}';
    }
}
