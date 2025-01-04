package food_delivery.model;


import java.util.List;
import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.io.Serializable;



@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "restaurant")
public class Restaurant implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "restaurant_id")
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "rest_Details_id" , referencedColumnName = "restaurant_details_id")
    private RestaurantDetails restaurantDetails;

    @OneToOne(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    @JoinColumn(name = "address_id", referencedColumnName = "address_id")
    private Address address;

    @OneToMany(mappedBy ="restaurant" , fetch = FetchType.LAZY)
    private List<Menu> menus;

    @Column(name = "phone_number", length = 15)
    private String phoneNumber;

    @Column(name = "deleted", nullable = false)
    private boolean deleted = false; // Default to false
}