package misc

from std import collection.*

open public class DoubleKeyMap<K,M,V> where K <: Equatable<K> & Hashable & Keys<K>, M <: Equatable<M> & Hashable, V <: Values<V> {
    var data: HashMap<K, HashMap<M, V>> = HashMap<K, HashMap<M,V>>()
    public open func put (k1: K, k2: M, v: V): V {
        var data2: HashMap<M, V> = data.get(k1).getOrThrow()
        return data2.put(k2, v).getOrThrow()
    }
    public open func get (k1: K, k2: M): V {
        return data.get(k1).getOrThrow().get(k2).getOrThrow()
    }

    public open func get (k1: K): HashMap<M, V> {
        return data.get(k1).getOrThrow()
    }

    public open func Vs (k1: K): Values<V> {
        data.get(k1).getOrThrow().values()
    }

    public open func keySet (): Keys<K> {
        data.keys()
    }

    public open func keySet (k1: K): Keys<M> {
        data.get(k1).getOrThrow().keys()
    }

    public init() {}
}


