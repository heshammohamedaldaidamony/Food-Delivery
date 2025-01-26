package food_delivery.response;

import food_delivery.model.OrderStatus;
import food_delivery.request.CartItemRequest;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Builder;

import java.time.LocalDateTime;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class OrderResponse {
    private Long orderId;
    private Long customerId;
    private Long restaurantId;
    private List<CartItemRequest> items;
    private Double totalPrice;
    private LocalDateTime orderTime;
    private String deliveryAddress;
    private OrderStatus orderStatus;
}
