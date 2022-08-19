package default

// import org.antlr.v4.runtime.dfa.DFAState;
from std import collection.*

public abstract class ATNSimulator {

    public static let ERROR: DFAState = DFAState()
    
    public let atn: ATN = ATN()
    
    protected let sharedContextCache: PredictionContextCache = PredictionContextCache()
    
    public init (atn: ATN, sharedContextCache: PredictionContextCache){

    }

    public func reset (): Unit 

    public open func clearDFA (): Unit {
  //    throw new UnsupportedOperationException("This ATN simulator does not support clearing the DFA.");

        
    }

    public open func getSharedContextCache (): PredictionContextCache {
  //    return sharedContextCache;

        return PredictionContextCache()
    }

    public open func getCachedContext (context: Option<PredictionContext>): Option<PredictionContext> {
  //    if (sharedContextCache == null) return context;
  //    synchronized (sharedContextCache) {
  //        IdentityHashMap<PredictionContext, PredictionContext> visited = new IdentityHashMap<PredictionContext, PredictionContext>();
  //        return Option<PredictionContext>.getCachedContext(context, sharedContextCache, visited);

        return Option<PredictionContext>.None
    }

    public init() {}
}


