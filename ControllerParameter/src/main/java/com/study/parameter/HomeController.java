package com.study.parameter;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.study.parameter.VO.userVO;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping("/request")
	String temp1(HttpServletRequest request)
	{
		String a = request.getParameter("a");
		String b = request.getParameter("b");
		
		System.out.println("a : " + a);
		System.out.println("b : " + b);
		
		return "data";
	}
	
	@RequestMapping("/map")
	String temp2(@RequestParam Map<String, String> param)
	{
		String a = param.get("a");
		String b = param.get("b");

		System.out.println("a : " + a);
		System.out.println("b : " + b);

		return "data";
	}
	
	@RequestMapping( "/param")
	String temp3(@RequestParam("a") String a, @RequestParam("b") int b)
	{
		System.out.println("a : " + a);
		// Integer.parseInt() 과정이 필요없다!
		System.out.println("b : " + b);

		return "data";
	}
	
	@RequestMapping("/class")
	String temp4(userVO abc)
	{
		System.out.println("a : " + abc.getA());
		System.out.println("b : " + abc.getB());
		
		return "data";
	}
	
	@RequestMapping("/path/{a}/{b}")
	String temp5(@PathVariable("a") String a, @PathVariable("b") int b){
		System.out.println(a);
		System.out.println(b);
		return "data";
	}
	
}
