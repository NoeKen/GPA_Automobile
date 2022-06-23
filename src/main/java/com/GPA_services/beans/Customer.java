package com.GPA_services.beans;

public class Customer {
	private int idChauffeur;
	private String nomChauffeur;
	private String cniChauffeur;
	private String tel;
	private int idVoiture;
	private String connexionId;
	/**
	 * @param idChauffeur
	 * @param nomChauffeur
	 * @param cniChauffeur
	 * @param tel
	 * @param idVoiture
	 * @param connexionId
	 */
	public Customer(int idChauffeur, String nomChauffeur, String cniChauffeur, String tel, int idVoiture,
			String connexionId) {
		this.idChauffeur = idChauffeur;
		this.nomChauffeur = nomChauffeur;
		this.cniChauffeur = cniChauffeur;
		this.tel = tel;
		this.idVoiture = idVoiture;
		this.connexionId = connexionId;
	}
	/**
	 * 
	 */
	public Customer() {
	}
	/**
	 * @return the idChauffeur
	 */
	public int getIdChauffeur() {
		return idChauffeur;
	}
	/**
	 * @param idChauffeur the idChauffeur to set
	 */
	public void setIdChauffeur(int idChauffeur) {
		this.idChauffeur = idChauffeur;
	}
	/**
	 * @return the nomChauffeur
	 */
	public String getNomChauffeur() {
		return nomChauffeur;
	}
	/**
	 * @param nomChauffeur the nomChauffeur to set
	 */
	public void setNomChauffeur(String nomChauffeur) {
		this.nomChauffeur = nomChauffeur;
	}
	/**
	 * @return the cniChauffeur
	 */
	public String getCniChauffeur() {
		return cniChauffeur;
	}
	/**
	 * @param cniChauffeur the cniChauffeur to set
	 */
	public void setCniChauffeur(String cniChauffeur) {
		this.cniChauffeur = cniChauffeur;
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
	 * @return the idVoiture
	 */
	public int getIdVoiture() {
		return idVoiture;
	}
	/**
	 * @param idVoiture the idVoiture to set
	 */
	public void setIdVoiture(int idVoiture) {
		this.idVoiture = idVoiture;
	}
	/**
	 * @return the connexionId
	 */
	public String getConnexionId() {
		return connexionId;
	}
	/**
	 * @param connexionId the connexionId to set
	 */
	public void setConnexionId(String connexionId) {
		this.connexionId = connexionId;
	}
	
	
	
}
