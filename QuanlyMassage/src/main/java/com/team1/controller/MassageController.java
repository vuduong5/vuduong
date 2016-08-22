package com.team1.controller;

import java.util.List;



import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team1.entity.Massage;
import com.team1.service.MassageService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MassageController {
	
	private static final Logger logger = Logger.getLogger(MassageController.class);
	
	public MassageController() {
		System.out.println("EmployController()");
	}
	@Autowired
	private MassageService massageService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping("createMassage")
	public ModelAndView createMassage(@ModelAttribute Massage massage){
		logger.info("Creating Massage. Data: "+massage);
		return new ModelAndView("massageForm");
	}
	
    @RequestMapping("deleteMassage")
    public ModelAndView deleteEmployee(@RequestParam int id) {
    	logger.info("Deleting the Massage. Id : "+id);
        massageService.deleteMassage(id);
        return new ModelAndView("redirect:getAllMassages");
    }
    
	@RequestMapping("editMassage")
	public ModelAndView editMassage(@RequestParam int id, @ModelAttribute Massage massage ){
		logger.info("Updating the Massage for Id "+ id);
		massage = massageService.getMassage(id);
		return new ModelAndView("massageForm","massageObject",massage);
	}
	@RequestMapping("saveMassage")
	public ModelAndView saveMassage(@ModelAttribute Massage massage) {
		logger.info("Saving the Massage. Data : "+ massage);
		if(massage.getId() == 0){
			massageService.creatMassage(massage);
		}else{
			massageService.updateMassage(massage);
		}
		return new ModelAndView("redirect:getAllMassages");
	}
	@RequestMapping(value = {"getAllMassages","/"})
	public ModelAndView getAllMassage() {
		logger.info("Getting the all Massages.");
		List<Massage> massageList = massageService.getAllMassage();
		  logger.info("listEmploymeYAY");
		return new ModelAndView("massageList","massageList",massageList);
				
	}
	 @RequestMapping("searchMassage")
	public ModelAndView searchMassage(@RequestParam ("searchName")String searchName) {
		logger.info("Searching the Massage. Massage Names: "+searchName);
	
		List<Massage> massageList = massageService.getAllMassage(searchName);
		for (Massage massage : massageList) {
			System.out.println(massage.getDiachi());
		}
		return new ModelAndView("massageList","massageList",massageList);
	}
	 @RequestMapping("users")
	 public String User() {
		return "quanlyuser";
	}
}
