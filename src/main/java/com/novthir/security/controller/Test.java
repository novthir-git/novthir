package com.novthir.security.controller;

import java.util.Date;

import org.springside.modules.security.utils.Digests;
import org.springside.modules.utils.Encodes;

import com.novthir.security.entity.User;


public class Test {
	private static final int INTERATIONS = 1024;
	private static final int SALT_SIZE = 8;
	private static final String ALGORITHM = "SHA-1";
	public static class HashPassword {
		public String salt;
		public String password;
	}
	
	public static HashPassword encryptPassword(String plainPassword) {
		HashPassword result = new HashPassword();
		byte[] salt = Digests.generateSalt(SALT_SIZE);
		result.salt = Encodes.encodeHex(salt);

		byte[] hashPassword = Digests.sha1(plainPassword.getBytes(), salt, INTERATIONS);
		result.password = Encodes.encodeHex(hashPassword);
		return result;
	}
	public void create(User user){
		user.setCreateTime(new Date());
		HashPassword hashPassword = encryptPassword(user.getPlainPassword());
		user.setSalt(hashPassword.salt);
		user.setPassword(hashPassword.password);
	}
}
