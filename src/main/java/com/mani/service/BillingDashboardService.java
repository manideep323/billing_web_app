package com.mani.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.mani.document.Invoice;
import com.mani.repository.BillingDashboardRepository;
import com.mongodb.MongoException;


@Service
public class BillingDashboardService {
	@Autowired
	BillingDashboardRepository dao;
	public String insertBillingDashboard(Invoice invoice) {
		String result = null;
		try {
			System.out.println("billing controller"+invoice);
			dao.save(invoice);
		//System.out.println(dao.save(new Vehicle(101, "doemhgjkfj", "hi", 2, 3, "30.2", "sf", 28.0f, 3465, "kdjf")));
		}
		catch (org.springframework.dao.DuplicateKeyException d) {
			result = "vehicle code is exists please try with other code";
		}
		catch (MongoException e) {
			result = "database excption please contat development team";
	    }
		if(result == null) {
			result = "vehicle created sucessful";
		}
		
	return result;	
	}
}
