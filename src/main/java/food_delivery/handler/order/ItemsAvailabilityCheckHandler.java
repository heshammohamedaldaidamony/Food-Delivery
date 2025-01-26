package food_delivery.handler.order;

import food_delivery.exception.ApplicationErrorEnum;
import food_delivery.exception.BusinessException;
import food_delivery.model.MenuItem;
import food_delivery.repository.MenuItemRepository;
import food_delivery.request.OrderRequest;
import food_delivery.response.OrderResponse;
import lombok.AllArgsConstructor;
import lombok.Builder;


@Builder
@AllArgsConstructor
public class ItemsAvailabilityCheckHandler extends OrderHandler {
    private final MenuItemRepository menuItemRepository;

    @Override
    public OrderResponse handle(OrderRequest request, OrderResponse response) {
        double totalPrice = request.getItems().stream()
                .mapToDouble(cartItemRequest -> {
                    MenuItem item = menuItemRepository.findById(cartItemRequest.getMenuItemId())
                            .orElseThrow(() -> new BusinessException(ApplicationErrorEnum.MENU_ITEM_NOT_FOUND));

                    if (item.getQuantity() < cartItemRequest.getQuantity()) {
                        throw new BusinessException(ApplicationErrorEnum.MENU_ITEM_IS_OUT_OF_STOCK);
                    }

                    return item.getPrice().doubleValue() * cartItemRequest.getQuantity();
                })
                .sum();
        response.setTotalPrice(totalPrice);

        return handleNext(request, response);

    }
}