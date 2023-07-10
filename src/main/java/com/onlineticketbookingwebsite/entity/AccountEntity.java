package com.onlineticketbookingwebsite.entity;



import com.onlineticketbookingwebsite.beans.Account;
import com.onlineticketbookingwebsite.db.DBConnect;

import java.security.MessageDigest;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AccountEntity {
    public Account login(String user, String pass){
        try {

            PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "select * from accounts\n"+
                            " where user_id=?\n"+
                            " and pass=?;");
            ps.setString(1,user);
            ps.setString(2,pass);
         //   System.out.println(user+pass);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
              return new Account(rs.getString(1),rs.getString(2),
                      rs.getString(3),
                      rs.getString(4),
                      rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void signup(String user, String mail, String phone, String pass){
        try {
            PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "insert into accounts "+
                            " values (?,?,?,?,0);");
            ps.setString(1,user);
            ps.setString(2,pass);
            ps.setString(3,mail);
            ps.setString(4,phone);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public int setIdUser(){
        int id=0;
        Statement s = null;
        try {
            s = DBConnect.getInstance().connectStament();
            ResultSet rs = s.executeQuery("select id from accounts");
            rs.last();
            id=Integer.parseInt(rs.getString(1));
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return id+1;
    }
    public Account checkSignup(String user){
        try {
            PreparedStatement ps = DBConnect.getInstance().connectStament().getConnection().prepareStatement(
                    "select * from accounts\n"+
                            " where user_id=?;\n");
            ps.setString(1,user);
            ResultSet rs=ps.executeQuery();
            while (rs.next()){
                return new Account(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public void setPassword(String mail,String pass){
        try {
            PreparedStatement ps = DBConnect.getInstance().get(
                    "UPDATE accounts\n" +
                            "SET Pass=?\n" +
                            "WHERE Mail=?;");
            ps.setString(1,pass);
            ps.setString(2,mail);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public String md5(String msg) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(msg.getBytes());
            byte byteData[] = md.digest();
            //convert the byte to hex format method 1
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < byteData.length; i++) {
                sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
            }
            return  sb.toString();
        } catch (Exception ex) {
            return "";
        }
    }
    public static void main(String[] args) {
        AccountEntity ac=new AccountEntity();
       System.out.println(ac.login("admin","111"));
    }
}
