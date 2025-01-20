package food_delivery.service;

import food_delivery.dto.RegistrationDTO;
import food_delivery.model.User;

public interface UserService {
    User registerNewUser(RegistrationDTO registrationDTO);
}
