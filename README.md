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
