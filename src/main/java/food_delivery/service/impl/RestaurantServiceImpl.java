package food_delivery.service.impl;

import food_delivery.exception.ApplicationErrorEnum;
import food_delivery.exception.BusinessException;
import food_delivery.model.*;
import food_delivery.repository.*;
import food_delivery.request.RestaurantRequest;
import food_delivery.service.AddressService;
import food_delivery.service.RestaurantDetailsService;
import food_delivery.exception.ApplicationErrorEnum;
import food_delivery.exception.BusinessException;
import food_delivery.request.UpdateRestaurantRequest;
import food_delivery.service.RestaurantService;
import lombok.RequiredArgsConstructor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class RestaurantServiceImpl implements RestaurantService {

	@Autowired
	private final RestaurantRepository restaurantRepository;
	@Autowired
	private final AddressService addressService;
	@Autowired
	private final RestaurantDetailsService restaurantDetailsService;
	@Autowired
	private final OrderRepository orderRepository;
	@Autowired
	private final MenuRepository menuRepository;
	@Autowired
	private final MenuItemRepository menuItemRepository;
	@Autowired
	private final CartItemRepository cartItemRepository;

	@Override
	public void createRestaurant(RestaurantRequest req) {

		Address address =addressService.createAddress(req.getAddress());

		RestaurantDetails restaurantDetails  = restaurantDetailsService.createRestaurantDetails(req);

		Restaurant restaurant = new Restaurant();

		restaurant.setName(req.getName());
		restaurant.setPhoneNumber(req.getPhoneNumber());
		restaurant.setAddress(address);
		restaurant.setRestaurantDetails(restaurantDetails);

		restaurantRepository.save(restaurant);
	}

    @Override
	@Transactional
    public void deleteRestaurantById(Long restaurantId) {
		Restaurant restaurant = restaurantRepository.findById(restaurantId)
				.orElseThrow(() -> new BusinessException(ApplicationErrorEnum.RESTAURANT_NOT_FOUND));

		// Check if restaurant already deleted
		if (restaurant.isDeleted())
			throw new BusinessException(ApplicationErrorEnum.RESTAURANT_ALREADY_DELETED);

		// Valid orders
		Optional<Order> lastOrder = orderRepository.findLastOrderByRestaurantId(restaurantId);
		if (lastOrder.isPresent()){
			OrderStatus statusId=lastOrder.get().getOrderStatus();

		}

		// Delete the restaurant itself(soft delete)
		restaurant.setDeleted(true);
		restaurantRepository.save(restaurant);

		// Delete related data
		for (Menu menu : restaurant.getMenus()){
			List<MenuItem> menuItems = menuItemRepository.findByMenuId(menu.getId());
			for (MenuItem menuItem : menuItems){
				cartItemRepository.deleteAllByMenuItemId(menuItem.getMenuItemId());
			}
			menuItemRepository.deleteAllMenuItemsByRestaurantId(menu.getId());
		}
		menuRepository.deleteAllMenusByRestaurantId(restaurantId);
    }

    @Override
    public void updateRestaurant(UpdateRestaurantRequest updateRestaurantRequest) {
        Restaurant restaurant = restaurantRepository.findById(updateRestaurantRequest.getId()).orElseThrow(
                ()-> new BusinessException(ApplicationErrorEnum.RESTAURANT_NOT_FOUND)
        );

		Address address = restaurant.getAddress();
		if(address == null) {
            address = new Address();
			address.setRestaurant(restaurant);
        }
		address.setCity(updateRestaurantRequest.getAddress().getCity());
		address.setCountry(updateRestaurantRequest.getAddress().getCountry());
		address.setPostalCode(updateRestaurantRequest.getAddress().getPostalCode());
		address.setAddressLine1(updateRestaurantRequest.getAddress().getAddressLine1());

        RestaurantDetails restaurantDetails = restaurant.getRestaurantDetails();
		if(restaurantDetails == null)
		{
			restaurantDetails = new RestaurantDetails();
			restaurantDetails.setRestaurant(restaurant);
		}

		restaurantDetails.setDescription(updateRestaurantRequest.getRestaurantDetails().getDescription());
        restaurantDetails.setCapacity(updateRestaurantRequest.getRestaurantDetails().getCapacity());


        restaurant.setName(updateRestaurantRequest.getName());
        restaurant.setPhoneNumber(updateRestaurantRequest.getPhoneNumber());

        restaurant.setRestaurantDetails(restaurantDetails);
		restaurant.setAddress(address);

        restaurantRepository.save(restaurant);
	}
}
