package com.example.Travel.entity;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Document("restaurants")
public class RestaurantEntity {
	
	@Id
	private ObjectId id;
	
	private String restaurantName;
	
	private String restaurantDescription;
	
	private String restaurantPrice;
	
	private String restaurantRating;
	
	private String restaurantImage;
}
