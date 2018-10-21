package com.skilldistillery.parks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	//LIST ALL PARKS
	@RequestMapping(path="list.do", method= RequestMethod.GET)
	public ModelAndView listAllParks() {
		ModelAndView mv = new ModelAndView();
		
		List<Park> parks = pd.listAllParks();
		
		mv.addObject("parks", parks);
		mv.setViewName("WEB-INF/views/listAll.jsp");
		
		return mv;
		
	}
	//RANDOM PARK FINDER
	@RequestMapping(path="random.do" ,method = RequestMethod.GET)
	public ModelAndView getRandomPark() {
		ModelAndView mv = new ModelAndView();
															
		List<Integer> ids = pd.randomPark();					//	Min + (int)(Math.random() * ((Max - Min) + 1))
		int randomId = 0 + (int)(Math.random()*((ids.size()-0)-1));
		int parkRandomId = ids.get(randomId);
		
		Park park = pd.findById(parkRandomId);
		
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
	
	//UPDATE PARK
	@RequestMapping( path = "updatePark.do", method = RequestMethod.POST)
	public String updatePark(Park updatedPark, int id) {
		
		pd.updatePark(id, updatedPark);
		
		return "redirect:updated.do";
	}
	
	@RequestMapping(path="updated.do", method = RequestMethod.GET)
	public ModelAndView updatedPark () {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/index.jsp");
		
		return mv;
	}
	
	
	//RETURN TO HOME PAGE MAPPING
	@RequestMapping(path="home.do" ,method = RequestMethod.GET)
	public String index () {
		
		return "WEB-INF/views/index.jsp";
		
	}
	
	
	//GO TO ADD PAGE MAPPING
	@RequestMapping(path="add.do" ,method = RequestMethod.GET)
	public String add () {
		
		return "WEB-INF/views/add.jsp";
		
	}
	
	
	//GO TO EDIT/UPDATE PAGE MAPPING
	@RequestMapping(path="edit.do" ,method = RequestMethod.GET)
	public String edit (int id, Model model) {
		
		Park park = pd.findById(id);
		model.addAttribute("park", park);
		
		return "WEB-INF/views/edit.jsp";
		
	}
	
	//GO TO DELETE PAGE MAPPING
	@RequestMapping(path="delete.do" ,method = RequestMethod.GET)
	public String delete (int id, Model model) {
		
		Park park = pd.findById(id);
		model.addAttribute("park", park);
		
		return "WEB-INF/views/delete.jsp";
		
	}

}
