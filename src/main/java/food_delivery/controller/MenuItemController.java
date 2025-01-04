package food_delivery.controller;

import food_delivery.dto.MenuItemDTO;
import food_delivery.mapper.MenuItemMapper;
import food_delivery.model.MenuItem;
import food_delivery.service.MenuItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api/v1/menuItem")
public class MenuItemController {

    private final MenuItemService menuItemService;

    @GetMapping("/{id}")
    public ResponseEntity<?> getMenuItemById(@PathVariable Long id,@RequestParam Long userId)
    {
        MenuItem menuItem = menuItemService.getMenuItemById(id,userId);
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
    public ResponseEntity<?> deleteMenuItem(@PathVariable Long id) {
        try {

            menuItemService.deleteMenuItemById(id);
            return ResponseEntity.ok("Menu item with ID " + id + " has been deleted successfully.");
        } catch (RuntimeException e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error deleting menu item: " + e.getMessage());
        }
    }
}
