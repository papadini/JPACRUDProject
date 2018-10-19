package com.skilldistillery.parks.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class parkTests {
	private static EntityManagerFactory emf;
	private EntityManager em;

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
	void test() {
		fail("Not yet implemented");
	}

}
