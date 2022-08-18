package atn

from std import collection.*
// import java.util.Collections;
// import java.util.Locale;

public abstract class ATNState {

    public static let INITIAL_NUM_TRANSITIONS: Int32 = 4
    
    public static let INVALID_TYPE: Int32 = 0
    
    public static let BASIC: Int32 = 1
    
    public static let RULE_START: Int32 = 2
    
    public static let BLOCK_START: Int32 = 3
    
    public static let PLUS_BLOCK_START: Int32 = 4
    
    public static let STAR_BLOCK_START: Int32 = 5
    
    public static let TOKEN_START: Int32 = 6
    
    public static let RULE_STOP: Int32 = 7
    
    public static let BLOCK_END: Int32 = 8
    
    public static let STAR_LOOP_BACK: Int32 = 9
    
    public static let STAR_LOOP_ENTRY: Int32 = 10
    
    public static let PLUS_LOOP_BACK: Int32 = 11
    
    public static let LOOP_END: Int32 = 12
    
    public static let serializationNames: List<String> = List<String>()
    
    public static let INVALID_STATE_NUMBER: Int32 = -1
    
    public var atn: ATN = ATN()
    
    public var stateNumber: Int32 = 0
    
    public var ruleIndex: Int32 = 0
    
    public var epsilonOnlyTransitions: Bool = true
    
    protected let transitions: List<Transition> = List<Transition>()
    
    public var nextTokenWithinRule: IntervalSet = IntervalSet()
    
    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func equals (o: Object): Bool {
        return true
    }

    public func isNonGreedyExitState (): Bool {
        return true
    }

    public func toString (): String {
        return ""
    }

    public func getTransitions (): Array<Transition> {
        return Array<Transition>()
    }

    public func getNumberOfTransitions (): Int32 {
        return 0
    }

    public func addTransition (e: Transition): Unit {
        
    }

    public func addTransition (index: Int32, e: Transition): Unit {
        
    }

    public func transition (i: Int32): Transition {
        return Transition()
    }

    public func setTransition (i: Int32, e: Transition): Unit {
        
    }

    public func removeTransition (index: Int32): Transition {
        return Transition()
    }

    public func getStateType (): Int32 

    public func onlyHasEpsilonTransitions (): Bool {
        return true
    }

    public func setRuleIndex (ruleIndex: Int32): Unit {
        
    }

    public init() {}
}


