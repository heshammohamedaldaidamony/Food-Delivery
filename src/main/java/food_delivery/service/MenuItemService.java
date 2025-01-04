package food_delivery.service;

import food_delivery.model.CartItem;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;



public interface MenuItemService {

    @Transactional
    public void reduceInventory(List<CartItem> itemList);
}
