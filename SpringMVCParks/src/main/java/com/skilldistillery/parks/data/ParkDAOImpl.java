package com.skilldistillery.parks.data;

import java.util.ArrayList;
import java.util.List;

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
	 
	 //GET PARK BY ID
	@Override
	public Park findById(int id) {
	 
	 Park park = em.find(Park.class, id);
		
		return park;
	}
	
	//GET PARK BY NAME
	//SELECT * FROM park where park.name like "arc%";
	@Override
	public Park findByName(String name) {
		
		String queryStr = "SELECT park FROM Park park WHERE park.name like :n";
		
		//Park park = em.createQuery(queryStr, Park.class).getParameter(name, type)
		
		return null;
	}
	
	//LIST ALL PARKS
	public List<Park> listAllParks() {
		
		String queryStr = "SELECT park FROM Park park";
		List<Park> parks = em.createQuery(queryStr, Park.class).getResultList();
		
		return parks;
	}
	
	//RANDOM PARK
	public List<Integer> randomPark() {
		
		String queryStr = "SELECT park FROM Park park";
		List<Park> parks = em.createQuery(queryStr, Park.class).getResultList();
		List<Integer> ids = new ArrayList<>();
		for (Park park : parks) {
			ids.add(park.getId());
		}
		
		
		return ids;
	}

	//CREATE PARK
	@Override
	public Park create(Park park) {
		
		em.persist(park);
		
		em.flush();
		
		return park;
	}
	//DELETE PARK
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
	// UPDATE PARK
	@Override
	public Boolean updatePark(int id,Park updatedPark) {
		
		Park managedPark = em.find(Park.class, id);
		
		managedPark.setName(updatedPark.getName());
		managedPark.setLocation( updatedPark.getLocation());
		managedPark.setSize(updatedPark.getSize());
		managedPark.setVisits(updatedPark.getVisits());
		managedPark.setDangers(updatedPark.getDangers());
		managedPark.setFounded(updatedPark.getFounded());
		managedPark.setAdmission(updatedPark.getAdmission());
		managedPark.setAttraction(updatedPark.getAttraction());
		managedPark.setDistance(updatedPark.getDistance());

		
		
		return null;
	}

	

	
	
	
	
	
	

}
