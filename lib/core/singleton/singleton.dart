class Singleton {
  static final Singleton instance = Singleton._internal();
  
  factory Singleton() {
    return instance;
  }

  Singleton._internal();
}