package food_delivery.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import food_delivery.model.Address;
import food_delivery.repository.AddressRepository;
import food_delivery.request.AddressRequest;
import food_delivery.service.AddressService;

@Service
public class AddressServiceImpl implements AddressService{

	@Autowired
	private AddressRepository addressRepository;
	@Override
	public Address createAddress(AddressRequest address) {
		
		Address newAddress = new Address();
		
		newAddress.setCity(address.getCity());
		newAddress.setCountry(address.getCountry());
		newAddress.setPostalCode(address.getPostalCode());
		newAddress.setAddressLine1(address.getAddressLine1());
		
		
		return addressRepository.save(newAddress);
	}
	
}
