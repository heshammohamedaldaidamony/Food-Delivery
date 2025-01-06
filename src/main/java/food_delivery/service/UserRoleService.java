package food_delivery.service;

import org.springframework.security.core.GrantedAuthority;
import java.util.Set;

public interface UserRoleService {
    void addRoleToUser(String username, String roleName);
    void removeRoleFromUser(String username, String roleName);
    Set<GrantedAuthority> getUserRoles(Long id);
}
