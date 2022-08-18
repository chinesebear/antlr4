package dfa

// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNConfig;
from std import collection.*
import atn.*
// import org.antlr.v4.runtime.atn.LexerActionExecutor;
// import org.antlr.v4.runtime.atn.ParserATNSimulator;
// import org.antlr.v4.runtime.atn.SemanticContext;
// import org.antlr.v4.runtime.misc.MurmurHash;

open public class DFAState {

    public var stateNumber: Int32 = -1
    
    public var configs: ATNConfigSet = ATNConfigSet()
    
    public var edges: Array<DFAState> = Array<DFAState>()
    
    public var isAcceptState: Bool = true
    
    public var prediction: Int32 = 0
    
    public var lexerActionExecutor: LexerActionExecutor = LexerActionExecutor()
    
    public var requiresFullContext: Bool = true
    
    public var predicates: Array<PredPrediction> = Array<PredPrediction>()
    
    public open func getAltSet (): Set<Integer> {
        return Set<Integer>()
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func equals (o: Object): Bool {
        return true
    }

    public open func toString (): String {
        return ""
    }

    public init() {}
}

class DFAStatePredPrediction {
    var class_out: DFAState
    public init(out: DFAState) {
        class_out = out
    }
    public init() {
        class_out = DFAState()
    }
    public var pred: SemanticContext = SemanticContext()
    
    public var alt: Int32 = 0
    
    public func toString (): String {
        return ""
    }

}



