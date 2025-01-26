package food_delivery.service.impl;

import food_delivery.dto.RegistrationDTO;
import food_delivery.model.Role;
import food_delivery.model.User;
import food_delivery.model.UserRole;
import food_delivery.model.UserRoleId;
import food_delivery.repository.RoleRepository;
import food_delivery.repository.UserRepository;
import food_delivery.repository.UserRoleRepository;
import food_delivery.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.Instant;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private UserRoleRepository userRoleRepository;


    @Override
    @Transactional
    public User registerNewUser(RegistrationDTO registrationDTO) throws Exception {
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
        newUser.setIsEnabled(true);
        newUser=userRepository.save(newUser);

        List<UserRole> userRoles = new ArrayList<>();
        for (String roleName : registrationDTO.getRoles()) {
            Role role = roleRepository.findByroleName(roleName)
                    .orElseThrow(() -> new Exception("Role not found: " + roleName));
            UserRole userRole = new UserRole();
            userRole.setId(new UserRoleId(newUser.getId(), role.getId()));
            userRole.setRole(role);
            userRole.setUser(newUser);
            userRoles.add(userRole);
        }
        userRoleRepository.saveAll(userRoles);
        return newUser;
    }

}
