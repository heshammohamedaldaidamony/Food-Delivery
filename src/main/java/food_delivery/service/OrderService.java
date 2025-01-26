package food_delivery.service;


import food_delivery.request.OrderRequest;
import food_delivery.response.OrderResponse;
import food_delivery.response.OrderStatusResponse;
import food_delivery.enums.OrderStatusEnum;


public interface OrderService {
    OrderResponse createOrder(OrderRequest request);
    OrderResponse getOrder(Long orderId);
    OrderStatusResponse cancel(Long orderId);
    OrderStatusResponse updateStatus(Long orderId , Long orderStatusId);
    OrderStatusResponse getStatus(Long orderId);
}
