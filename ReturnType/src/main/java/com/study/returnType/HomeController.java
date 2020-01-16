package com.study.returnType;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.study.returnType.VO.userVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
    
    @RequestMapping("/doA")
    public void doA(){
        logger.info("doA.jsp 찾아 실행!!");
    }
    
    @RequestMapping("/doB")
    public String doC(@ModelAttribute("msg") String msg){
        logger.info("문자열.jsp 파일을 찾아서 실행");
        System.out.println("doC 메시지 : "+msg);
        return "string";
    }
    
    @RequestMapping("/doC")
    public String doD(Model model){
        
        logger.info("String 데이터 전달!!");
        
        userVO user = new userVO();
        user.setName("mary");
        user.setUserId("hahahaha");
        
        model.addAttribute("user", user);
        //model.addAttribute(member);
        
        logger.info("userVO : "+user.toString());
        
        return "data";  
    }
    
    @RequestMapping("/doD")
    public String doE(Model model){
        
        logger.info("doE 실행...........");
        
        Map<String,String> map = new HashMap<String,String>();
        map.put("name", "friend");
        map.put("userId", "7979");
        
        model.addAttribute("map", map);
    
        return "data";  
    }
    
    @RequestMapping("/doE") 
    public ModelAndView doE() { 
    	ModelAndView view = new ModelAndView(); 
    	// View는 hello.jsp 
    	view.setViewName("ModelAndView_test"); 
    	// [hello.jsp] ${name} = yeeun 
    	view.addObject("name", "yeeun"); 
    	return view;
    }
    
    @RequestMapping("/doF") 
    @ResponseBody 
    public String doF() { 
    	return "<html><body><h1>doF!! not jsp file!!</h1></body></html>"; 
    }

	
}
