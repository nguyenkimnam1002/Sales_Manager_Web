package com.laptrinhjavaweb.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {
	@Override
	public List<String> loadMenu(){
		List<String> menus = new ArrayList<String>();
		menus.add("Blog Nam");
		menus.add("Hoc spring mvc");
		menus.add("Lien he");
		menus.add("Thanh toan");
		return menus;
	}
}
