package com.skilldistillery.parks.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.parks.data.ParkDAO;
import com.skilldistillery.parks.entities.Park;

class DAOTests {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private ParkDAO pd;

	@BeforeAll
	static void  setUpAll() {
		emf = Persistence.createEntityManagerFactory("parks");
		
	}
	@AfterAll
	static void tearDownAll() {
		emf.close();
	}
	
	
	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
	}
	
	@Test
	@DisplayName("test created new park ")
	void test () {
		Park park1 = new Park("moab","moan,UT",0,0,"Heat Stroke, Falling", 1938,0,"arches",120);
				Park park2 =pd.create(park1);
		 
		Park checkPark = pd.findById(park2.getId());
		
		assertEquals("moab", checkPark.getName());
		
	}

}
