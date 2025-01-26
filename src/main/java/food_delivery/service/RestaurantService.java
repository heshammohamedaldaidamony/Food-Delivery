package food_delivery.service;

import food_delivery.request.UpdateRestaurantRequest;

import food_delivery.request.RestaurantRequest;

public interface RestaurantService {

	void createRestaurant(RestaurantRequest req);
    void deleteRestaurantById(Long id);

    void updateRestaurant(UpdateRestaurantRequest updateRestaurantRequest);
}
