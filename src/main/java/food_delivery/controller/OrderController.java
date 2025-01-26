package food_delivery.controller;


import food_delivery.dto.OrderUpdateStatusDto;
import food_delivery.enums.OrderStatusEnum;
import food_delivery.request.OrderRequest;
import food_delivery.response.OrderResponse;
import food_delivery.response.OrderStatusResponse;
import food_delivery.service.OrderService;

import java.util.List;

import javax.validation.constraints.NotNull;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.validation.Valid;

@Data
@RequiredArgsConstructor
@RequestMapping("api/v1/order")
@RestController
public class OrderController {

    private final OrderService orderService;

    public ResponseEntity<?> createOrder(@RequestBody OrderRequest orderRequest){
        OrderResponse orderResponse = new OrderResponse();
        return ResponseEntity.ok(orderResponse);
    }

    @GetMapping("/{orderId}")
    public ResponseEntity<OrderResponse> getOrder(@PathVariable Long orderId) {

        OrderResponse orderResponse = orderService.getOrder(orderId);
        return ResponseEntity.ok(orderResponse);
    }


    @PutMapping("/cancel/{orderId}")
    public ResponseEntity<OrderStatusResponse> cancelOrder(@PathVariable Integer orderId) {
        // a method to call the service to cancel the order
        return ResponseEntity.ok(orderService.cancel(Long.valueOf(orderId)));
    }

    @GetMapping("/status/{orderId}")

    public ResponseEntity<OrderStatusResponse> getOrderStatus(@PathVariable Long orderId) {
        return ResponseEntity.ok(orderService.getStatus(orderId));
    }

    @PutMapping("/status/{orderId}")
    public ResponseEntity<OrderStatusResponse> updateOrderStatus(@PathVariable Long orderId , @RequestBody OrderUpdateStatusDto orderUpdateStatusDto) {
        return ResponseEntity.ok(orderService.updateStatus(orderId , Long.valueOf(orderUpdateStatusDto.getOrderStatusId())));
    }

    
    @GetMapping("/customer/{customerId}")
    public ResponseEntity<List<Order>> getOrderHistoryForCustomer(@PathVariable Long customerId) {
        List<Order> orders = orderService.getOrderHistoryForCustomer(customerId);
        return ResponseEntity.ok(orders);
    }

    @GetMapping("/restaurant/{restaurantId}")
    public ResponseEntity<List<Order>> getOrderHistoryForRestaurant(@PathVariable Long restaurantId) {
        List<Order> orders = orderService.getOrderHistoryForRestaurant(restaurantId);
        return ResponseEntity.ok(orders);
    }
    
    @PutMapping("/complete/{orderId}")
    public ResponseEntity<?> comleteOrder(@NotNull @PathVariable(name="orderId", required= true) Long orderId)
    {
    	 Order order = orderService.comleteOrder(orderId);
        return ResponseEntity.ok(OrderMapper.toDto(order));
    }
	

}

