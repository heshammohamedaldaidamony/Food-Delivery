package food_delivery.repository;

import food_delivery.model.CartItem;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public interface CartItemRepository extends JpaRepository<CartItem, Long>{
    @Modifying
    @Transactional
    @Query(value = "DELETE FROM cart_item WHERE menu_item_id = :menuItemId", nativeQuery = true)
    void deleteAllByMenuItemId(@Param("menuItemId") Long menuItemId);
}
