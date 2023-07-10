package com.onlineticketbookingwebsite.role;
import java.util.List;

public class Role {
    List<String> accept;
    public Role(List<String> accept){ this.accept=accept;}

    public List<String> getAccept() {
        return accept;
    }

    public void setAccept(List<String> accept) {
        this.accept = accept;
    }

    public boolean accept(String name){
        return accept!=null && accept.contains(name);
    }
}
