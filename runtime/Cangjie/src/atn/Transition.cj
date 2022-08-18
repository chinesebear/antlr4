package atn

from std import collection.*
// import java.util.Collections;

public abstract class Transition {

    public static let EPSILON: Int32 = 1
    
    public static let RANGE: Int32 = 2
    
    public static let RULE: Int32 = 3
    
    public static let PREDICATE: Int32 = 4
    
    public static let ATOM: Int32 = 5
    
    public static let ACTION: Int32 = 6
    
    public static let SET: Int32 = 7
    
    public static let NOT_SET: Int32 = 8
    
    public static let WILDCARD: Int32 = 9
    
    public static let PRECEDENCE: Int32 = 10
    
    public static let serializationNames: List<String> = List<String>()
    
    public static let serializationTypes: Map<Class< Transition>, Integer> = Map<Class< Transition>, Integer>()
    
    public var target: ATNState = ATNState()
    
    protected init (target: ATNState){

    }

    public func getSerializationType (): Int32 

    public func isEpsilon (): Bool {
        return true
    }

    public func labelFunc (): IntervalSet {
        return IntervalSet()
    }

    public func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool 

    public init() {}
}


