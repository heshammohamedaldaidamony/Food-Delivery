package food_delivery.request;

import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AddressRequest {
	@NotNull
	private String city;
	@NotNull
	private String country;
	private String postalCode;
	@NotNull
	private String addressLine1;
}
