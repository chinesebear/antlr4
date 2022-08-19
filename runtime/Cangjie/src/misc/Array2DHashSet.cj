package default

from std import collection.*
// import java.util.Collection;
// import java.util.Iterator;
// import java.util.NoSuchElementException;

open public class Array2DHashSet<T> <: Set<T> {

    public static let INITAL_CAPACITY: Int32 = 16
    
    public static let INITAL_BUCKET_CAPACITY: Int32 = 8
    
    public static let LOAD_FACTOR: Float64 = 0.75
    
    protected let comparator: AbstractOption<EqualityComparator<T>> = AbstractOption<EqualityComparator<T>>()
    
    protected var buckets: Array<Array<T>> = Array<Array<T>>()
    
    protected var n: Int32 = 0
    
    protected var threshold: Int32 = 0
    
    protected var currentPrime: Int32 = 1
    
    protected var initialBucketCapacity: Int32 = 0
    
    public init (){

    }

    public init (comparator: AbstractOption<EqualityComparator<T>>){

    }

    public init (comparator: AbstractOption<EqualityComparator<T>>, initialCapacity: Int32, initialBucketCapacity: Int32){

    }

    public open func getOrAdd (o: T): T {
  //    if (n > threshold) expand();
  //    return getOrAddImpl(o);

        return T()
    }

    protected open func getOrAddImpl (o: T): T {
  //    int b = getBucket(o);
  //    T[] bucket = buckets[b];
  //    if (bucket == null) {
  //        bucket = createBucket(initialBucketCapacity);
  //        bucket[0] = o;
  //        buckets[b] = bucket;
  //        n++;
  //        return o;
  //    for (int i = 0; i < bucket.length; i++) {
  //        T existing = bucket[i];
  //        if (existing == null) {
  //            bucket[i] = o;
  //            n++;
  //            return o;
  //        if (comparator.equals(existing, o)) return existing;
  //    int oldLength = bucket.length;
  //    bucket = Arrays.copyOf(bucket, bucket.length * 2);
  //    buckets[b] = bucket;
  //    bucket[oldLength] = o;
  //    n++;
  //    return o;

        return T()
    }

    public open func get (o: T): T {
  //    if (o == null) return o;
  //    int b = getBucket(o);
  //    T[] bucket = buckets[b];
  //    if (bucket == null) return null;
  //    for (T e : bucket) {
  //        if (e == null) return null;
  //        if (comparator.equals(e, o)) return e;
  //    return null;

        return T()
    }

