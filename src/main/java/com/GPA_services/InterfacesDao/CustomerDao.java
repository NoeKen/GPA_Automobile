package com.GPA_services.InterfacesDao;

import java.util.List;

import com.GPA_services.beans.Customer;


public interface CustomerDao {
	boolean ajouter( Customer customer );
    List<Customer> lister();
    boolean deleteCustomer(int id);
    Customer editCustomer(int id, Customer customer);
}
