package misc


open public class Triple<A,B,C> {

    public let a: A = A()
    
    public let b: B = B()
    
    public let c: C = C()
    
    public init (a: A, b: B, c: C){

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


