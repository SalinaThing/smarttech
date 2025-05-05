package com.smarttech.service;

import com.smarttech.config.DbConfig;
import com.smarttech.model.CartModel;
import com.smarttech.model.ModifyUserModel;
import com.smarttech.model.UserModel;
import com.smarttech.util.PasswordEncryption;
import com.smarttech.util.StringUtils;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;

public class UserService {
    private final Connection connection;

    public UserService(DbConfig dbConfig) throws SQLException, ClassNotFoundException {
        this.connection = dbConfig.getConnection();
    }

    public int userInfo(String userName, String password) {
        try {
            PreparedStatement stUserName = connection.prepareStatement(StringUtils.QUERY_LOGIN_USER_CHECK);
            stUserName.setString(1, userName);
            ResultSet resUsername = stUserName.executeQuery();
            if (!resUsername.next()) return -2;

            PreparedStatement stPassword = connection.prepareStatement(StringUtils.QUERY_LOGIN_PASSWORD_CHECK);
            stPassword.setString(1, userName);
            ResultSet resPassword = stPassword.executeQuery();
            if (resPassword.next()) {
                String passwordDb = resPassword.getString("password");
                String decryptedPwd = PasswordEncryption.decrypt(passwordDb, userName);
                if (!decryptedPwd.equals(password)) return -3;
            }

            PreparedStatement stUser = connection.prepareStatement(StringUtils.QUERY_LOGIN_USER_DETAILS);
            stUser.setString(1, userName);
            ResultSet result = stUser.executeQuery();
            if (result.next()) {
                String userDb = result.getString("user_name");
                String passwordDb = result.getString("password");
                String decryptedPwd = PasswordEncryption.decrypt(passwordDb, userName);
                if (decryptedPwd != null && userDb.equals(userName) && decryptedPwd.equals(password)) {
                    return result.getString("role").equals("Admin") ? 1 : 2;
                }
            }

        } catch (SQLException e) {
            return -1;
        }
        return -1;
    }

    public UserModel getUserDetail(String userName) {
        try {
            PreparedStatement stDetail = connection.prepareStatement(
                "SELECT * FROM user WHERE user_name = ?");
            stDetail.setString(1, userName);
            ResultSet res = stDetail.executeQuery();
            if (res.next()) {
                UserModel user = new UserModel();
                user.setUserName(userName);
                user.setFullName(res.getString("full_name"));
                user.setEmail(res.getString("email"));
                user.setPhoneNumber(res.getString("phone_number"));
                user.setAddress(res.getString("address"));
                user.setGender(res.getString("gender"));
                user.setImageUrlFromPart(res.getString("user_image"));
                return user;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public int modifyUser(ModifyUserModel user, String userName) {
        try {
            PreparedStatement st = connection.prepareStatement(StringUtils.QUERY_ADMIN_UPDATE);
            st.setString(1, user.getFullName());
            st.setString(2, user.getAddress());
            st.setString(3, user.getPhoneNumber());
            st.setString(4, user.getEmail());
            st.setString(5, user.getGender());
            st.setString(6, user.getImageUrlFromPart());
            st.setString(7, userName);
            return st.executeUpdate() > 0 ? 1 : -1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    public int addUser(UserModel user) throws SQLException {
        PreparedStatement st = connection.prepareStatement(StringUtils.QUERY_REGISTER_USER);

        if (exists(StringUtils.QUERY_LOGIN_USER_CHECK, user.getUserName())) return -1;
        if (exists(StringUtils.QUERY_SIGNUP_PHONE_CHECK, user.getPhoneNumber())) return -2;
        if (exists(StringUtils.QUERY_SIGNUP_EMAIL_CHECK, user.getEmail())) return -3;

        st.setString(1, user.getFullName());
        st.setString(2, user.getEmail());
        st.setString(3, user.getUserName());
        st.setString(4, user.getPhoneNumber());
        st.setString(5, user.getAddress());
        st.setString(6, PasswordEncryption.encrypt(user.getUserName(), user.getPassword()));
        st.setDate(7, Date.valueOf(user.getDob()));
        st.setString(8, user.getGender());
        st.setString(9, user.getRole());
        st.setString(10, user.getImageUrlFromPart());

        return st.executeUpdate() > 0 ? 1 : 0;
    }

    private boolean exists(String query, String value) throws SQLException {
        PreparedStatement st = connection.prepareStatement(query);
        st.setString(1, value);
        ResultSet rs = st.executeQuery();
        return rs.next();
    }

	public ArrayList<CartModel> getAllCartItems(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	public Boolean loginUser(UserModel userModel) {
		// TODO Auto-generated method stub
		return null;
	}
}
