# Flutter eCommerce App

## Learning points:

### GoRouter 5.1.1
Install GoRouter and and configure it inside `MaterialApp.router` using the `routeConfig` property.

``` Dart
return MaterialApp.router(
  routerConfig: goRouter,
  ...
)

// importing goRouter which declares all routes in a separate file
```

Set `initiaLocation` and `debugLogDiagnostics` if needed.

```dart
final goRouter = GoRouter(
  initialLocation: '/',
  // produces an output for all navigation events in the console
  debugLogDiagnostics: true,
  routes: [...],
```

Changing the URL path strategy
```dart
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';

void main() {
  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  ...
}
```

<hr>

Using a custom page builder

Using the default material page transition:
```dart
GoRoute(
  path: 'cart',
  builder: (context, state) => const ShoppingCartScreen(),
)
```
Using a custom page transition:
```dart
GoRoute(
  path: 'cart',
  pageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    fullscreenDialog: true,
    child: const ShoppingCartScreen(),
  ),
)

// Return a MaterialPage.

// state.pageKey: is based on the current path for that page in the stack of pages, so it will uniquely identify the page without having to hardcode a key or come up with one yourself

/* fullScreenDialog ->
page will slide from the bottom and affect the close/back icon on the appbar.
*/
```
More about [transition](https://docs.page/csells/go_router/transitions)

<hr>


### Riverpod
How to create providers:

- Declare as a global variable
- Specify a type annotation
- Implement the body

``` Dart
final productRepositoryProvider = Provider<FakeProductsRepository>((ref) {
  return FakeProductsRepository;
})
```

Autodispose
- Try to use autodispose when using `streamProvider` and `futureProvider`
- This will close the coneection to the stream when it is no longer needed


### [LICENSE: MIT](../LICENSE.md)
