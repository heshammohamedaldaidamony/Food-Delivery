package food_delivery.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import food_delivery.model.Menu;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public interface MenuRepository extends JpaRepository<Menu, Long>{

    Long countByRestaurant_Id(Long id);

    @Modifying
    @Query("UPDATE MenuItem m SET m.menu = null WHERE m.menu.id = :menuId")
    void setMenuNull(@Param("menuId") Long menuId);

    @Modifying
    @Transactional
    @Query(value = "DELETE FROM menu WHERE restaurant_id = :restaurantId", nativeQuery = true)
    void deleteAllMenusByRestaurantId(@Param("restaurantId") Long restaurantId);

}
