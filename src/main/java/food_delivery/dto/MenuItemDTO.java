package food_delivery.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import java.math.BigDecimal;

@AllArgsConstructor
@Getter
@Setter
public class MenuItemDTO {

    private Long menuItemId;

    private String itemName;

    private BigDecimal price;

    private String description;

    private Integer quantity;
}
