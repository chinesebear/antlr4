package default


public class WildcardTransition <: Transition {

    public init (target: Option<ATNState>){

    }

    public func getSerializationType (): Int32 {
  //    return WILDCARD;

        return 0
    }

    public func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return symbol >= minVocabSymbol && symbol <= maxVocabSymbol;

        return true
    }

    public func toString (): String {
  //    return ".";

        return ""
    }

    public init() {}
}


