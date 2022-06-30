package com.GPA_services.beans;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;

public class Admin {
	
	private int idAdmin;
	private String firstName;
	private String lastName;
	private String tel;
	private String CNI;
	private String password;
	private String avatar;
	/**
	 * @return the idAdmin
	 */
	public int getIdAdmin() {
		return idAdmin;
	}


	/**
	 * @param idAdmin the idAdmin to set
	 */
	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}


	private String Username;
	private String email;
	
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}


	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}


	/**
	 * 
	 */
	public Admin() {
	}
	
	
	/**
	 * @return the avatar
	 */
	public String getAvatar() {
		return avatar;
	}


	/**
	 * @param avatar the avatar to set
	 */
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}


	/**
	 * @return the username
	 */
	public String getUsername() {
		return Username;
	}


	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		Username = username;
	}


	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}
	/**
	 * @param firstName the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	/**
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}
	/**
	 * @param lastName the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	/**
	 * @return the cNI
	 */
	public String getCNI() {
		return CNI;
	}
	/**
	 * @param cNI the cNI to set
	 */
	public void setCNI(String cNI) {
		CNI = cNI;
	}
	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}
	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}
	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}
	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}


	public void setAvatar(Blob blob) throws SQLException, IOException {
		// TODO Auto-generated method stub
		File file = new File("D:\\ICT L3 S2\\ICT308\\TP\\img_tmp\\avatar.png");
		FileOutputStream fos = new FileOutputStream(file);
		byte b[];
		b = blob.getBytes(1, (int)blob.length());
		fos.write(b);
		this.avatar = file.getAbsolutePath();
		
		System.out.println("Bean Admin avatar: "+avatar);
	}
	
	
	
}
