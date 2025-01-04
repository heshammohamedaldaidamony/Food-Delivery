package food_delivery.service.impl;

import food_delivery.mapper.MenuResponseMapper;
import food_delivery.model.Menu;
import food_delivery.model.MenuItem;
import food_delivery.repository.MenuRepository;
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
