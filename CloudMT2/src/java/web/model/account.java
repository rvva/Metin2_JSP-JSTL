/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.model;

import java.io.UnsupportedEncodingException;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author fd3s
 */
public class account {

    private String login;
    private String password;
    private String social_id;
    private String real_name;
    private String email;

    public account() {
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public String getSocial_id() {
        return social_id;
    }

    public String getReal_name() {
        return real_name;
    }

    public String getEmail() {
        return email;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSocial_id(String social_id) {
        this.social_id = social_id;
    }

    public void setReal_name(String real_name) {
        this.real_name = real_name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public account(String login, String password, String social_id, String real_name, String email) {
        this.login = login;
        this.password = password;
        this.social_id = social_id;
        this.real_name = real_name;
        this.email = email;
    }

    public String MySQLPassword(String plainText) throws UnsupportedEncodingException {
        byte[] utf8 = plainText.getBytes("UTF-8");
        return "*" + DigestUtils.sha1Hex(DigestUtils.sha1(utf8)).toUpperCase();
    }

}
