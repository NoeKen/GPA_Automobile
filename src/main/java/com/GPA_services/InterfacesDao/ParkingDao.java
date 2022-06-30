package com.GPA_services.InterfacesDao;

import java.util.List;

import com.GPA_services.beans.Parking;


public interface ParkingDao {
	boolean ajouter( Parking admin );
    List<Parking> lister();
    boolean deleteParking(int id);
    Parking editParking(Parking admin);
}
