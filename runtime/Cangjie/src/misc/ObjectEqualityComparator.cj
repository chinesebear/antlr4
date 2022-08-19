package default


public class ObjectEqualityComparator <: AbstractEqualityComparator<Object> {

    public static let INSTANCE: ObjectEqualityComparator = ObjectEqualityComparator()
    
    public func hashCodeFunc (obj: Object): Int32 {
  //    if (obj == null) {
  //        return 0;
  //    return obj.hashCode();

        return 0
    }

    public func equals (a: Object, b: Object): Bool {
  //    if (a == null) {
  //        return b == null;
  //    return a.equals(b);

        return true
    }

    public init() {}
}


