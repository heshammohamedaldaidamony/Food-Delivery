package food_delivery.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name="order_status")
public class OrderStatus implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_status_id")
    private Long orderStatusId;
    
    @OneToMany(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_id")
	private List<Order> order;

    @Column(name = "status_name", nullable = false)
    private String statusName;

    @Column(name = "description")
    private String description;

}