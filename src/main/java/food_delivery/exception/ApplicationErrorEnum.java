package food_delivery.exception;
import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public enum ApplicationErrorEnum {
    ADDRESS_NOT_FOUND(HttpStatus.NOT_FOUND, "Address not found."),
    CART_IS_EMPTY(HttpStatus.NOT_FOUND, "Cart is empty."),
    CART_ITEM_NOT_FOUND(HttpStatus.NOT_FOUND, "Cart Item not found."),
    CART_NOT_FOUND(HttpStatus.NOT_FOUND, "Cart not found."),
    CUSTOMER_NOT_FOUND(HttpStatus.NOT_FOUND, "Customer not found."),
    DIFFERENT_RESTAURANT(HttpStatus.BAD_REQUEST, "Cannot add this item as it belongs to a different restaurant."),
    INVALID_CART_ID(HttpStatus.BAD_REQUEST, "Invalid customer ID."),
    INVALID_CART_ITEM_ID(HttpStatus.BAD_REQUEST, "Invalid cart item ID."),
    INVALID_CUSTOMER_ID(HttpStatus.BAD_REQUEST, "Invalid customer ID."),
    MENU_ITEM_NOT_FOUND(HttpStatus.NOT_FOUND, "Menu Item not found."),
    NEGATIVE_QUANTITY(HttpStatus.BAD_REQUEST, "Added Quantity shouldn't be negative."),
    PAYMENT_METHOD_NOT_FOUND(HttpStatus.NOT_FOUND, "Payment Method not found."),
    USER_ALREADY_EXIST(HttpStatus.BAD_REQUEST,"User Already Exist Are you Want To Login"),
    USER_NOT_FOUND(HttpStatus.NOT_FOUND,"User Not Found"),
    VERIFICATION_CODE_HAS_BEEN_EXPIRED(HttpStatus.BAD_REQUEST,"Verification code has expired"),
    VERIFICATION_CODE_IS_NOT_VALID(HttpStatus.BAD_REQUEST,"Verification Code Not Valid"),
    MAX_NUMBER_OF_OTP_SENT_REACHED(HttpStatus.BAD_REQUEST,"You Reach Max Number Of OTP Sent And Your Account Is Locked For 15 minutes"),
    LOCKED_ACCOUNT(HttpStatus.BAD_REQUEST,"Your Account Has Been Locked"),
    SOMETHING_WENT_WRONG(HttpStatus.INTERNAL_SERVER_ERROR , "Something Went Wrong"),
    ROLE_NOT_FOUND(HttpStatus.NOT_FOUND, "Role not found."),
    INVALID_TOKEN(HttpStatus.UNAUTHORIZED,"Invalid JWT." ),
    INVALID_USERNAME_OR_PASSWORD(HttpStatus.UNAUTHORIZED,"Invalid Username or Password" ),
    UNSUPPORTED_EMAIL_PROVIDER(HttpStatus.UNAUTHORIZED,"Unsupported Email Provider" ),
    TOKEN_NOT_FOUND(HttpStatus.UNAUTHORIZED,"Token Not Found." ),
    RESTAURANT_CATEGORY_NOT_FOUND(HttpStatus.NOT_FOUND, "RestaurantCategory not found."),
    RESTAURANT_NOT_FOUND(HttpStatus.NOT_FOUND, "Restaurant not found."),
    //Cancel order
    ORDER_NOT_FOUND(HttpStatus.NOT_FOUND,"Order not found"),
    CANCELED_STATUS_NOT_FOUND(HttpStatus.NOT_FOUND,"Canceled status not found"),

    RESTAURANT_ALREADY_DELETED(HttpStatus.NOT_FOUND,"Restaurant already deleted" ),
    RESTAURANT_HAS_ACTIVE_ORDERS(HttpStatus.CONFLICT,"Restaurant still has active orders." );

    private final HttpStatus status;
    private final String message;

    ApplicationErrorEnum(HttpStatus status, String message) {
        this.status = status;
        this.message = message;
    }

}