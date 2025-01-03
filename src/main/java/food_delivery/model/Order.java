package food_delivery.model;

import javax.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "\"order\"")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_id")
    private Long orderId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "customer_id", nullable = false)
    private Customer customer;

    @Column(name = "order_date", nullable = false)
    private LocalDateTime orderDate;

    private int totalItemCount;

    private int totalItemQuantity;

    private BigDecimal totalPrice;
    
    @ManyToOne
    @JoinColumn(name = "order_status")
    private OrderStatus orderStatus;


    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "restaurant_id", nullable = false)
    private Restaurant restaurant;
    
    @ManyToOne
    @JoinColumn(name = "address")
    private Address deliveryAddress;

    @OneToMany(mappedBy="order" , cascade = CascadeType.ALL)
    private List<OrderItem> items = new ArrayList<>();
    


    @Column(name = "notes")
    private String notes;

    public void addItems(OrderItem orderItem)
    {
        items.add(orderItem);
        orderItem.setOrder(this);
    }

    public void removeItem(OrderItem orderItem) {
        items.remove(orderItem);
        orderItem.setOrder(null);
    }


}
