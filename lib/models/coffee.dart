class Coffee {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final String category;
  final double rating;

  Coffee({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.rating,
  });
}

// Sample data
final List<Coffee> sampleCoffees = [
  Coffee(
    id: '1',
    name: 'Espresso',
    description: 'Rich and bold single shot with cocoa flavor',
    price: 4.40,
    imageUrl: 'https://images.unsplash.com/photo-1510591509098-f4fdc6d0ff04?w=400',
    category: 'Espresso',
    rating: 4.5,
  ),
  Coffee(
    id: '2',
    name: 'Cappuccino',
    description: 'Espresso with steamed milk foam and cocoa',
    price: 5.20,
    imageUrl: 'https://images.unsplash.com/photo-1572442388796-11668a67e53d?w=400',
    category: 'Cappuccino',
    rating: 4.8,
  ),
  Coffee(
    id: '3',
    name: 'Latte',
    description: 'Smooth espresso with steamed milk',
    price: 4.80,
    imageUrl: 'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=400',
    category: 'Latte',
    rating: 4.7,
  ),
  Coffee(
    id: '4',
    name: 'Americano',
    description: 'Espresso with hot water for a smooth taste',
    price: 3.80,
    imageUrl: 'https://images.unsplash.com/photo-1514432324607-a09d9b4aefdd?w=400',
    category: 'Americano',
    rating: 4.6,
  ),
  Coffee(
    id: '5',
    name: 'Mocha',
    description: 'Chocolate and espresso blend with whipped cream',
    price: 5.40,
    imageUrl: 'https://images.unsplash.com/photo-1578314675249-a6910f80cc4e?w=400',
    category: 'Mocha',
    rating: 4.9,
  ),
  Coffee(
    id: '6',
    name: 'Macchiato',
    description: 'Espresso marked with foam and caramel',
    price: 4.60,
    imageUrl: 'https://images.unsplash.com/photo-1517487881594-2787fef5ebf7?w=400',
    category: 'Macchiato',
    rating: 4.4,
  ),
];
