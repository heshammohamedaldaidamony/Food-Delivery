package food_delivery.controller;

import food_delivery.dto.MenuItemDTO;
import food_delivery.mapper.MenuItemMapper;
import food_delivery.model.MenuItem;
import food_delivery.service.MenuItemService;
import lombok.RequiredArgsConstructor;
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
}
