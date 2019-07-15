package com.mani.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import com.mani.document.SolrProduct;
import com.mani.repository.SolrProductRepositry;


@Service
public class BillingDashboardService {

	@Autowired
	SolrProductRepositry solrDao;
	
	/*public Page<SolrProduct> searchProductCode() {
		Page<SolrProduct> findByBrandName = solrDao.findByCustomQuery("m", new PageRequest(0, 10));
		for (SolrProduct solrProduct : findByBrandName) {
			System.out.println(solrProduct.toString());	
		}
		Page<SolrProduct> findByProductCode = solrDao.findByProductCode("1", new PageRequest(0, 10));
		for (SolrProduct solrProduct : findByProductCode) {
			System.out.println(solrProduct.toString());	
		}
		return findByProductCode;
	}*/

}
