package com.ssm.core.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SystemController {

	@RequestMapping("/index.html")
	public String index(){
		return "index";
	}
	
	@RequestMapping("/left.html")
	public String left(){
		return "left";
	}
	
	@RequestMapping("/top.html")
	public String top(){
		return "top";
	}
	
	@RequestMapping("/main.html")
	public String main(){
		return "main";
	}
}
