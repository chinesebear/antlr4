package atn

// import org.antlr.v4.runtime.Token;
from std import collection.*
// import org.antlr.v4.runtime.misc.Pair;
from std import io.*
// import java.util.Locale;

open public class ATNDeserializer {

    public static let SERIALIZED_VERSION: Int32 = 0
    
    private let deserializationOptions: ATNDeserializationOptions = ATNDeserializationOptions()
    
    public init (){

    }

    public init (deserializationOptions: ATNDeserializationOptions){

    }

    public open func deserialize (data: Array<Char>): ATN {
        return ATN()
    }

    public open func deserialize (data: Array<Int32>): ATN {
        return ATN()
    }

    private func deserializeSets (data: Array<Int32>, p: Int32, sets: List<IntervalSet>): Int32 {
        return 0
    }

    protected open func markPrecedenceDecisions (atn: ATN): Unit {
        
    }

    protected open func verifyATNFunc (atn: ATN): Unit {
        
    }

    protected open func checkCondition (condition: Bool): Unit {
        
    }

    protected open func checkCondition (condition: Bool, message: String): Unit {
        
    }

    protected static func toInt (c: Char): Int32 {
        return 0
    }

    protected static func toInt32 (data: Array<Char>, offset: Int32): Int32 {
        return 0
    }

    protected static func toInt32 (data: Array<Int32>, offset: Int32): Int32 {
        return 0
    }

    protected open func edgeFactory (atn: ATN, `type`: Int32, src: Int32, trg: Int32, arg1: Int32, arg2: Int32, arg3: Int32, sets: List<IntervalSet>): Transition {
        return Transition()
    }

    protected open func stateFactory (`type`: Int32, ruleIndex: Int32): ATNState {
        return ATNState()
    }

    protected open func lexerActionFactory (`type`: LexerActionType, data1: Int32, data2: Int32): LexerAction {
        return LexerAction()
    }

    public static func encodeIntsWith16BitWords (data: IntegerList): IntegerList {
        return IntegerList()
    }

    public static func decodeIntsEncodedAs16BitWords (data16: Array<Char>): Array<Int32> {
        return Array<Int32>()
    }

    public static func decodeIntsEncodedAs16BitWords (data16: Array<Char>, trimToSize: Bool): Array<Int32> {
        return Array<Int32>()
    }

}


