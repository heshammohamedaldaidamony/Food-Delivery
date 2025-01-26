package food_delivery.request;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
public class MenuItemRequest {
    private Long menuId;
    private String itemName;
    private String description;
    private BigDecimal price;
    private int quantity;
}
