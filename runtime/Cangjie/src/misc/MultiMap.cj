package misc

from std import collection.*

open public class MultiMap<K,V> <: LinkedHashMap<K, List<V>> {

    public open func map (key: K, value: V): Unit {
        
    }

    public open func getPairs (): List<Pair<K, V>> {
        return List<Pair<K, V>>()
    }

    public init() {}
}


