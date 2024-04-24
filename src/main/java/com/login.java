package com;

import java.util.List;
import java.util.Random;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity(name = "login")
public class login {
    @Id
    public int uid;
    public login() {
        super();
    }

    public login(int uid, String uname, String password) {
        super();
        this.uid = uid;
        this.uname = uname;
        this.password = password;
    }

    public String uname;
    public String password;

	public int getUid() {
        return uid;
    }

    public void setUid() {
        this.uid = new Random().nextInt(9000) + 1000;
    }

    public String getuname() {
        return uname;
    }

    public void setuname(String uname) {
        this.uname = uname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
}
