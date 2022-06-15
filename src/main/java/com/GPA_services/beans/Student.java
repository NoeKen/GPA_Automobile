package com.GPA_services.beans;

public class Student {
	private int sdtId;
	private String nom;
	private String prenom;
	private String age;
	private String matricule;
	
	
	public Student() {}
	
	/**
	 * @param id
	 * @param nom
	 * @param prenom
	 * @param age
	 * @param matricule
	 */
	public Student(int id, String nom, String prenom, String age, String matricule) {
		this.sdtId = id;
		this.nom = nom;
		this.prenom = prenom;
		this.age = age;
		this.matricule = matricule;
	
	}

	/**
	 * @return the sdtId
	 */
	public int getSdtId() {
		return sdtId;
	}

	/**
	 * @param sdtId the sdtId to set
	 */
	public void setSdtId(int sdtId) {
		this.sdtId = sdtId;
	}

	/**
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}

	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}

	/**
	 * @return the prenom
	 */
	public String getPrenom() {
		return prenom;
	}

	/**
	 * @param prenom the prenom to set
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	/**
	 * @return the age
	 */
	public String getAge() {
		return age;
	}

	/**
	 * @param age the age to set
	 */
	public void setAge(String age) {
		this.age = age;
	}

	/**
	 * @return the matricule
	 */
	public String getMatricule() {
		return matricule;
	}

	/**
	 * @param matricule the matricule to set
	 */
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	
}
