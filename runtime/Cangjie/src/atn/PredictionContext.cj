package atn

// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.RuleContext;
from std import collection.*
// import org.antlr.v4.runtime.misc.MurmurHash;
// import java.util.Collections;
// import java.util.Comparator;

public abstract class PredictionContext {

    public static let EMPTY: EmptyPredictionContext = EmptyPredictionContext()
    
    public static let EMPTY_RETURN_STATE: Int32 = 0
    
    private static let INITIAL_HASH: Int32 = 1
    
    public static var globalNodeCount: Int32 = 0
    
    public let id: Int32 = 0
    
    public let cachedHashCode: Int32 = 0
    
    protected init (cachedHashCode: Int32){

    }

    public static func fromRuleContext (atn: ATN, outerContext: RuleContext): PredictionContext {
        return PredictionContext()
    }

    public func sizeFunc (): Int32 

    public func getParent (index: Int32): PredictionContext 

    public func getReturnState (index: Int32): Int32 

    public func isEmpty (): Bool {
        return true
    }

    public func hasEmptyPath (): Bool {
        return true
    }

    public func hashCodeFunc (): Int32 {
        return 0
    }

    public func equals (obj: Object): Bool 

    protected static func calculateEmptyHashCode (): Int32 {
        return 0
    }

    protected static func calculateHashCode (parent: PredictionContext, returnState: Int32): Int32 {
        return 0
    }

    protected static func calculateHashCode (parents: Array<PredictionContext>, returnStates: Array<Int32>): Int32 {
        return 0
    }

    public static func merge (a: PredictionContext, b: PredictionContext, rootIsWildcard: Bool, mergeCache: DoubleKeyMap<PredictionContext, PredictionContext, PredictionContext>): PredictionContext {
        return PredictionContext()
    }

    public static func mergeSingletons (a: SingletonPredictionContext, b: SingletonPredictionContext, rootIsWildcard: Bool, mergeCache: DoubleKeyMap<PredictionContext, PredictionContext, PredictionContext>): PredictionContext {
        return PredictionContext()
    }

    public static func mergeRoot (a: SingletonPredictionContext, b: SingletonPredictionContext, rootIsWildcard: Bool): PredictionContext {
        return PredictionContext()
    }

    public static func mergeArrays (a: ArrayPredictionContext, b: ArrayPredictionContext, rootIsWildcard: Bool, mergeCache: DoubleKeyMap<PredictionContext, PredictionContext, PredictionContext>): PredictionContext {
        return PredictionContext()
    }

    protected static func combineCommonParents (parents: Array<PredictionContext>): Unit {
        
    }

    public static func toDOTString (context: PredictionContext): String {
        return ""
    }

    public static func getCachedContext (context: PredictionContext, contextCache: PredictionContextCache, visited: IdentityHashMap<PredictionContext, PredictionContext>): PredictionContext {
        return PredictionContext()
    }

    public static func getAllContextNodes (context: PredictionContext): List<PredictionContext> {
        return List<PredictionContext>()
    }

    public static func getAllContextNodes_ (context: PredictionContext, nodes: List<PredictionContext>, visited: Map<PredictionContext, PredictionContext>): Unit {
        
    }

    public func toString (recog: Recognizer<T, T>): String {
        return ""
    }

    public func toStrings (recognizer: Recognizer<T, T>, currentState: Int32): Array<String> {
        return Array<String>()
    }

    public func toStrings (recognizer: Recognizer<T, T>, stop: PredictionContext, currentState: Int32): Array<String> {
        return Array<String>()
    }

    public init() {}
}


