void main() {
  // Differents ways of join maps in Dart using the :
  //  1.  spread operator - (…)
  //  2.  addAll() method
  //  3.  putIfAbsent() method

  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'c': 3, 'd': 4, 'c': 5};
  Map<String, String> map3 = {'firstname': "lele", 'lastname': "emagnu"};
  Map<String, String> map4 = {
    'country': "UK",
    'firstname': "new_name",
    'website': "emagnu@gmail.com"
  };

  //// spread operator
  Map<String, int> mergedMap = {...map1, ...map2};

  print(mergedMap);
  print(map1);
  print(map2);

  /// NOTE:  if there are duplicate keys present in the maps being mergine then the value of second map will be overwrite the corresponding value in the first map.
  /// i.e. the key c has value 3 in map1 and value 5 in map2.

  ///  addAll()
  // addAll() will copy map2 key/values pairs into map1. Duplicates will be overwritten with map2 values
  map1.addAll(map2);
  print(map1);
  print(map2);

  ///  putIfAbsent()
  // Here forEach() iterates map4 if key is absent, putIfAbsent(), will insert it into map3. i.e firstname already exists so it is not overwritten!
  map4.forEach((key, value) {
    map3.putIfAbsent(key, () => value);
  });
  print(map3);
  print(map4);
}