    protected open func getBucket (o: T): Int32 {
  //    int hash = comparator.hashCode(o);
  //    int b = hash & (buckets.length - 1);
  //    return b;

        return 0
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    for (T[] bucket : buckets) {
  //        if (bucket == null) continue;
  //        for (T o : bucket) {
  //            if (o == null) break;
  //            hash = MurmurHash.update(hash, comparator.hashCode(o));
  //    hash = MurmurHash.finish(hash, size());
  //    return hash;

        return 0
    }

    public open func equals (o: Object): Bool {
  //    if (o == this) return true;
  //    if (!(o instanceof Array2DHashSet)) return false;
  //    Array2DHashSet<?> other = (Array2DHashSet<?>)o;
  //    if (other.size() != size()) return false;
  //    boolean same = this.containsAll(other);
  //    return same;

        return true
    }

    protected open func expand (): Unit {
  //    T[][] old = buckets;
  //    currentPrime += 4;
  //    int newCapacity = buckets.length * 2;
  //    T[][] newTable = createBuckets(newCapacity);
  //    int[] newBucketLengths = new int[newTable.length];
  //    buckets = newTable;
  //    threshold = (int)(newCapacity * LOAD_FACTOR);
  //    int oldSize = size();
  //    for (T[] bucket : old) {
  //        if (bucket == null) {
  //            continue;
  //        for (T o : bucket) {
  //            if (o == null) {
  //                break;
  //            int b = getBucket(o);
  //            int bucketLength = newBucketLengths[b];
  //            T[] newBucket;
  //            if (bucketLength == 0) {
  //                newBucket = createBucket(initialBucketCapacity);
  //                newTable[b] = newBucket;
  //            } else {
  //                newBucket = newTable[b];
  //                if (bucketLength == newBucket.length) {
  //                    newBucket = Arrays.copyOf(newBucket, newBucket.length * 2);
  //                    newTable[b] = newBucket;
  //            newBucket[bucketLength] = o;
  //            newBucketLengths[b]++;
  //    assert n == oldSize;

        
    }

    public open func add (t: T): Bool {
  //    T existing = getOrAdd(t);
  //    return existing == t;

        return true
    }

    public open func sizeFunc (): Int32 {
  //    return n;

        return 0
    }

    public open func isEmpty (): Bool {
  //    return n == 0;

        return true
    }

    public open func contains (o: Object): Bool {
  //    return containsFast(asElementType(o));

        return true
    }

    public open func containsFast (obj: T): Bool {
  //    if (obj == null) {
  //        return false;
  //    return get(obj) != null;

        return true
    }

    public open func iterator (): Option<Iterator<T>> {
  //    return new Array2DHashSetSetIterator(toArray());

        return Option<Iterator<T>>.None
    }

    public open func toArray (): Array<T> {
  //    T[] a = createBucket(size());
  //    int i = 0;
  //    for (T[] bucket : buckets) {
  //        if (bucket == null) {
  //            continue;
  //        for (T o : bucket) {
  //            if (o == null) {
  //                break;
  //            a[i++] = o;
  //    return a;

        return Array<T>()
    }

    public func toArray (a: Array<U>): Array<U> {
  //    if (a.length < size()) {
  //        a = Arrays.copyOf(a, size());
  //    int i = 0;
  //    for (T[] bucket : buckets) {
  //        if (bucket == null) {
  //            continue;
  //        for (T o : bucket) {
  //            if (o == null) {
  //                break;
  //            @SuppressWarnings("unchecked")
  //            U targetElement = (U)o;
  //            a[i++] = targetElement;
  //    return a;

        return Array<U>()
    }

    public open func remove (o: Object): Bool {
  //    return removeFast(asElementType(o));

        return true
    }

    public open func removeFast (obj: T): Bool {
  //    if (obj == null) {
  //        return false;
  //    int b = getBucket(obj);
  //    T[] bucket = buckets[b];
  //    if (bucket == null) {
  //        return false;
  //    for (int i = 0; i < bucket.length; i++) {
  //        T e = bucket[i];
  //        if (e == null) {
  //            return false;
  //        if (comparator.equals(e, obj)) {
  //            System.arraycopy(bucket, i + 1, bucket, i, bucket.length - i - 1);
  //            bucket[bucket.length - 1] = null;
  //            n--;
  //            return true;
  //    return false;

        return true
    }

    public open func containsAll (collection: Collection<T>): Bool {
  //    if (collection instanceof Array2DHashSet) {
  //        Array2DHashSet<?> s = (Array2DHashSet<?>)collection;
  //        for (Object[] bucket : s.buckets) {
  //            if (bucket == null) continue;
  //            for (Object o : bucket) {
  //                if (o == null) break;
  //                if (!this.containsFast(asElementType(o))) return false;
  //    } else {
  //        for (Object o : collection) {
  //            if (!this.containsFast(asElementType(o))) return false;
  //    return true;

        return true
    }

    public open func addAll (c: Collection<T>): Bool {
  //    boolean changed = false;
  //    for (T o : c) {
  //        T existing = getOrAdd(o);
  //        if (existing != o) changed = true;
  //    return changed;

        return true
    }

    public open func retainAll (c: Collection<T>): Bool {
  //    int newsize = 0;
  //    for (T[] bucket : buckets) {
  //        if (bucket == null) {
  //            continue;
  //        int i;
  //        int j;
  //        for (i = 0, j = 0; i < bucket.length; i++) {
  //            if (bucket[i] == null) {
  //                break;
  //            if (!c.contains(bucket[i])) {
  //                continue;
  //            if (i != j) {
  //                bucket[j] = bucket[i];
  //            j++;
  //            newsize++;
  //        newsize += j;
  //        while (j < i) {
  //            bucket[j] = null;
  //            j++;
  //    boolean changed = newsize != n;
  //    n = newsize;
  //    return changed;

        return true
    }

    public open func removeAll (c: Collection<T>): Bool {
  //    boolean changed = false;
  //    for (Object o : c) {
  //        changed |= removeFast(asElementType(o));
  //    return changed;

        return true
    }

    public open func clear (): Unit {
  //    buckets = createBuckets(INITAL_CAPACITY);
  //    n = 0;
  //    threshold = (int)Math.floor(INITAL_CAPACITY * LOAD_FACTOR);

        
    }

    public open func toString (): String {
  //    if (size() == 0) return "{}";
  //    StringBuilder buf = new StringBuilder();
  //    buf.append('{');
  //    boolean first = true;
  //    for (T[] bucket : buckets) {
  //        if (bucket == null) continue;
  //        for (T o : bucket) {
  //            if (o == null) break;
  //            if (first) first = false; else buf.append(", ");
  //            buf.append(o.toString());
  //    buf.append('}');
  //    return buf.toString();

        return ""
    }

    public open func toTableString (): String {
  //    StringBuilder buf = new StringBuilder();
  //    for (T[] bucket : buckets) {
  //        if (bucket == null) {
  //            buf.append("null\n");
  //            continue;
  //        buf.append('[');
  //        boolean first = true;
  //        for (T o : bucket) {
  //            if (first) first = false; else buf.append(" ");
  //            if (o == null) buf.append("_"); else buf.append(o.toString());
  //        buf.append("]\n");
  //    return buf.toString();

        return ""
    }

    protected open func asElementType (o: Object): T {
  //    return (T)o;

        return T()
    }

    protected open func createBuckets (capacity: Int32): Array<Array<T>> {
  //    return (T[][])new Object[capacity][];

        return Array<Array<T>>()
    }

    protected open func createBucket (capacity: Int32): Array<T> {
  //    return (T[])new Object[capacity];

        return Array<T>()
    }

}

class Array2DHashSetSetIterator <: Iterator<T> {
    var class_out: Array2DHashOption<Set<ATNConfig>>
    public init(out: Array2DHashOption<Set<ATNConfig>>) {
        class_out = out
    }
    public init() {
        class_out = Array2DHashSet()
    }
    let data: Array<T> = Array<T>()
    
    var nextIndex: Int32 = 0
    
    var removed: Bool = true
    
    public func hasNext (): Bool {
  //    return nextIndex < data.length;

        return true
    }

    public func next (): T {
  //    if (!hasNext()) {
  //        throw new NoSuchElementException();
  //    removed = false;
  //    return data[nextIndex++];

        return T()
    }

    public func remove (): Unit {
  //    if (removed) {
  //        throw new IllegalStateException();
  //    Array2DHashSet.this.remove(data[nextIndex - 1]);
  //    removed = true;

        
    }

}



