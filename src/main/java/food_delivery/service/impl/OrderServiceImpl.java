package food_delivery.service.impl;

import food_delivery.exception.ApplicationErrorEnum;
import food_delivery.exception.BusinessException;
import food_delivery.handler.order.CartLockCheckHandler;
import food_delivery.handler.order.OrderHandler;
import food_delivery.model.Order;
import food_delivery.enums.OrderStatusEnum;
import food_delivery.model.OrderStatus;
import food_delivery.repository.*;
import food_delivery.request.OrderRequest;
import food_delivery.response.OrderResponse;
import food_delivery.response.OrderStatusResponse;
import food_delivery.service.OrderService;
import food_delivery.util.MapperUtil;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
@AllArgsConstructor
public class OrderServiceImpl implements OrderService {
    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;
    private final RestaurantRepository restaurantRepository;
    private final OrderRepository orderRepository;
    private final MenuItemRepository menuItemRepository;
    private final MapperUtil mapperUtil;
    private final OrderStatusRepository orderStatusRepository;

    @Override
    public OrderResponse createOrder(OrderRequest request) {
        OrderHandler orderHandler = OrderHandler.ProcessOrder(
                new CartLockCheckHandler(cartRepository));

        OrderResponse response = OrderResponse.builder()
                .customerId(request.getCustomerId())
                .deliveryAddress(request.getDeliveryAddress())
                .items(request.getItems())
                .deliveryAddress(request.getDeliveryAddress())
                .build();


        return orderHandler.handle(request, response);
    }

    @Override
    public OrderResponse getOrder(Long orderId) {
        Order order = getOrderById(orderId);
        return mapperUtil.mapEntity(order, OrderResponse.class);
    }

    @Override
    @Transactional
    public OrderStatusResponse updateStatus(Long orderId, Long orderStatusId) {
        Order order = getOrderById(orderId);
        OrderStatus orderStatus = this.orderStatusRepository.findById(orderStatusId)
                .orElseThrow(() -> new BusinessException(ApplicationErrorEnum.ORDER_NOT_FOUND));
        order.setOrderStatus(orderStatus);
        Order savedOrder = orderRepository.save(order);
        return buildNewStatusResponse(savedOrder);
    }

    @Override
    public OrderStatusResponse getStatus(Long orderId) {
        Order order = getOrderById(orderId);
        return buildNewStatusResponse(order);
    }

    @Override
    @Transactional
    public OrderStatusResponse cancel(Long orderId) {
        Order order = getOrderById(orderId);
        OrderStatus orderStatus = this.orderStatusRepository.findById(OrderStatusEnum.Canceled.getCode())
                .orElseThrow(() -> new BusinessException(ApplicationErrorEnum.ORDER_NOT_FOUND));
        order.setOrderStatus(orderStatus);
        Order savedOrder = orderRepository.save(order);
        return buildNewStatusResponse(savedOrder);
    }

    private static OrderStatusResponse buildNewStatusResponse(Order savedOrder) {
        return OrderStatusResponse.builder().orderId(savedOrder.getId()).status(savedOrder.getOrderStatus()).build();
    }


    private Order getOrderById(Long orderId) {
        return orderRepository.findById(orderId).orElseThrow(() -> new BusinessException(ApplicationErrorEnum.ORDER_NOT_FOUND));
    }
}
