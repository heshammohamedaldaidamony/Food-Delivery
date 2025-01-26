package food_delivery.handler.order;

import food_delivery.exception.ApplicationErrorEnum;
import food_delivery.exception.BusinessException;
import food_delivery.model.Cart;
import food_delivery.repository.CartRepository;
import food_delivery.request.OrderRequest;
import food_delivery.response.OrderResponse;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Builder
@Slf4j
@AllArgsConstructor
public class CartLockCheckHandler extends OrderHandler {

    private final CartRepository cartRepository;



    @Override
    public OrderResponse handle(OrderRequest request, OrderResponse response) {
        Cart cart = cartRepository.findById(request.getCartId()).orElseThrow(() -> new BusinessException(ApplicationErrorEnum.CART_NOT_FOUND));
        if(cart.getIsLocked()){
            throw new BusinessException(ApplicationErrorEnum.CART_IS_LOCKED);
        }
        return handleNext(request,response);
    }
}
