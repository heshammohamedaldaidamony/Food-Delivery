package food_delivery.enums;

import com.fasterxml.jackson.annotation.JsonCreator;

public enum OrderStatusEnum {
    Pending(1L),
    Confirmed(2L),
    InTransit(3L),
    Completed(4L),
    Canceled(5L);

    private final Long code;

    OrderStatusEnum(Long code) {
        this.code = code;
    }

    public Long getCode() {
        return code;
    }
    @JsonCreator
    public static OrderStatusEnum fromString(String status) {
        for (OrderStatusEnum statusEnum : OrderStatusEnum.values()) {
            if (statusEnum.name().equalsIgnoreCase(status)) {
                return statusEnum;
            }
        }
        throw new IllegalArgumentException("Unknown status: " + status);
    }
}
