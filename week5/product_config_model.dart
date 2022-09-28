
//Eager Singleton
class ProductConfig {
  static final ProductConfig instance = ProductConfig._('ahmet');
  final String apiKey;

  ProductConfig._(this.apiKey);
}

//Lazy Singleton
class ProductLazySingleton {
  static ProductLazySingleton? _instance;
  static ProductLazySingleton get instance{
    if(_instance == null) _instance = ProductLazySingleton._init();
    return _instance!;
  }

  ProductLazySingleton._init();
}