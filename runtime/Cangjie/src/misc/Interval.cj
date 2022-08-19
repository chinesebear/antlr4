package default


open public class Interval {

    public static let INTERVAL_POOL_MAX_VALUE: Int32 = 1000
    
    public static let INVALID: Interval = Interval()
    
    static var cache: Array<Interval> = Array<Interval>()
    
    public var a: Int32 = 0
    
    public var b: Int32 = 0
    
    public static var creates: Int32 = 0
    
    public static var misses: Int32 = 0
    
    public static var hits: Int32 = 0
    
    public static var outOfRange: Int32 = 0
    
    public init (a: Int32, b: Int32){

    }

    public static func of (a: Int32, b: Int32): Interval {
  //    if (a != b || a < 0 || a > INTERVAL_POOL_MAX_VALUE) {
  //        return new Interval(a, b);
  //    if (cache[a] == null) {
  //        cache[a] = new Interval(a, a);
  //    return cache[a];

        return Interval()
    }

    public open func length (): Int32 {
  //    if (b < a) return 0;
  //    return b - a + 1;

        return 0
    }

    public open func equals (o: Object): Bool {
  //    if (o == null || !(o instanceof Interval)) {
  //        return false;
  //    Interval other = (Interval)o;
  //    return this.a == other.a && this.b == other.b;

        return true
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = 23;
  //    hash = hash * 31 + a;
  //    hash = hash * 31 + b;
  //    return hash;

        return 0
    }

    public open func startsBeforeDisjoint (other: Interval): Bool {
  //    return this.a < other.a && this.b < other.a;

        return true
    }

    public open func startsBeforeNonDisjoint (other: Interval): Bool {
  //    return this.a <= other.a && this.b >= other.a;

        return true
    }

    public open func startsAfter (other: Interval): Bool {
  //    return this.a > other.a;

        return true
    }

    public open func startsAfterDisjoint (other: Interval): Bool {
  //    return this.a > other.b;

        return true
    }

    public open func startsAfterNonDisjoint (other: Interval): Bool {
  //    return this.a > other.a && this.a <= other.b;

        return true
    }

    public open func disjoint (other: Interval): Bool {
  //    return startsBeforeDisjoint(other) || startsAfterDisjoint(other);

        return true
    }

    public open func adjacent (other: Interval): Bool {
  //    return this.a == other.b + 1 || this.b == other.a - 1;

        return true
    }

    public open func properlyContains (other: Interval): Bool {
  //    return other.a >= this.a && other.b <= this.b;

        return true
    }

    public open func union (other: Interval): Interval {
  //    return Interval.of(Math.min(a, other.a), Math.max(b, other.b));

        return Interval()
    }

    public open func intersection (other: Interval): Interval {
  //    return Interval.of(Math.max(a, other.a), Math.min(b, other.b));

        return Interval()
    }

    public open func differenceNotProperlyContained (other: Interval): Interval {
  //    Interval diff = null;
  //    if (other.startsBeforeNonDisjoint(this)) {
  //        diff = Interval.of(Math.max(this.a, other.b + 1), this.b);
  //    } else if (other.startsAfterNonDisjoint(this)) {
  //        diff = Interval.of(this.a, other.a - 1);
  //    return diff;

        return Interval()
    }

    public open func toString (): String {
  //    return a + ".." + b;

        return ""
    }

    public init() {}
}


