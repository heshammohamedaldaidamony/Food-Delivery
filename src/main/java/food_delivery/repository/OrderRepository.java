package food_delivery.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import food_delivery.model.Order;

public interface OrderRepository  extends JpaRepository<Order, Long>{

	List<Order> findByCustomerId(Long customerId);
    List<Order> findByRestaurantId(Long restaurantId);
}
