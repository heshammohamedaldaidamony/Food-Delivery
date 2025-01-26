package food_delivery.handler.order;

import food_delivery.model.Restaurant;
import food_delivery.repository.CartRepository;
import food_delivery.repository.OrderRepository;
import food_delivery.repository.RestaurantRepository;
import food_delivery.request.OrderRequest;
import food_delivery.response.OrderResponse;
import food_delivery.util.MapperUtil;
import lombok.AllArgsConstructor;
import lombok.Builder;

@Builder
@AllArgsConstructor
public class CreateOrderHandling extends OrderHandler {

    private final OrderRepository orderRepository;
    private final CartRepository cartRepository;
    private final RestaurantRepository restaurantRepository;
    private final MapperUtil mapperUtil;

    @Override
    public OrderResponse handle(OrderRequest request, OrderResponse response) {
        cartRepository.deleteById(request.getCartId());
        Restaurant restaurant = restaurantRepository.findById(request.getRestaurantId()).get();


        // save the order
        Order order = Order.builder()
                .orderTime(LocalDateTime.now())
                .totalPrice(response.getTotalPrice())
                .orderStatus(OrderStatus.PURCHASED)
                .restaurant(restaurant)
//                .delivery()
//                .customer()
                .build();



        Order savedOrder = orderRepository.save(order);

        response.setOrderId(savedOrder.getOrderId());
        response.setOrderTime(savedOrder.getOrderTime());
        response.setOrderStatus(savedOrder.getOrderStatus());

        return handleNext(request,response);
    }
}
