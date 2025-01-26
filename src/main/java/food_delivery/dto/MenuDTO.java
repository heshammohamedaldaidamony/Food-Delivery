package food_delivery.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuDTO {
    private Long id;
    private String menuName;
    private String description;
    private List<MenuItemDTO> menuItems;
}
