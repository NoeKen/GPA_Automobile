package com.GPA_services.InterfacesDao;

import java.util.List;

import com.GPA_services.beans.Admin;

public interface AdminDao {
	boolean ajouter( Admin admin );
    List<Admin> lister();
    boolean deleteAdmin(int id);
    Admin editAmin(int id, Admin admin);
}
