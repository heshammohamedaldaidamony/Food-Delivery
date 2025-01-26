package food_delivery.controller;

import food_delivery.dto.MenuItemDTO;
import food_delivery.mapper.MenuItemMapper;
import food_delivery.model.MenuItem;
import food_delivery.request.MenuItemRequest;
import food_delivery.response.MenuItemResponse;
import food_delivery.service.MenuItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/menuItem")
public class MenuItemController {

    private final MenuItemService menuItemService;

    @PostMapping("/create")
    public ResponseEntity<MenuItemResponse> addMenuItem(@RequestBody MenuItemRequest menuItemRequest) {
        MenuItemResponse menuItemResponse = menuItemService.addMenuItem(menuItemRequest);
        return ResponseEntity.ok(menuItemResponse);
    }
    @GetMapping("/{id}")
    public ResponseEntity<?> getMenuItemById(@PathVariable Long id, @RequestParam Long userId) {
        MenuItem menuItem = menuItemService.getMenuItemById(id, userId);
        MenuItemDTO menuItemDTO = MenuItemMapper.toDto(menuItem);

        return ResponseEntity.ok(menuItemDTO);
    }

    /**
     * Delete a menu item by its ID.
     *
     * @param id the ID of the menu item to delete
     * @return ResponseEntity with a success message
     */
    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteMenuItem(@PathVariable Long id) {
        menuItemService.deleteMenuItemById(id);
        return ResponseEntity.ok("Menu item with ID " + id + " has been deleted successfully.");

    }
}
