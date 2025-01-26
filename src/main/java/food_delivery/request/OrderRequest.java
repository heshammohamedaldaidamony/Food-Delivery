package food_delivery.request;
import java.util.List;
import lombok.Data;

@Data
public class OrderRequest {
    private Integer cartId;
    private Integer customerId;
    private List<CartItemRequest> items;

    private String deliveryAddress;
}