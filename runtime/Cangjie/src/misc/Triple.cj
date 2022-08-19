package default


open public class Triple<A,B,C> {

    public let a: A = A()
    
    public let b: B = B()
    
    public let c: C = C()
    
    public init (a: A, b: B, c: C){

    }

    public open func equals (obj: Object): Bool {
  //    if (obj == this) {
  //        return true;
  //    } else if (!(obj instanceof Triple<?, ?, ?>)) {
  //        return false;
  //    Triple<?, ?, ?> other = (Triple<?, ?, ?>)obj;
  //    return ObjectEqualityComparator.INSTANCE.equals(a, other.a) && ObjectEqualityComparator.INSTANCE.equals(b, other.b) && ObjectEqualityComparator.INSTANCE.equals(c, other.c);

        return true
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize();
  //    hash = MurmurHash.update(hash, a);
  //    hash = MurmurHash.update(hash, b);
  //    hash = MurmurHash.update(hash, c);
  //    return MurmurHash.finish(hash, 3);

        return 0
    }

    public open func toString (): String {
  //    return String.format("(%s, %s, %s)", a, b, c);

        return ""
    }

    public init() {}
}


