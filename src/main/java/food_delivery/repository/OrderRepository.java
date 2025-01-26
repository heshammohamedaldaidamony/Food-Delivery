package food_delivery.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import food_delivery.model.Order;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface OrderRepository  extends JpaRepository<Order, Long>{

	List<Order> findByCustomerId(Long customerId);
    List<Order> findByRestaurantId(Long restaurantId);

    @Query(value = "SELECT * FROM `order` WHERE `restaurant_id` = :restaurantId ORDER BY `order_date` DESC LIMIT 1", nativeQuery = true)
    Optional<Order> findLastOrderByRestaurantId(@Param("restaurantId") Long restaurantId);

}
