package com.mani.entity;


import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="users")
public class Product {
	@Id
	private String fpix_topic_id;
	private String topic;
	private String video_id;
	
	public String getFpix_topic_id() {
		return fpix_topic_id;
	}
	public void setFpix_topic_id(String fpix_topic_id) {
		this.fpix_topic_id = fpix_topic_id;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getVideo_id() {
		return video_id;
	}
	public void setVideo_id(String video_id) {
		this.video_id = video_id;
	}
	@Override
	public String toString() {
		return "Product [fpix_topic_id=" + fpix_topic_id + ", topic=" + topic + ", video_id=" + video_id + "]";
	}
	
	
}
