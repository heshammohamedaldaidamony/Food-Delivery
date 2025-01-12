package food_delivery.security;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.servlet.http.HttpServletRequest;

@Service
public class JwtService {

    public String getToken (HttpServletRequest httpServletRequest) {
        final String header = httpServletRequest.getHeader("Authorization");

        if(StringUtils.hasText(header) && header.startsWith("Bearer "))
            return header.substring(7);

        return null;
    }

    public boolean validateToken(String token) {
        return false;
    }

    public String extractUsername(String token) {
        return null;
    }
}
