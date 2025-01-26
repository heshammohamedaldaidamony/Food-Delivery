package food_delivery.response;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuItemResponse {
    private Long menuItemId;
    private String itemName;
    private BigDecimal price;
    private String description;
    private Integer quantity;
}
