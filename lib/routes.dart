import 'package:ecommerce/screens/home_screen.dart';
import 'package:ecommerce/screens/product_details_screen.dart';
import 'package:ecommerce/screens/products_screen.dart';
import 'package:ecommerce/screens/second_screen.dart';
import 'package:flutter/material.dart';
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

// Create keys for `root` & `section` navigator avoiding unnecessary rebuilds
final _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouterRedirect authGuard = (context, state) {
  const isAuthenticated = true;
  if (!isAuthenticated) {
    return '/login';
  } else {
    return null;
  }
};

final routes2 = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/products/:productId',
      name: 'product details',
      redirect: authGuard,
      pageBuilder: (context, state) {
        final productId = int.parse(state.pathParameters['productId']!);
        return CustomTransitionPage(
          key: state.pageKey,
          child: ProductDetailsScreen(productId: productId),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Change the opacity of the screen using a Curve based on the the animation's value
            return FadeTransition(
              opacity:
                  CurveTween(curve: Curves.easeInOutCirc).animate(animation),
              child: child,
            );
          },
        );
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavbar(navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/2nd',
              name: 'second',
              builder: (context, state) => const SecondScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              name: 'home',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/products',
              name: 'products',
              builder: (context, state) => const ProductsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class ScaffoldWithNavbar extends StatelessWidget {
  const ScaffoldWithNavbar(this.navigationShell, {super.key});

  /// The navigation shell and container for the branch Navigators.
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time), label: 'Second'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Products'),
        ],
        onTap: _onTap,
      ),
    );
  }

  void _onTap(index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
