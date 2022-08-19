package default

// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNConfig;
from std import collection.*
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
    
    public var predicates: Array<DFAStatePredPrediction> = Array<DFAStatePredPrediction>()
    
    public open func getAltSet (): Set<Integer> {
  //    Set<Integer> alts = new HashSet<Integer>();
  //    if (configs != null) {
  //        for (ATNConfig c : configs) {
  //            alts.add(c.alt);
  //    if (alts.isEmpty()) return null;
  //    return alts;

        return Set<Integer>()
    }

    public open func hashCodeFunc (): Int32 {
  //    int hash = MurmurHash.initialize(7);
  //    hash = MurmurHash.update(hash, configs.hashCode());
  //    hash = MurmurHash.finish(hash, 1);
  //    return hash;

        return 0
    }

    public open func equals (o: Object): Bool {
  //    if (this == o) return true;
  //    if (!(o instanceof DFAState)) {
  //        return false;
  //    DFAState other = (DFAState)o;
  //    boolean sameSet = this.configs.equals(other.configs);
  //    return sameSet;

        return true
    }

    public open func toString (): String {
  //    StringBuilder buf = new StringBuilder();
  //    buf.append(stateNumber).append(":").append(configs);
  //    if (isAcceptState) {
  //        buf.append("=>");
  //        if (predicates != null) {
  //            buf.append(Arrays.toString(predicates));
  //        } else {
  //            buf.append(prediction);
  //    return buf.toString();

        return ""
    }

    public init() {}
}

public class DFAStatePredPrediction {
    var class_out: DFAState
    public init(out: DFAState) {
        class_out = out
    }
    public init() {
        class_out = DFAState()
    }
    public var pred: Option<SemanticContext> = Option<SemanticContext>.None
    
    public var alt: Int32 = 0
    
    public func toString (): String {
  //    return "(" + pred + ", " + alt + ")";

        return ""
    }

}



