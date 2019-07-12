package com.mani.repository;

import org.springframework.data.solr.repository.SolrCrudRepository;

import com.mani.document.SolrProduct;

public interface SolrProductRepositry extends SolrCrudRepository<SolrProduct, Integer>{

}
