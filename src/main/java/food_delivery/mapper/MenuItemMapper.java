package food_delivery.mapper;

import food_delivery.dto.MenuItemDTO;
import food_delivery.model.MenuItem;


public class MenuItemMapper {

    public static MenuItemDTO toDto(MenuItem menuItem)
    {
        MenuItemDTO menuItemDTO = new MenuItemDTO(
                menuItem.getMenuItemId(),
                menuItem.getItemName(),
                menuItem.getPrice(),
                menuItem.getDescription(),
                menuItem.getQuantity()
        );
        return menuItemDTO;
    }
}
