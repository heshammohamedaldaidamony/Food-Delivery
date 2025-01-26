package food_delivery.service;

import food_delivery.model.RestaurantDetails;
import food_delivery.request.RestaurantRequest;

public interface RestaurantDetailsService {
	
	RestaurantDetails createRestaurantDetails(RestaurantRequest req);
    RestaurantDetails getRestaurantDetails(Long id);
}
