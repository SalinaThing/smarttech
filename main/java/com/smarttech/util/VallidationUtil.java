package com.smarttech.util;

/**
 * 
 */

import java.time.LocalDate;
import java.time.Period;
import java.util.regex.Pattern;
import jakarta.servlet.http.Part;

public class VallidationUtil {

	// 1. Validating whether boolean is null or empty
	public static boolean isNullOrEmpty(String value) {
		return value == null || value.trim().isEmpty();
	}

	// 2. Validating whether the contains alphanumeric or not.
	public static boolean isAlphabetic(String value) {
		return value != null && value.matches("^[a-zA-Z]+$");
	}

	// 3. Validating whether string starts with a letter and is composed of letters
	// and numbers
	public static boolean isAlphanumericStartingWithLetter(String value) {
		return value != null && value.matches("^[a-zA-Z][a-zA-Z0-9]*$");
	}

	// 4. Validating whether string is "male" or "female" (case insensitive)
	public static boolean isValidGender(String value) {
		return value != null && (value.equalsIgnoreCase("male") || value.equalsIgnoreCase("female"));
	}

	// 5. Validating Whether string is a valid email address
	public static boolean isValidEmail(String email) {
		String emailRegex = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
		return email != null && Pattern.matches(emailRegex, email);
	}

	// 6. Validating if a number is of 10 digits and starts with 98
	public static boolean isValidPhoneNumber(String number) {
		return number != null && number.matches("^98\\d{8}$");
	}

	// 7. Validating if a password is composed of at least 1 capital letter, 1
	// number,
	// and 1 symbol
	public static boolean isValidPassword(String password) {
		String passwordRegex = "^(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
		return password != null && password.matches(passwordRegex);
	}

	// 8. Validating if a Part's file extension matches with image extensions (jpg,
	// jpeg, png, gif)
	public static boolean isValidImageExtension(Part imagePart) {
		if (imagePart == null || isNullOrEmpty(imagePart.getSubmittedFileName())) {
			return false;
		}
		String fileName = imagePart.getSubmittedFileName().toLowerCase();
		return fileName.endsWith(".jpg") || fileName.endsWith(".jpeg") || fileName.endsWith(".png")
				|| fileName.endsWith(".gif");
	}

	// 9. Validating whether password and retype password match
	public static boolean doPasswordsMatch(String password, String confirmPassword) {
		return password != null && password.equals(confirmPassword);
	}

	// 10. Validate whether the date of birth is at least 16 years before today
	public static boolean isAgeAtLeast16(LocalDate dob) {
		if (dob == null) {
			return false;
		}
		LocalDate today = LocalDate.now();
		return Period.between(dob, today).getYears() >= 16;
	}
}