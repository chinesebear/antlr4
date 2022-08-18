package misc

from std import collection.*
// import java.util.Collection;

open public class FlexibleHashMap<K,V> <: Map<K, V> {

    public static let INITAL_CAPACITY: Int32 = 16
    
    public static let INITAL_BUCKET_CAPACITY: Int32 = 8
    
    public static let LOAD_FACTOR: Float64 = 0.75
    
    protected let comparator: AbstractEqualityComparator< K> = AbstractEqualityComparator< K>()
    
    protected var buckets: Array<LinkedList<Entry<K, V>>> =  Array<LinkedList<Entry<K, V>>>()
    
    protected var n: Int32 = 0
    
    protected var threshold: Int32 = 0
    
    protected var currentPrime: Int32 = 1
    
    protected var initialBucketCapacity: Int32 = 0
    
    private static func createEntryListArray (length: Int32): Array<LinkedList<Entry<K, V>>> {
        return Array<LinkedList<Entry<K, V>>>()
    }

    protected open func getBucket (key: K): Int32 {
        return 0
    }

    public open func get (key: Object): V {
        return V()
    }

    public open func put (key: K, value: V): V {
        return V()
    }

    public open func remove (key: Object): V {
        return V()
    }

    public open func putAll (m: Map< K,  V>): Unit {
        
    }

    public open func keySet (): Set<K> {
        return Set<K>()
    }

    public open func values (): Collection<V> {
        return Collection<V>()
    }

    public open func entrySet (): Set<MapEntry<K, V>> {
        return Set<MapEntry<K, V>>()
    }

    public open func containsKey (key: Object): Bool {
        return true
    }

    public open func containsValue (value: Object): Bool {
        return true
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func equals (o: Object): Bool {
        return true
    }

    protected open func expand (): Unit {
        
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func isEmpty (): Bool {
        return true
    }

    public open func clear (): Unit {
        
    }

    public open func toString (): String {
        return ""
    }

    public open func toTableString (): String {
        return ""
    }

    public static func `main` (args: Array<String>): Unit {
        
    }

    public init() {}
}

class FlexibleHashMapEntry<K,V> {
    var class_out: FlexibleHashMap
    public init(out: FlexibleHashMap) {
        class_out = out
    }
    public init() {
        class_out = FlexibleHashMap()
    }
    public let key: K = K()
    
    public var value: V = V()
    
    public func toString (): String {
        return ""
    }

}



