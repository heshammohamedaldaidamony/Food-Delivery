//package food_delivery.controller;
//
//import java.util.List;
//
//import javax.validation.Valid;
//import javax.validation.constraints.NotNull;
//
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RestController;
//
//import food_delivery.dto.CartDTO;
//import food_delivery.dto.CartItemDTO;
//import food_delivery.model.CartItem;
//import food_delivery.service.CartService;
//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//import lombok.RequiredArgsConstructor;
//
//
//@Data
//@RequiredArgsConstructor
//@RequestMapping("api/v1/cart")
//@RestController
//public class CartManagementController {
//
//	private final CartService cartService;
//
//	@PostMapping("/add-to-cart/{menuItemId}/{customerId}")
//	public void addToCart( @Valid @NotNull @PathVariable Long menuItemId, @Valid @NotNull @PathVariable Long customerId  ) {
//
//
//	}
//
//	@PutMapping("/update-quantity")
//	public void updateCart( Long productId, Long UserId  ) {
//
//	}
//
//	@GetMapping("/{customerId}")
//	public ResponseEntity<List<CartItemDTO>> viewCart(@NotNull @PathVariable Long customerId) {
//
//		return ResponseEntity.ok(cartService.viewCart(customerId)) ;
//	}
//
//}
