package food_delivery.mapper;

import food_delivery.model.Menu;
import food_delivery.model.MenuItem;
import food_delivery.response.MenuResponse;
import food_delivery.response.MenuItemResponse;

import java.util.List;
import java.util.stream.Collectors;

public class MenuResponseMapper {

    public static MenuResponse toMenuResponse(Menu menu, List<MenuItem> menuItems) {
        List<MenuItemResponse> mappingMenuItems = menuItems
                .stream()
                .map(MenuResponseMapper::toMenuItemResponse)
                .collect(Collectors.toList());

        return new MenuResponse(
                menu.getId(),
                menu.getMenuName(),
                menu.getDescription(),
                menu.getRestaurant().getName(), // Assuming `getName` returns the restaurant name
                mappingMenuItems
        );
    }

    private static MenuItemResponse toMenuItemResponse(MenuItem menuItem) {
        return new MenuItemResponse(
                menuItem.getMenuItemId(),
                menuItem.getItemName(),
                menuItem.getPrice(),
                menuItem.getDescription(),
                menuItem.getQuantity()
        );
    }
}
