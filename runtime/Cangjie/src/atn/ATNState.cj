package default

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
    
    protected let transitions: List<Option<Transition>> = List<Option<Transition>>()
    
    public var nextTokenWithinRule: IntervalSet = IntervalSet()
    
    public open func hashCode (): Int32 {
  //    return stateNumber;

        return 0
    }

    public open func equals (o: Object): Bool {
  //    if (o instanceof Option<ATNState>) return stateNumber == ((Option<ATNState>)o).stateNumber;
  //    return false;

        return true
    }

    public open func isNonGreedyExitState (): Bool {
  //    return false;

        return true
    }

    public open func toString (): String {
  //    return String.valueOf(stateNumber);

        return ""
    }

    public open func getTransitions (): Array<Option<Transition>> {
  //    return transitions.toArray(new Option<Transition>[0]);

        return Array<Option<Transition>>()
    }

    public open func getNumberOfTransitions (): Int32 {
  //    return transitions.size();

        return 0
    }

    public open func addTransition (e: Option<Transition>): Unit {
  //    addTransition(transitions.size(), e);

        
    }

    public open func addTransition (index: Int32, e: Option<Transition>): Unit {
  //    if (transitions.isEmpty()) {
  //        epsilonOnlyTransitions = e.isEpsilon();
  //    } else if (epsilonOnlyTransitions != e.isEpsilon()) {
  //        System.err.format(Locale.getDefault(), "ATN state %d has both epsilon and non-epsilon transitions.\n", stateNumber);
  //        epsilonOnlyTransitions = false;
  //    boolean alreadyPresent = false;
  //    for (Transition t : transitions) {
  //        if (t.target.stateNumber == e.target.stateNumber) {
  //            if (t.label() != null && e.label() != null && t.label().equals(e.label())) {
  //                alreadyPresent = true;
  //                break;
  //            } else if (t.isEpsilon() && e.isEpsilon()) {
  //                alreadyPresent = true;
  //                break;
  //    if (!alreadyPresent) {
  //        transitions.add(index, e);

        
    }

    public open func transition (i: Int32): Option<Transition> {
  //    return transitions.get(i);

        return Option<Transition>.None
    }

    public open func setTransition (i: Int32, e: Option<Transition>): Unit {
  //    transitions.set(i, e);

        
    }

    public open func removeTransition (index: Int32): Option<Transition> {
  //    return transitions.remove(index);

        return Option<Transition>.None
    }

    public func getStateType (): Int32 

    public open func onlyHasEpsilonTransitions (): Bool {
  //    return epsilonOnlyTransitions;

        return true
    }

    public open func setRuleIndex (ruleIndex: Int32): Unit {
  //    this.ruleIndex = ruleIndex;

        
    }

    public init() {}
}


