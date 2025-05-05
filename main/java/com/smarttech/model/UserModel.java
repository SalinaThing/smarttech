package com.smarttech.model;

import java.io.File;
import java.io.Serializable;
import java.time.LocalDate;

import com.smarttech.util.StringUtils;

import jakarta.servlet.http.Part;

public class UserModel implements Serializable {
	
	private static final long serialVersionUID = 1L;

	private String fullName;
	private String email;
	private String userName;
	private String phoneNumber;
	private String address;
	private String password;
	private LocalDate dob;
	private String gender;
	private String imageUrlFromPart;
	private String role;
	
	public UserModel() {
		super();
		this.fullName = fullName;
		this.email = email;
		this.userName = userName;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.password = password;
		this.dob = dob;
		this.gender = gender;
		Part part = null;
		this.imageUrlFromPart = getImageUrl(part);
		this.role = role;
	}

	public UserModel(String username2, String password2) {
		// TODO Auto-generated constructor stub
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	
	public void setGender(String gender) {
		this.gender = gender;
	}
 
	public String getGender() {
		
		return this.gender;
	}
	
	public String getImageUrlFromPart() {
		return imageUrlFromPart;
	}

	public void setImageUrlFromPart(String imageUrlFromPart) {
		this.imageUrlFromPart = imageUrlFromPart;
	}
	
	private String getImageUrl(Part part) {
		String savePath = StringUtils.IMAGE_DIR_SAVE_PATH_USER;
		File fileSaveDir = new File(savePath);
		String imageUrlFromPart = null;
		if (!fileSaveDir.exists()) {
			fileSaveDir.mkdirs();
		}
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				imageUrlFromPart = s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		if (imageUrlFromPart == null || imageUrlFromPart.isEmpty()) {
			imageUrlFromPart = "download.jpg";
		}
		return imageUrlFromPart;
	}


	public String getRole() {
		// TODO Auto-generated method stub
		return this.role;
	}
	
	public void setRole(String role) {
		this.role = role;
	}
}
