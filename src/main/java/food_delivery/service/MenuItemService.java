package food_delivery.service;

import food_delivery.model.CartItem;
import food_delivery.model.MenuItem;
import java.util.List;



public interface MenuItemService {
    public void reduceInventory(List<CartItem> itemList);
    List<MenuItem> getMenuItemsByMenuId(Long menuId);
    void deleteMenuItemById(Long id);
}
