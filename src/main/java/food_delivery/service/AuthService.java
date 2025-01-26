package food_delivery.service;


import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public interface AuthService {
    UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;
}
