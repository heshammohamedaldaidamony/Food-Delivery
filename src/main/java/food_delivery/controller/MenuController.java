package food_delivery.controller;

import food_delivery.response.MenuResponse;
import food_delivery.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/menus")
public class MenuController {

    private final MenuService menuService;

    @Autowired
    public MenuController(MenuService menuService) {
        this.menuService = menuService;
    }

    /**
     * Get a menu along with its menu items by menu ID.
     *
     * @param id the ID of the menu
     * @return the menu response with its menu items
     */
    @GetMapping("/{id}")
    public ResponseEntity<MenuResponse> getMenuWithItems(@PathVariable Long id) {
        MenuResponse menuResponse = menuService.getMenuWithItems(id);
        return ResponseEntity.ok(menuResponse);
    }
}
