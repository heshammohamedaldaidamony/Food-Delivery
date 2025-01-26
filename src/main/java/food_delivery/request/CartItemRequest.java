package food_delivery.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItemRequest {
    private Long id;
    private Long quantity;
    private Double unitPrice;
    private Long menuItemId;
    private Long cartId;
}
