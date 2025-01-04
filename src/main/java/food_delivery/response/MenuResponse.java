package food_delivery.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuResponse {
    private Long menuId;
    private String menuName;
    private String description;
    private String restaurantName;
    private List<MenuItemResponse> menuItems;
}
