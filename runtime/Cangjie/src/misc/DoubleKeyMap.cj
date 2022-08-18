package misc

// import java.util.Collection;
from std import collection.*

open public class DoubleKeyMap<Key1,Key2,Value> {

    var data: Map<Key1, Map<Key2, Value>> = Map<Key1, Map<Key2, Value>>()
    
    public open func put (k1: Key1, k2: Key2, v: Value): Value {
        return Value()
    }

    public open func get (k1: Key1, k2: Key2): Value {
        return Value()
    }

    public open func get (k1: Key1): Map<Key2, Value> {
        return Map<Key2, Value>()
    }

    public open func values (k1: Key1): Collection<Value> {
        return Collection<Value>()
    }

    public open func keySet (): Set<Key1> {
        return Set<Key1>()
    }

    public open func keySet (k1: Key1): Set<Key2> {
        return Set<Key2>()
    }

    public init() {}
}


