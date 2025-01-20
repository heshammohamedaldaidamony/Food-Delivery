package food_delivery.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RegistrationDTO {
    @NotNull
    private String username;
    private String email;
    private String phoneNumber;
    @NotNull
    private String password;
}
