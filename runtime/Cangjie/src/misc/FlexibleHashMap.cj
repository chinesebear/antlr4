package default

from std import collection.*
// import java.util.Collection;

open public class FlexibleHashMap<K,V> <: Map<K, V> {

    public static let INITAL_CAPACITY: Int32 = 16
    
    public static let INITAL_BUCKET_CAPACITY: Int32 = 8
    
    public static let LOAD_FACTOR: Float64 = 0.75
    
    protected let comparator: AbstractEqualityComparator<K> = AbstractEqualityComparator<K>()
    
    protected var buckets: LinkedList<Entry<K, V>>[] = LinkedList<Entry<K, V>>[]()
    
    protected var n: Int32 = 0
    
    protected var threshold: Int32 = 0
    
    protected var currentPrime: Int32 = 1
    
    protected var initialBucketCapacity: Int32 = 0
    
    private static func createEntryListArray (length: Int32): LinkedList<Entry<K, V>>[] {
  //    @SuppressWarnings("unchecked")
  //    LinkedList<Entry<K, V>>[] result = (LinkedList<Entry<K, V>>[])new LinkedList<?>[length];
  //    return result;

        return LinkedList<Entry<K, V>>[]()
    }

    protected open func getBucket (key: K): Int32 {
  //    int hash = comparator.hashCode(key);
  //    int b = hash & (buckets.length - 1);
  //    return b;

        return 0
    }

    public open func get (key: Object): V {
  //    @SuppressWarnings("unchecked")
  //    K typedKey = (K)key;
  //    if (key == null) return null;
  //    int b = getBucket(typedKey);
  //    LinkedList<Entry<K, V>> bucket = buckets[b];
  //    if (bucket == null) return null;
  //    for (Entry<K, V> e : bucket) {
  //        if (comparator.equals(e.key, typedKey)) {
  //            return e.value;
  //    return null;

        return V()
    }

    public open func put (key: K, value: V): V {
  //    if (key == null) return null;
  //    if (n > threshold) expand();
  //    int b = getBucket(key);
  //    LinkedList<Entry<K, V>> bucket = buckets[b];
  //    if (bucket == null) {
  //        bucket = buckets[b] = new LinkedList<Entry<K, V>>();
  //    for (Entry<K, V> e : bucket) {
  //        if (comparator.equals(e.key, key)) {
  //            V prev = e.value;
  //            e.value = value;
  //            n++;
  //            return prev;
  //    bucket.add(new Entry<K, V>(key, value));
  //    n++;
  //    return null;

        return V()
    }

    public open func remove (key: Object): V {
  //    throw new UnsupportedOperationException();

        return V()
    }

    public open func putAll (m: Option<Map<K, V>>): Unit {
  //    throw new UnsupportedOperationException();

        
    }

    public open func keySet (): Set<K> {
  //    throw new UnsupportedOperationException();

        return Set<K>()
    }

    public open func values (): Collection<V> {
  //    List<V> a = new ArrayList<V>(size());
  //    for (LinkedList<Entry<K, V>> bucket : buckets) {
  //        if (bucket == null) continue;
  //        for (Entry<K, V> e : bucket) {
  //            a.add(e.value);
  //    return a;

        return Collection<V>()
    }

    public open func entrySet (): Set<MapEntry<K, V>> {
  //    throw new UnsupportedOperationException();

        return Set<MapEntry<K, V>>()
    }

    public open func containsKey (key: Object): Bool {
  //    return get(key) != null;

        return true
    }

    public open func containsValue (value: Object): Bool {
  //    throw new UnsupportedOperationException();

        return true
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    for (LinkedList<Entry<K, V>> bucket : buckets) {
  //        if (bucket == null) continue;
  //        for (Entry<K, V> e : bucket) {
  //            if (e == null) break;
  //            hash = MurmurHash.update(hash, comparator.hashCode(e.key));
  //    hash = MurmurHash.finish(hash, size());
  //    return hash;

        return 0
    }

    public open func equals (o: Object): Bool {
  //    throw new UnsupportedOperationException();

        return true
    }

    protected open func expand (): Unit {
  //    LinkedList<Entry<K, V>>[] old = buckets;
  //    currentPrime += 4;
  //    int newCapacity = buckets.length * 2;
  //    LinkedList<Entry<K, V>>[] newTable = createEntryListArray(newCapacity);
  //    buckets = newTable;
  //    threshold = (int)(newCapacity * LOAD_FACTOR);
  //    int oldSize = size();
  //    for (LinkedList<Entry<K, V>> bucket : old) {
  //        if (bucket == null) continue;
  //        for (Entry<K, V> e : bucket) {
  //            if (e == null) break;
  //            put(e.key, e.value);
  //    n = oldSize;

        
    }

    public open func sizeFunc (): Int32 {
  //    return n;

        return 0
    }

    public open func isEmpty (): Bool {
  //    return n == 0;

        return true
    }

    public open func clear (): Unit {
  //    buckets = createEntryListArray(INITAL_CAPACITY);
  //    n = 0;

        
    }

    public open func toString (): String {
  //    if (size() == 0) return "{}";
  //    StringBuilder buf = new StringBuilder();
  //    buf.append('{');
  //    boolean first = true;
  //    for (LinkedList<Entry<K, V>> bucket : buckets) {
  //        if (bucket == null) continue;
  //        for (Entry<K, V> e : bucket) {
  //            if (e == null) break;
  //            if (first) first = false; else buf.append(", ");
  //            buf.append(e.toString());
  //    buf.append('}');
  //    return buf.toString();

        return ""
    }

    public open func toTableString (): String {
  //    StringBuilder buf = new StringBuilder();
  //    for (LinkedList<Entry<K, V>> bucket : buckets) {
  //        if (bucket == null) {
  //            buf.append("null\n");
  //            continue;
  //        buf.append('[');
  //        boolean first = true;
  //        for (Entry<K, V> e : bucket) {
  //            if (first) first = false; else buf.append(" ");
  //            if (e == null) buf.append("_"); else buf.append(e.toString());
  //        buf.append("]\n");
  //    return buf.toString();

        return ""
    }

    public static func `main` (args: Array<String>): Unit {
  //    FlexibleHashMap<String, Integer> map = new FlexibleHashMap<String, Integer>();
  //    map.put("hi", 1);
  //    map.put("mom", 2);
  //    map.put("foo", 3);
  //    map.put("ach", 4);
  //    map.put("cbba", 5);
  //    map.put("d", 6);
  //    map.put("edf", 7);
  //    map.put("mom", 8);
  //    map.put("hi", 9);
  //    System.out.println(map);
  //    System.out.println(map.toTableString());

        
    }

    public init() {}
}

class FlexibleHashMapEntry<K,V> {
    var class_out: FlexibleHashMap<K,V>
    public init(out: FlexibleHashMap<K,V>) {
        class_out = out
    }
    public init() {
        class_out = FlexibleHashMap()
    }
    public let key: K = K()
    
    public var value: V = V()
    
    public func toString (): String {
  //    return key.toString() + ":" + value.toString();

        return ""
    }

}



