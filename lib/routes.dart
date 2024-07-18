import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/product_details_screen.dart';
import 'package:ecommerce/screens/products_screen.dart';
import 'package:ecommerce/screens/second_screen.dart';
import 'package:go_router/go_router.dart';

final routes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/2nd',
      name: 'second',
      builder: (context, state) => const SecondScreen(),
    ),
    GoRoute(
      path: '/products',
      name: 'products',
      builder: (context, state) => const ProductsScreen(),
      routes: [
        GoRoute(
          path: ':productId',
          name: 'product details',
          builder: (context, state) {
            final productId = int.parse(state.pathParameters['productId']!);
            return ProductDetailsScreen(productId: productId);
          },
        ),
      ],
    ),
  ],
);
