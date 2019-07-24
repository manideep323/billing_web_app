package com.mani.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.bson.types.ObjectId; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mani.document.Customer;
import com.mani.document.SolrCustomer;
import com.mani.repository.CustomerRepository;
import com.mani.repository.SolrCustomerRepositry;
import com.mongodb.MongoException;

@Service
public class CustomerService {

	
	private Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	CustomerRepository dao;
	
	@Autowired
	SolrCustomerRepositry solrDao;
	
	public String insertCustomer(Customer customer, SolrCustomer solrCustomer) {
		String result = null;
		try {
			dao.save(customer);
			
			//solrDao.save(solrCustomer);
		//System.out.println(dao.save(new Customer(101, "doemhgjkfj", "hi", 2, 3, "30.2", "sf", 28.0f, 3465, "kdjf")));
		}
		catch (org.springframework.dao.DuplicateKeyException d) {
			result = "customer code is exists please try with other code";
		}
		catch (MongoException e) {
			result = "database excption please contat development team";
	    }
		if(result == null) {
			result = "customer created sucessful";
		}
		
	return result;	
	}
	
	//logger.info("insertCustomer -> {}", CustomerService.createCustomer);
	public List<Customer> getCustomers(){
		return dao.findAll();
	}
	
	public String deleteCustomer(ObjectId id) {
		
		String result = null;
		try {
		dao.delete(id);
		result ="customer deleted sucussesful";
		}
		catch(Exception e) {
			result = "error occured";
		}
		
		return result;
	}
	
	
	public Customer updateCustomerToPage(ObjectId id) {
		return dao.findOne(id);
	}
	
	public String updateCustomer(Customer customer, ObjectId id) {
		dao.delete(id);
		dao.save(customer);
		return "customer saved succesfully";
	}
}
