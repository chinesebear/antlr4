package default

from std import collection.*

open public class MultiMap<K,V> <: LinkedHashMap<K, List<V>> {

    public open func map (key: K, value: V): Unit {
  //    List<V> elementsForKey = get(key);
  //    if (elementsForKey == null) {
  //        elementsForKey = new ArrayList<V>();
  //        super.put(key, elementsForKey);
  //    elementsForKey.add(value);

        
    }

    public open func getPairs (): List<Pair<K, V>> {
  //    List<Pair<K, V>> pairs = new ArrayList<Pair<K, V>>();
  //    for (K key : keySet()) {
  //        for (V value : get(key)) {
  //            pairs.add(new Pair<K, V>(key, value));
  //    return pairs;

        return List<Pair<K, V>>()
    }

    public init() {}
}


