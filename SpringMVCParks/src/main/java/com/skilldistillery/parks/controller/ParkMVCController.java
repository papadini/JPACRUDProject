package com.skilldistillery.parks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.parks.data.ParkDAO;
import com.skilldistillery.parks.entities.Park;

@Controller
public class ParkMVCController {
	
	@Autowired
	private ParkDAO pd;
	
	
	//GET PARK BY ID
	@RequestMapping(path="getpark.do" ,method = RequestMethod.GET)
	public ModelAndView findParkById( int id ) {
		
		ModelAndView mv = new ModelAndView();
		Park park = pd.findById(id);
		
		mv.addObject("park", park);
		mv.setViewName("WEB-INF/views/parkDetails.jsp");
		
		return mv;
	}
	
	//CREATE NEW PARK
	@RequestMapping(path="createpark.do", method = RequestMethod.POST)
	public String createPark(Park newPark) {
		
		pd.create(newPark);
		
		return "redirect:created.do";
	}
	
	@RequestMapping(path="created.do", method = RequestMethod.GET)
	public ModelAndView createdPark () {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/index.jsp");
		
		return mv;
	}
	
	
	//DELETE PARK
	@RequestMapping( path = "deletePark.do", method = RequestMethod.POST)
	public String deletePark( int id) {
		
		pd.delete(id);
		
		return "redirect:deleted.do";
	}
	@RequestMapping(path="deleted.do", method = RequestMethod.GET)
	public ModelAndView deletedPark () {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/index.jsp");
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(path="home.do" ,method = RequestMethod.GET)
	public String index () {
		
		return "WEB-INF/views/index.jsp";
		
	}

}
