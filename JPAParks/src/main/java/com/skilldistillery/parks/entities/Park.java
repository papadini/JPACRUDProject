package com.skilldistillery.parks.entities;

import javax.persistence.Column;
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
	
	private Double size;
	
	@Column(name="annual_visits")
	private Double visits;
	
	private String dangers;
	
	private Integer founded;
	
	@Column(name="admission_cost")
	private Double admission;
	
	@Column(name="main_attraction")
	private String attraction;
	
	private Double distance;
	
	
	
	// GETTERS & SETTERS

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public double getSize() {
		return size;
	}

	public void setSize(double size) {
		this.size = size;
	}

	public double getVisits() {
		return visits;
	}

	public void setVisits(double visits) {
		this.visits = visits;
	}

	public String getDangers() {
		return dangers;
	}

	public void setDangers(String dangers) {
		this.dangers = dangers;
	}

	public int getFounded() {
		return founded;
	}

	public void setFounded(int founded) {
		this.founded = founded;
	}

	public double getAdmission() {
		return admission;
	}

	public void setAdmission(double admission) {
		this.admission = admission;
	}

	public String getAttraction() {
		return attraction;
	}

	public void setAttraction(String attraction) {
		this.attraction = attraction;
	}

	public double getDistance() {
		return distance;
	}

	public void setDistance(double distance) {
		this.distance = distance;
	}

	public int getId() {
		return id;
	}

	
	
	
	//HASHCODE
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(admission);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((attraction == null) ? 0 : attraction.hashCode());
		result = prime * result + ((dangers == null) ? 0 : dangers.hashCode());
		temp = Double.doubleToLongBits(distance);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + founded;
		result = prime * result + id;
		result = prime * result + ((location == null) ? 0 : location.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		temp = Double.doubleToLongBits(size);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(visits);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	
	//EQUALS
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Park other = (Park) obj;
		if (Double.doubleToLongBits(admission) != Double.doubleToLongBits(other.admission))
			return false;
		if (attraction == null) {
			if (other.attraction != null)
				return false;
		} else if (!attraction.equals(other.attraction))
			return false;
		if (dangers == null) {
			if (other.dangers != null)
				return false;
		} else if (!dangers.equals(other.dangers))
			return false;
		if (Double.doubleToLongBits(distance) != Double.doubleToLongBits(other.distance))
			return false;
		if (founded != other.founded)
			return false;
		if (id != other.id)
			return false;
		if (location == null) {
			if (other.location != null)
				return false;
		} else if (!location.equals(other.location))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (Double.doubleToLongBits(size) != Double.doubleToLongBits(other.size))
			return false;
		if (Double.doubleToLongBits(visits) != Double.doubleToLongBits(other.visits))
			return false;
		return true;
	}

	
	//TO STRING
	@Override
	public String toString() {
		return "Park [id=" + id + ", name=" + name + ", location=" + location + ", size=" + size + ", visits=" + visits
				+ ", dangers=" + dangers + ", founded=" + founded + ", admission=" + admission + ", attraction="
				+ attraction + ", distance=" + distance + "]";
	}

	// NO ARG
	public Park() {}
	
	
	
	// FIELD CONSTRUCTOR
	public Park(String name, String location, double size, double visits, String dangers, int founded, double admission,
			String attraction, double distance) {
		super();
		this.name = name;
		this.location = location;
		this.size = size;
		this.visits = visits;
		this.dangers = dangers;
		this.founded = founded;
		this.admission = admission;
		this.attraction = attraction;
		this.distance = distance;
	}
	
	
	
	

}
