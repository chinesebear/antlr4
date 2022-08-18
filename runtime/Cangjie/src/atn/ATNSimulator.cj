package atn

// import org.antlr.v4.runtime.dfa.DFAState;
from std import collection.*

public abstract class ATNSimulator {

    public static let ERROR: DFAState = DFAState()
    
    public let atn: ATN = ATN()
    
    protected let sharedContextCache: PredictionContextCache = PredictionContextCache()
    
    public init (atn: ATN, sharedContextCache: PredictionContextCache){

    }

    public func reset (): Unit 

    public func clearDFA (): Unit {
        
    }

    public func getSharedContextCache (): PredictionContextCache {
        return PredictionContextCache()
    }

    public func getCachedContext (context: PredictionContext): PredictionContext {
        return PredictionContext()
    }

    public init() {}
}


