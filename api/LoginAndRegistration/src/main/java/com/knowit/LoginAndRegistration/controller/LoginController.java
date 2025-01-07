package com.knowit.LoginAndRegistration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.knowit.LoginAndRegistration.entities.Login;
import com.knowit.LoginAndRegistration.entities.LoginCheck;
import com.knowit.LoginAndRegistration.service.LogineService;

@CrossOrigin(origins = "https://localhost:3000")
@RestController
public class LoginController {
	
	@Autowired
	LogineService logineService;

	@PostMapping("/checklogin")
	public Login checkLogin(@RequestBody LoginCheck lcheck)
	{
		return logineService.getLogin(lcheck.getEmail(), lcheck.getPwd());
	}
}
