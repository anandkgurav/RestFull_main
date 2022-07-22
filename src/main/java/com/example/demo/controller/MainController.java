package com.example.demo.controller;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MainController {
	@RequestMapping("/home")
	public String home() {
		return "home";
	}
	
	@RequestMapping(path="/home1",method = RequestMethod.POST)
	public JSONObject home1(HttpServletRequest request) {
		String name = request.getParameter("fname");
        JSONObject obj = new JSONObject();
        obj.put("data",name );
        System.out.println("json object value is >> "+obj);
		return obj;
		
	}
}
