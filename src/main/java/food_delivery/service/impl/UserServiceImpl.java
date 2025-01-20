package food_delivery.service.impl;

import food_delivery.dto.RegistrationDTO;
import food_delivery.model.User;
import food_delivery.repository.UserRepository;
import food_delivery.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;


    @Override
    @Transactional
    public User registerNewUser(RegistrationDTO registrationDTO) {
        // Check if username or email already exists
        if (userRepository.existsByUsername(registrationDTO.getUsername())) {
            throw new RuntimeException("Username already exists");
        }
        if (userRepository.existsByEmail(registrationDTO.getEmail())) {
            throw new RuntimeException("Email already exists");
        }

        // Create a new user object and set the properties
        User newUser = new User();
        newUser.setUsername(registrationDTO.getUsername());
        newUser.setEmail(registrationDTO.getEmail());
        newUser.setPhoneNumber(registrationDTO.getPhoneNumber());

        // Encode the password and set the password hash
        newUser.setPasswordHash(passwordEncoder.encode(registrationDTO.getPassword()));
        newUser.setRegistrationDate(Instant.now());
        newUser.setLastLogin(Instant.now());
        newUser.setIsEnabled(true); // Activate user by default (could also add verification step)

        return userRepository.save(newUser);
    }

}
