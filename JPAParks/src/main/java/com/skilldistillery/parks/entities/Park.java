package com.skilldistillery.parks.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Park {
	
	
	@Id
	@GeneratedValue( strategy=GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String location;
	
	private double size;

}