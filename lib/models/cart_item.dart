import 'coffee.dart';

class CartItem {
  final Coffee coffee;
  final String size;
  int quantity;

  CartItem({
    required this.coffee,
    required this.size,
    this.quantity = 1,
  });

  double get totalPrice => coffee.price * quantity * _sizeMultiplier;

  double get _sizeMultiplier {
    switch (size) {
      case 'Small':
        return 1.0;
      case 'Medium':
        return 1.2;
      case 'Large':
        return 1.5;
      default:
        return 1.0;
    }
  }
}
