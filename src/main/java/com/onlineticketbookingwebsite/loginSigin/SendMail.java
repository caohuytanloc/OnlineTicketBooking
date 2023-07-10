package com.onlineticketbookingwebsite.loginSigin;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.Random;

public class SendMail implements Serializable {
   public String randomPassword(){
       Random rd = new Random();
       int number = rd.nextInt();
       if(number<0) number*=(-1);
       return number+"";
   }
   public SendMail(){
   }
   public void sendMail(String mail,String pass){
       Properties pro= new Properties();
        pro.put("mail.smtp.host","smtp.gmail.com");
        pro.put("mail.smtp.port","587");
        pro.put("mail.smtp.auth","true");
        pro.put("mail.smtp.starttls.enable","true");
        String username="xinh521999@gmail.com";
        String password="djsndehtottbmvsh";
        Session session= Session.getInstance(pro, new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication(){
                return  new PasswordAuthentication(username,password);
            }
        });
        Message message= new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress("xinh521999@gmail.com","Trương Văn Xinh"));
            message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(mail));
            message.setSubject("Forget Password");
            message.setText("VietJet xin chào!\n\n" +
                    "Đây là mật khẩu mới của bạn: "+pass);
            Transport.send(message);

        }catch(UnsupportedEncodingException | MessagingException e){
            e.printStackTrace();
        }
   }
//    public static void main(String[] args) {
////
//        SendMail sen=new SendMail();
//        System.out.println(sen.randomPassword());
// }

}
