package food_delivery.handler.order;
import food_delivery.request.OrderRequest;
import food_delivery.response.OrderResponse;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Data
public abstract class OrderHandler {
    protected OrderHandler next;

    public static OrderHandler ProcessOrder(OrderHandler first, OrderHandler... chain) {
        OrderHandler head = first;
        for (OrderHandler nextInChain : chain) {
            head.next = nextInChain;
            head = nextInChain;
        }
        return first;
    }

    public abstract OrderResponse handle(OrderRequest request, OrderResponse response);

    /**
     * Runs check on the next object in chain or ends traversing if we're in
     * last object in chain.
     */
    protected OrderResponse handleNext(OrderRequest request, OrderResponse response) {
        if (next == null) {
            return response;
        }
        return next.handle(request,response);
    }
}
