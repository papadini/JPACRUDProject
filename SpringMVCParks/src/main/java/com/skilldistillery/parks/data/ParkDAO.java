package com.skilldistillery.parks.data;

import com.skilldistillery.parks.entities.Park;

public interface ParkDAO {
	
	Park findById( int id);
	Park create(Park park);
	Boolean delete(int id);
	//update
	//find all

	

}
