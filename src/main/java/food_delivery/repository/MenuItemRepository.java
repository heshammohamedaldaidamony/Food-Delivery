package food_delivery.repository;

import food_delivery.dto.RestaurantOwnerDTO;
import food_delivery.model.MenuItem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface MenuItemRepository extends JpaRepository<MenuItem, Long>{

    @Query("SELECT new food_delivery.dto.RestaurantOwnerDTO(o.id) FROM MenuItem m JOIN m.menu menu JOIN menu.restaurant r JOIN r.restaurantDetails d JOIN d.owner o WHERE m.menuItemId = :menuItemId")
    RestaurantOwnerDTO findRestaurantOwnerIdByMenuItemId(@Param("menuItemId") Long menuItemId);
}
