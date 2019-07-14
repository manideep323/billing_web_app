package com.mani.document;

import org.apache.solr.client.solrj.beans.Field;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.solr.core.mapping.SolrDocument;



@SolrDocument(solrCoreName = "customers")
public class SolrCustomer {
		@Indexed
		@Field
		@Id
		private String docNo;
		
		@Indexed
		@Field
		private String licNo;

		public String getDocNo() {
			return docNo;
		}

		public void setDocNo(String docNo) {
			this.docNo = docNo;
		}

		public String getLicNo() {
			return licNo;
		}

		public void setLicNo(String licNo) {
			this.licNo = licNo;
		}

		public SolrCustomer() {
			super();
			// TODO Auto-generated constructor stub
		}

		
		
}
