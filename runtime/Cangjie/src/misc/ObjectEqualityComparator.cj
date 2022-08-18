package misc


public class ObjectEqualityComparator <: AbstractEqualityComparator<Object> {

    public static let INSTANCE: ObjectEqualityComparator = ObjectEqualityComparator()
    
    public override func hashCode (obj: Object): Int32 {
        return 0
    }

    public override func equals (a: Object, b: Object): Bool {
        return true
    }

    public init() {}
}


