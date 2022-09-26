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


### [LICENSE: MIT](../LICENSE.md)
