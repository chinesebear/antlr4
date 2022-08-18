package atn

// import org.antlr.v4.runtime.Token;
from std import collection.*
// import org.antlr.v4.runtime.misc.Interval;
// import java.util.Collection;
// import java.util.Locale;

open public class ATNSerializer {

    public var atn: ATN = ATN()
    
    private let data: IntegerList = IntegerList()
    
    private let sets: Map<IntervalSet, Boolean> = Map<IntervalSet, Boolean>()
    
    private let nonGreedyStates: IntegerList = IntegerList()
    
    private let precedenceStates: IntegerList = IntegerList()
    
    public init (atn: ATN){

    }

    public open func serialize (): IntegerList {
        return IntegerList()
    }

    private func addPreamble (): Unit {
        
    }

    private func addLexerActions (): Unit {
        
    }

    private func addDecisionStartStates (): Unit {
        
    }

    private func addEdges (nedges: Int32, setIndices: Map<IntervalSet, Integer>): Unit {
        
    }

    private func addSets (): Map<IntervalSet, Integer> {
        return Map<IntervalSet, Integer>()
    }

    private func addModeStartStates (): Unit {
        
    }

    private func addRuleStatesAndLexerTokenTypes (): Unit {
        
    }

    private func addPrecedenceStates (): Unit {
        
    }

    private func addNonGreedyStates (): Unit {
        
    }

    private func addEdges (): Int32 {
        return 0
    }

    private static func serializeSets (data: IntegerList, sets: Collection<IntervalSet>): Unit {
        
    }

    public static func getSerialized (atn: ATN): IntegerList {
        return IntegerList()
    }

    public init() {}
}


