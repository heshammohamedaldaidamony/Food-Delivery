package food_delivery.request;

import lombok.Data;

import javax.validation.constraints.NotNull;

@Data
public class MenuRequest {
    @NotNull
    private Long restaurantId;
    @NotNull
    private String menuName;
    private String description;
}
