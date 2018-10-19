package com.skilldistillery.parks.data;

import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.skilldistillery.parks.entities.Park;


@Transactional
@Component
public class ParkDAOImpl implements ParkDAO {

	
	@Override
	public Park findById(int id) {
		
		
		
		
		return null;
	}

}
