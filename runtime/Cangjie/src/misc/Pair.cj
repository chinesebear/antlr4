package default

from std import io.*

open public class Pair<A,B> <: Serializable {

    public let a: A = A()
    
    public let b: B = B()
    
    public init (a: A, b: B){

    }

    public open func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof Pair<?, ?>)) {
  //        return false;
  //    Pair<?, ?> other = (Pair<?, ?>)obj;
  //    return ObjectEqualityComparator.INSTANCE.equals(a, other.a) && ObjectEqualityComparator.INSTANCE.equals(b, other.b);

        return true
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, a);
  //    hash = MurmurHash.update(hash, b);
  //    return MurmurHash.finish(hash, 2);

        return 0
    }

    public open func toString (): String {
  //    return String.format("(%s, %s)", a, b);

        return ""
    }

    public init() {}
}


