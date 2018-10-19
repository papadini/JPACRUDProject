package com.skilldistillery.parks.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.skilldistillery.parks.entities.Park;


@Transactional
@Repository
public class ParkDAOImpl implements ParkDAO {
	
	 @PersistenceContext
	 EntityManager em;
	 
	@Override
	public Park findById(int id) {
	 
	 Park park = em.find(Park.class, id);
		
		return park;
	}

	@Override
	public Park create(Park park) {
		
		em.persist(park);
		
		em.flush();
		
		return park;
	}

	@Override
	public Boolean delete(int id) {
		
		Park park = em.find(Park.class, id);
		em.remove(park);
		if( em.find(Park.class, id) == null) {
			return true;
			
		}
		else {
			return false;
		}
	}
	
	
	
	
	

}
