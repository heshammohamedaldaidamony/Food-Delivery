package food_delivery.service;

import food_delivery.model.CartItem;
import food_delivery.model.MenuItem;
import food_delivery.request.MenuItemRequest;
import food_delivery.response.MenuItemResponse;

import java.util.List;


public interface MenuItemService {
    void reduceInventory(List<CartItem> itemList);

    MenuItem getMenuItemById(Long id, Long userId);

    List<MenuItem> getMenuItemsByMenuId(Long menuId);

    void deleteMenuItemById(Long id);

    MenuItemResponse addMenuItem(MenuItemRequest menuItemRequest);
}
