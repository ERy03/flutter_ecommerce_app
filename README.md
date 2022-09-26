# Flutter eCommerce App

## Learning points:

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
