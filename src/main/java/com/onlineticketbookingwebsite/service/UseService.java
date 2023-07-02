package com.onlineticketbookingwebsite.service;

import com.onlineticketbookingwebsite.beans.User;
import com.onlineticketbookingwebsite.dao.UserDAO;

public class UseService {
    private UserDAO userDAO;

    public void UserService() {
        this.userDAO = new UserDAO();
    }

    public User getUserById(int userId) {
        return userDAO.getUserById(userId);
    }

    public void saveUser(User user) {
        userDAO.saveUser(user);
    }
}
