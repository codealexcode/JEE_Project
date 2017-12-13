/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.efrei.model;

public class User {
    private String _login;
    private String _pwd;

    public String get_login() {
        return _login;
    }

    public void set_login(String _login) {
        this._login = _login;
    }

    public String get_pwd() {
        return _pwd;
    }

    public void set_pwd(String _pwd) {
        this._pwd = _pwd;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (_login != null ? !_login.equals(user._login) : user._login != null) return false;
        return _pwd != null ? _pwd.equals(user._pwd) : user._pwd == null;
    }

    @Override
    public int hashCode() {
        int result = _login != null ? _login.hashCode() : 0;
        result = 31 * result + (_pwd != null ? _pwd.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "_login='" + _login + '\'' +
                ", _pwd='" + _pwd + '\'' +
                '}';
    }
}
