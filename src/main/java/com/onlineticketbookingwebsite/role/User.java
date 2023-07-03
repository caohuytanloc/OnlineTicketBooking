package com.onlineticketbookingwebsite.role;
import java.io.Serializable;

public class User implements Serializable {
    String username;
    String ava;
    Role role;

    public boolean accept(String name){ return  role.accept(name);}

    public void setRole(Role role) {
        this.role = role;
    }

    public Role getRole() {
        return role;
    }

    public String getAva() {
        return ava;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUsername() {
        return username;
    }

    public void setAva(String ava) {
        this.ava = ava;
    }
}
