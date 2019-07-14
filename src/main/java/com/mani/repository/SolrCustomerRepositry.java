package com.mani.repository;

import org.springframework.data.solr.repository.SolrCrudRepository;

import com.mani.document.SolrCustomer;

public interface SolrCustomerRepositry extends SolrCrudRepository<SolrCustomer, Integer>{

}
