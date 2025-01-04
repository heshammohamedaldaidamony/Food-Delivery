package food_delivery.service.impl;

import food_delivery.exception.ApplicationErrorEnum;
import food_delivery.exception.BusinessException;
import food_delivery.model.CartItem;
import food_delivery.model.MenuItem;
import food_delivery.repository.MenuItemRepository;
import food_delivery.service.MenuItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;


@Service
@RequiredArgsConstructor
public class MenuItemImpl implements MenuItemService {

    private final MenuItemRepository menuItemRepository;

    @Override
    @Transactional
    public void reduceInventory(List<CartItem> itemList) {
        itemList.forEach(cartItem -> {
            Long id = cartItem.getMenuItem().getMenuItemId();
            MenuItem menuItem = menuItemRepository.findById(id)
                    .orElseThrow(()->new BusinessException(ApplicationErrorEnum.MENU_ITEM_NOT_FOUND));

            if(menuItem.getQuantity() < cartItem.getQuantity()) {
                throw new BusinessException(ApplicationErrorEnum.LOW_INVENTORY);
//                throw new RuntimeException("not enough inventory for item with id: "+ menuItem.getMenuItemId());
            }
            menuItem.setQuantity(menuItem.getQuantity() - cartItem.getQuantity());
            menuItemRepository.save(menuItem);
        });
    }
}
