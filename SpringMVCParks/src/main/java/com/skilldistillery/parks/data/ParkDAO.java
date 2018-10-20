package com.skilldistillery.parks.data;

import java.util.List;

import com.skilldistillery.parks.entities.Park;

public interface ParkDAO {
	
	Park findById( int id);
	Park create(Park park);
	Boolean delete(int id);
	public Boolean updatePark(int id,Park updatedPark);
	public List<Park> listAllParks();

	

}
