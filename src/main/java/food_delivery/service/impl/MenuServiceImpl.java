package food_delivery.service.impl;

import food_delivery.exception.ApplicationErrorEnum;
import food_delivery.exception.BusinessException;
import food_delivery.mapper.MenuResponseMapper;
import food_delivery.model.Menu;
import food_delivery.model.MenuItem;
import food_delivery.model.Restaurant;
import food_delivery.repository.MenuRepository;
import food_delivery.repository.RestaurantRepository;
import food_delivery.request.MenuRequest;
import food_delivery.response.MenuResponse;
import food_delivery.service.MenuItemService;
import food_delivery.service.MenuService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MenuServiceImpl implements MenuService {
    private final MenuItemService menuItemService ;
    private final MenuRepository menuRepository;
    private final RestaurantRepository restaurantRepository;

    @Override
    public MenuResponse createMenu(MenuRequest menuRequest){
        // Find the restaurant by ID
        Restaurant restaurant = restaurantRepository.findById(menuRequest.getRestaurantId())
                .orElseThrow(() -> new BusinessException(ApplicationErrorEnum.RESTAURANT_NOT_FOUND));

        // Create a new menu object
        Menu menu = new Menu();
        menu.setRestaurant(restaurant);
        menu.setMenuName(menuRequest.getMenuName());
        menu.setDescription(menuRequest.getDescription());

        // Save the menu
        menuRepository.save(menu);
        return new MenuResponse(menu.getId(),menu.getMenuName(),menu.getDescription(),
                                restaurant.getName(),null);
    }

    @Override
    public Optional<Menu> getMenuById(Long id) {
        return Optional.empty();
    }

    @Override
    public MenuResponse getMenuWithItems(Long id) {
        Menu menu = menuRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("Menu not found with ID: " + id));
        List<MenuItem> menuItems = menuItemService.getMenuItemsByMenuId(id);
        return MenuResponseMapper.toMenuResponse(menu, menuItems);
    }

    @Override
    public void deleteMenu(Long menuId) {

    }
}
