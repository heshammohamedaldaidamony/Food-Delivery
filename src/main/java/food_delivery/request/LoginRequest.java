package food_delivery.request;

import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class LoginRequest {
    private String username;
    @NotNull
    private String password;
}
