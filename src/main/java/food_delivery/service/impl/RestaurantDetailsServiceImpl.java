package food_delivery.service.impl;

import org.springframework.stereotype.Service;

import food_delivery.model.RestaurantDetails;
import food_delivery.repository.RestaurantDeatailsRepository;
import food_delivery.request.RestaurantRequest;
import food_delivery.service.RestaurantDetailsService;
import org.springframework.stereotype.Service;


@Service
public class RestaurantDetailsServiceImpl implements RestaurantDetailsService {

	private RestaurantDeatailsRepository restaurantDeatailsRepository;

    @Override
    public RestaurantDetails getRestaurantDetails(Long id) {
        return null;
    }

	@Override
	public RestaurantDetails createRestaurantDetails(RestaurantRequest req) {

		RestaurantDetails restaurantDetails = new RestaurantDetails();

		restaurantDetails.setDescription(req.getDescription());
		restaurantDetails.setCapacity(req.getCapacity());

		return restaurantDeatailsRepository.save(restaurantDetails);
	}
}
