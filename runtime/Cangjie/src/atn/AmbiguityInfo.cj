package default

from std import collection.*
// import org.antlr.v4.runtime.TokenStream;

open public class AmbiguityInfo <: DecisionEventInfo {

    public var ambigAlts: BitSet = BitSet()
    
    public init (decision: Int32, configs: ATNConfigSet, ambigAlts: BitSet, input: Option<TokenStream>, startIndex: Int32, stopIndex: Int32, fullCtx: Bool){

    }

    public init() {}
}


