package misc

from std import io.*

open public class Pair<A,B> <: Serializable {

    public let a: A = A()
    
    public let b: B = B()
    
    public init (a: A, b: B){

    }

    public open func equals (obj: Object): Bool {
        return true
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func toString (): String {
        return ""
    }

    public init() {}
}


