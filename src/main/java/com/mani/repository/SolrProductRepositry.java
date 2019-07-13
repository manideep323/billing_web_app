package com.mani.repository;

import org.bson.types.ObjectId;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.solr.repository.Query;
import org.springframework.data.solr.repository.SolrCrudRepository;


import com.mani.document.SolrProduct;
import java.lang.String;
import java.util.List;

public interface SolrProductRepositry extends SolrCrudRepository<SolrProduct, String>{
	 //List<SolrProduct> findByDivision(int division);
	 @Query("product_code:*?0*")
	 public Page<SolrProduct> findByProductCode(int searchTerm, Pageable pageable);
	 @Query("brand_name:*?0*")
	 public Page<SolrProduct> findByCustomQuery(String searchTerm, Pageable pageable);
}
