package misc

from std import collection.*
// import java.util.Iterator;

open public class OrderedHashSet<T> <: LinkedHashSet<T> {

    protected var elements: ArrayList<T> = ArrayList<T>()
    
    public open func get (i: Int32): T {
        return T()
    }

    public open func set (i: Int32, value: T): T {
        return T()
    }

    public open func remove (i: Int32): Bool {
        return true
    }

    public open override func add (value: T): Bool {
        return true
    }

    public open override func remove (o: Object): Bool {
        return true
    }

    public open override func clear (): Unit {
        
    }

    public open override func hashCode (): Int32 {
        return 0
    }

    public open override func equals (o: Object): Bool {
        return true
    }

    public open override func iterator (): Iterator<T> {
        return Iterator<T>()
    }

    public open func elementsFunc (): List<T> {
        return List<T>()
    }

    public open override func clone (): Object {
        return Object()
    }

    public open override func toArray (): Array<Object> {
        return Array<Object>()
    }

    public open override func toString (): String {
        return ""
    }

    public init() {}
}


