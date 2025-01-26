package food_delivery.enumeration;

public enum RoleEnum {
    ROLE_ADMIN(1L),
    ROLE_RESTAURANT_OWNER(2L),
    ROLE_USER(3L);

    private final long code;

    RoleEnum(long code) {
        this.code = code;
    }
}
