package food_delivery.config;

import food_delivery.service.impl.AuthServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private AuthServiceImpl authServiceImpl;

    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .csrf().disable()
                .cors().disable().authorizeRequests()

                .antMatchers("/user/register").permitAll()
                .antMatchers("/auth/**").permitAll()

                .antMatchers(HttpMethod.POST, "/restaurant/**").hasAnyRole("RESTAURANT_OWNER", "ADMIN")
                .antMatchers(HttpMethod.PUT, "/restaurant/**").hasAnyRole("RESTAURANT_OWNER", "ADMIN")
                .antMatchers(HttpMethod.DELETE, "/restaurant/delete/**").hasAnyRole("RESTAURANT_OWNER", "ADMIN")

                .antMatchers("/api/v1/cart/**").hasRole("CUSTOMER")

                .antMatchers("/api/v1/order/create").hasRole("CUSTOMER")
                .antMatchers("/api/v1/order/cancel/**").hasAnyRole("CUSTOMER","RESTAURANT_OWNER")
                .antMatchers(HttpMethod.GET,"/api/v1/order/status/**").hasAnyRole("CUSTOMER", "ADMIN","RESTAURANT_OWNER")
                .antMatchers(HttpMethod.PUT,"/api/v1/order/status/**").hasAnyRole("RESTAURANT_OWNER","ADMIN")

                .antMatchers("/api/v1/menu/create").hasAnyRole("RESTAURANT_OWNER", "ADMIN")
                .antMatchers(HttpMethod.GET,"/api/v1/menu/**").permitAll()
                .antMatchers(HttpMethod.DELETE,"/api/v1/menu/**").hasAnyRole("RESTAURANT_OWNER","ADMIN")
                .antMatchers(HttpMethod.PUT,"/api/v1/menu/**").hasAnyRole("RESTAURANT_OWNER","ADMIN")

                .antMatchers("/api/v1/menuitem/**").hasAnyRole("RESTAURANT_OWNER", "ADMIN")
                .antMatchers(HttpMethod.GET,"/api/v1/menuitem/**").hasRole("CUSTOMER")

                .anyRequest().authenticated()
                .and()
                .formLogin()  // Enable form-based login
                .and()
                .logout().permitAll();  // Allow everyone to log out

    }

    @Override
   protected void configure(AuthenticationManagerBuilder auth) throws Exception {
       auth.userDetailsService(authServiceImpl).passwordEncoder(passwordEncoder);

   }
}

