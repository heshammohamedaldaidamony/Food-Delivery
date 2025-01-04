package food_delivery.service;

import food_delivery.model.CartItem;
import food_delivery.model.MenuItem;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;



public interface MenuItemService {

    @Transactional
    public void reduceInventory(List<CartItem> itemList);

    public MenuItem getMenuItemById(Long id,Long userId);
}
