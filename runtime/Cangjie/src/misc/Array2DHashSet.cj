package misc

from std import collection.*
// import java.util.Collection;
// import java.util.Iterator;
// import java.util.NoSuchElementException;

open public class Array2DHashSet<T> <: Set<T> {

    public static let INITAL_CAPACITY: Int32 = 16
    
    public static let INITAL_BUCKET_CAPACITY: Int32 = 8
    
    public static let LOAD_FACTOR: Float64 = 0.75
    
    protected let comparator: AbstractEqualityComparator< T> = AbstractEqualityComparator< T>()
    
    protected var buckets: Array<Array<T>> = Array<Array<T>>()
    
    protected var n: Int32 = 0
    
    protected var threshold: Int32 = 0
    
    protected var currentPrime: Int32 = 1
    
    protected var initialBucketCapacity: Int32 = 0
    
    public init (){

    }

    public init (comparator: AbstractEqualityComparator< T>){

    }

    public init (comparator: AbstractEqualityComparator< T>, initialCapacity: Int32, initialBucketCapacity: Int32){

    }

    public open func getOrAdd (o: T): T {
        return T()
    }

    protected open func getOrAddImpl (o: T): T {
        return T()
    }

    public open func get (o: T): T {
        return T()
    }

    protected open func getBucket (o: T): Int32 {
        return 0
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func equals (o: Object): Bool {
        return true
    }

    protected open func expand (): Unit {
        
    }

    public open func add (t: T): Bool {
        return true
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func isEmpty (): Bool {
        return true
    }

    public open func contains (o: Object): Bool {
        return true
    }

    public open func containsFast (obj: T): Bool {
        return true
    }

    public open func iterator (): Iterator<T> {
        return Iterator<T>()
    }

    public open func toArray (): Array<T> {
        return Array<T>()
    }

    public open func toArray (a: Array<U>): Array<U> {
        return Array<U>()
    }

    public open func remove (o: Object): Bool {
        return true
    }

    public open func removeFast (obj: T): Bool {
        return true
    }

    public open func containsAll (collection: Collection<T>): Bool {
        return true
    }

    public open func addAll (c: Collection< T>): Bool {
        return true
    }

    public open func retainAll (c: Collection<T>): Bool {
        return true
    }

    public open func removeAll (c: Collection<T>): Bool {
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

    protected open func asElementType (o: Object): T {
        return T()
    }

    protected open func createBuckets (capacity: Int32): Array<Array<T>> {
        return Array<Array<T>>()
    }

    protected open func createBucket (capacity: Int32): Array<T> {
        return Array<T>()
    }

}

class Array2DHashSetSetIterator <: Iterator<T> {
    var class_out: Array2DHashSet
    public init(out: Array2DHashSet) {
        class_out = out
    }
    public init() {
        class_out = Array2DHashSet()
    }
    let data: Array<T> = Array<T>()
    
    var nextIndex: Int32 = 0
    
    var removed: Bool = true
    
    public func hasNext (): Bool {
        return true
    }

    public func next (): T {
        return T()
    }

    public func remove (): Unit {
        
    }

}



