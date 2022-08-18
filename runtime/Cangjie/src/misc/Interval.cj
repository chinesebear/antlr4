package misc


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
        return Interval()
    }

    public open func length (): Int32 {
        return 0
    }

    public open func equals (o: Object): Bool {
        return true
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func startsBeforeDisjoint (other: Interval): Bool {
        return true
    }

    public open func startsBeforeNonDisjoint (other: Interval): Bool {
        return true
    }

    public open func startsAfter (other: Interval): Bool {
        return true
    }

    public open func startsAfterDisjoint (other: Interval): Bool {
        return true
    }

    public open func startsAfterNonDisjoint (other: Interval): Bool {
        return true
    }

    public open func disjoint (other: Interval): Bool {
        return true
    }

    public open func adjacent (other: Interval): Bool {
        return true
    }

    public open func properlyContains (other: Interval): Bool {
        return true
    }

    public open func union (other: Interval): Interval {
        return Interval()
    }

    public open func intersection (other: Interval): Interval {
        return Interval()
    }

    public open func differenceNotProperlyContained (other: Interval): Interval {
        return Interval()
    }

    public open func toString (): String {
        return ""
    }

    public init() {}
}


