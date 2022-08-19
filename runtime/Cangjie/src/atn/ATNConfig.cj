package default

// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.misc.MurmurHash;

open public class ATNConfig {

    private static let SUPPRESS_PRECEDENCE_FILTER: Int32 = 1073741824
    
    public let state: Option<ATNState> = Option<ATNState>.None
    
    public let alt: Int32 = 0
    
    public var context: Option<PredictionContext> = Option<PredictionContext>.None
    
    public var reachesIntoOuterContext: Int32 = 0
    
    public let semanticContext: Option<SemanticContext> = Option<SemanticContext>.None
    
    public init (old: ATNConfig){

    }

    public init (state: Option<ATNState>, alt: Int32, context: Option<PredictionContext>){

    }

    public init (state: Option<ATNState>, alt: Int32, context: Option<PredictionContext>, semanticContext: Option<SemanticContext>){

    }

    public init (c: ATNConfig, state: Option<ATNState>){

    }

    public init (c: ATNConfig, state: Option<ATNState>, semanticContext: Option<SemanticContext>){

    }

    public init (c: ATNConfig, semanticContext: Option<SemanticContext>){

    }

    public init (c: ATNConfig, state: Option<ATNState>, context: Option<PredictionContext>){

    }

    public init (c: ATNConfig, state: Option<ATNState>, context: Option<PredictionContext>, semanticContext: Option<SemanticContext>){

    }

    public open func getOuterContextDepth (): Int32 {
  //    return reachesIntoOuterContext & ~SUPPRESS_PRECEDENCE_FILTER;

        return 0
    }

    public open func isPrecedenceFilterSuppressed (): Bool {
  //    return (reachesIntoOuterContext & SUPPRESS_PRECEDENCE_FILTER) != 0;

        return true
    }

    public open func setPrecedenceFilterSuppressed (value: Bool): Unit {
  //    if (value) {
  //        this.reachesIntoOuterContext |= 1073741824;
  //    } else {
  //        this.reachesIntoOuterContext &= ~SUPPRESS_PRECEDENCE_FILTER;

        
    }

    public open func equals (o: Object): Bool {
  //    if (!(o instanceof ATNConfig)) {
  //        return false;
  //    return this.equals((ATNConfig)o);

        return true
    }

    public open func equals (other: ATNConfig): Bool {
  //    if (this == other) {
  //        return true;
  //    } else if (other == null) {
  //        return false;
  //    return this.state.stateNumber == other.state.stateNumber && this.alt == other.alt && (this.context == other.context || (this.context != null && this.context.equals(other.context))) && this.semanticContext.equals(other.semanticContext) && this.isPrecedenceFilterSuppressed() == other.isPrecedenceFilterSuppressed();

        return true
    }

    public open func hashCode (): Int32 {
  //    int hashCode = MurmurHash.initialize(7);
  //    hashCode = MurmurHash.update(hashCode, state.stateNumber);
  //    hashCode = MurmurHash.update(hashCode, alt);
  //    hashCode = MurmurHash.update(hashCode, context);
  //    hashCode = MurmurHash.update(hashCode, semanticContext);
  //    hashCode = MurmurHash.finish(hashCode, 4);
  //    return hashCode;

        return 0
    }

    public open func toString (): String {
  //    return toString(null, true);

        return ""
    }

    public open func toString (recog: Recognizer<T, T>, showAlt: Bool): String {
  //    StringBuilder buf = new StringBuilder();
  //    buf.append('(');
  //    buf.append(state);
  //    if (showAlt) {
  //        buf.append(",");
  //        buf.append(alt);
  //    if (context != null) {
  //        buf.append(",[");
  //        buf.append(context.toString());
  //        buf.append("]");
  //    if (semanticContext != null && semanticContext != SemanticContext.NONE) {
  //        buf.append(",");
  //        buf.append(semanticContext);
  //    if (getOuterContextDepth() > 0) {
  //        buf.append(",up=").append(getOuterContextDepth());
  //    buf.append(')');
  //    return buf.toString();

        return ""
    }

    public init() {}
}


