package com.mani.service;

import java.util.List;


import org.apache.log4j.Logger;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mani.document.Product;
import com.mani.repository.ProductRepository;
import com.mongodb.DuplicateKeyException;
import com.mongodb.MongoException;

@Service
public class ProductService {

	
private Logger logger = Logger.getLogger(this.getClass());
	@Autowired
	ProductRepository dao;
	//@Autowired
	//SolrProductRepositry solrDao;
	
	public String insertProduct(Product product) {
		String result = null;
		try {
			dao.save(product);
			
			//solrDao.save(solrProduct);
			
			//System.out.println(product.getId());
		//System.out.println(dao.save(new Product(101, "doemhgjkfj", "hi", 2, 3, "30.2", "sf", 28.0f, 3465, "kdjf")));
		}
		catch (org.springframework.dao.DuplicateKeyException d) {
			result = "product code is exists please try with other code";
		}
		catch (MongoException e) {
			result = "database excption please contat development team";
	    }
		if(result == null) {
			result = "product created sucessful";
		}
		
	return result;	
	}
	//logger.info("insertProduct -> {}", ProductService.createProduct);
	public List<Product> getProducts(){
		/*Page<SolrProduct> findByBrandName = solrDao.findByCustomQuery("male", new PageRequest(0, 10));
		for (SolrProduct solrProduct : findByBrandName) {
			System.out.println(solrProduct.toString());	
		}*/
		return dao.findAll();
	}
	public String deleteProduct(ObjectId id) {
		
		String result = null;
		try {
		dao.delete(id);
		result ="product deleted sucussesful";
		}
		catch(Exception e) {
			result = "error occured";
		}
		
		return result;
	}
	public Product updateProductToPage(ObjectId id) {
		return dao.findOne(id);
	}
	public String updateProduct(Product product, ObjectId id) {
		dao.delete(id);
		dao.save(product);
		return "product saved succesfully";
	}
}
