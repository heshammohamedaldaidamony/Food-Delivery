package food_delivery.request;


import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RestaurantRequest {
	@NotNull
	private String name;
	
	@NotNull
	private String phoneNumber;
	private String description;
    private Integer capacity;
    @NotNull
    private AddressRequest address;
}
