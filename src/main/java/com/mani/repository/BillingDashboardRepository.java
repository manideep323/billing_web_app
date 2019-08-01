package com.mani.repository;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;

import com.mani.document.Invoice;

public interface BillingDashboardRepository extends MongoRepository<Invoice,ObjectId> {

}
