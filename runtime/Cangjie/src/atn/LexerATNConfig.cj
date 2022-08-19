package default

// import org.antlr.v4.runtime.misc.MurmurHash;
// import org.antlr.v4.runtime.misc.ObjectEqualityComparator;

open public class LexerATNConfig <: ATNConfig {

    private let lexerActionExecutor: LexerActionExecutor = LexerActionExecutor()
    
    private let passedThroughNonGreedyDecision: Bool = true
    
    public init (state: Option<ATNState>, alt: Int32, context: Option<PredictionContext>){

    }

    public init (state: Option<ATNState>, alt: Int32, context: Option<PredictionContext>, lexerActionExecutor: LexerActionExecutor){

    }

    public init (c: LexerATNConfig, state: Option<ATNState>){

    }

    public init (c: LexerATNConfig, state: Option<ATNState>, lexerActionExecutor: LexerActionExecutor){

    }

    public init (c: LexerATNConfig, state: Option<ATNState>, context: Option<PredictionContext>){

    }

    public open func getLexerActionExecutor (): LexerActionExecutor {
  //    return lexerActionExecutor;

        return LexerActionExecutor()
    }

    public open func hasPassedThroughNonGreedyDecision (): Bool {
  //    return passedThroughNonGreedyDecision;

        return true
    }

    public open func hashCodeFunc (): Int32 {
  //    int hashCode = MurmurHash.initialize(7);
  //    hashCode = MurmurHash.update(hashCode, state.stateNumber);
  //    hashCode = MurmurHash.update(hashCode, alt);
  //    hashCode = MurmurHash.update(hashCode, context);
  //    hashCode = MurmurHash.update(hashCode, semanticContext);
  //    hashCode = MurmurHash.update(hashCode, passedThroughNonGreedyDecision ? 1 : 0);
  //    hashCode = MurmurHash.update(hashCode, lexerActionExecutor);
  //    hashCode = MurmurHash.finish(hashCode, 6);
  //    return hashCode;

        return 0
    }

    public open override func equals (other: ATNConfig): Bool {
  //    if (this == other) {
  //        return true;
  //    } else if (!(other instanceof LexerATNConfig)) {
  //        return false;
  //    LexerATNConfig lexerOther = (LexerATNConfig)other;
  //    if (passedThroughNonGreedyDecision != lexerOther.passedThroughNonGreedyDecision) {
  //        return false;
  //    if (!ObjectEqualityComparator.INSTANCE.equals(lexerActionExecutor, lexerOther.lexerActionExecutor)) {
  //        return false;
  //    return super.equals(other);

        return true
    }

    private static func checkNonGreedyDecision (source: LexerATNConfig, target: Option<ATNState>): Bool {
  //    return source.passedThroughNonGreedyDecision || target instanceof Option<DecisionState> && ((Option<DecisionState>)target).nonGreedy;

        return true
    }

    public init() {}
}


