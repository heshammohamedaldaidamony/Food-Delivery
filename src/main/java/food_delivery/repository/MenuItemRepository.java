package food_delivery.repository;

import food_delivery.model.MenuItem;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface MenuItemRepository extends JpaRepository<MenuItem, Long>{
    @Modifying
    @Transactional
    @Query(value = "DELETE FROM menu_item WHERE menu_id IN (SELECT menu_id FROM menu WHERE restaurant_id = :restaurantId)", nativeQuery = true)
    void deleteAllMenuItemsByRestaurantId(@Param("restaurantId") Long restaurantId);

    List<MenuItem> findByMenuId(Long id);
}
