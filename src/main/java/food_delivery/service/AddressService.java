package food_delivery.service;

import food_delivery.model.Address;
import food_delivery.request.AddressRequest;

public interface AddressService {

	Address createAddress(AddressRequest address);
}
