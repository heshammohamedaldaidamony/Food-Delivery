package food_delivery.controller;

import food_delivery.request.MenuRequest;
import food_delivery.response.MenuResponse;
import food_delivery.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/v1/menu")
public class MenuController {

    private final MenuService menuService;

    @Autowired
    public MenuController(MenuService menuService) {
        this.menuService = menuService;
    }

    @PostMapping("/create")
    public ResponseEntity<MenuResponse> createMenu(@RequestBody MenuRequest menuRequest) {
        return ResponseEntity.ok(menuService.createMenu(menuRequest));
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
