package default

// import java.util.Collection;
from std import collection.*

open public class DoubleKeyMap<Key1,Key2,Value> {

    var data: Map<Key1, Map<Key2, Value>> = Map<Key1, Map<Key2, Value>>()
    
    public open func put (k1: Key1, k2: Key2, v: Value): Value {
  //    Map<Key2, Value> data2 = data.get(k1);
  //    Value prev = null;
  //    if (data2 == null) {
  //        data2 = new LinkedHashMap<Key2, Value>();
  //        data.put(k1, data2);
  //    } else {
  //        prev = data2.get(k2);
  //    data2.put(k2, v);
  //    return prev;

        return Value()
    }

    public open func get (k1: Key1, k2: Key2): Value {
  //    Map<Key2, Value> data2 = data.get(k1);
  //    if (data2 == null) return null;
  //    return data2.get(k2);

        return Value()
    }

    public open func get (k1: Key1): Map<Key2, Value> {
  //    return data.get(k1);

        return Map<Key2, Value>()
    }

    public open func values (k1: Key1): Collection<Value> {
  //    Map<Key2, Value> data2 = data.get(k1);
  //    if (data2 == null) return null;
  //    return data2.values();

        return Collection<Value>()
    }

    public open func keySet (): Set<Key1> {
  //    return data.keySet();

        return Set<Key1>()
    }

    public open func keySet (k1: Key1): Set<Key2> {
  //    Map<Key2, Value> data2 = data.get(k1);
  //    if (data2 == null) return null;
  //    return data2.keySet();

        return Set<Key2>()
    }

    public init() {}
}


