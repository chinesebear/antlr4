package default

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.TokenStream;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.dfa.DFAState;
from std import collection.*

open public class ProfilingATNSimulator <: ParserATNSimulator {

    protected let decisions: Array<DecisionInfo> = Array<DecisionInfo>()
    
    protected var numDecisions: Int32 = 0
    
    protected var sllStopIndex: Int32 = 0
    
    protected var llStopIndex: Int32 = 0
    
    protected var currentDecision: Int32 = 0
    
    protected var currentState: DFAState = DFAState()
    
    protected var conflictingAltResolvedBySLL: Int32 = 0
    
    public init (parser: Option<Parser>){

    }

    public open override func adaptivePredict (input: Option<TokenStream>, decision: Int32, outerContext: ParserRuleContext): Int32 {
  //    try {
  //        this._sllStopIndex = -1;
  //        this._llStopIndex = -1;
  //        this.currentDecision = decision;
  //        long start = System.nanoTime();
  //        int alt = super.adaptivePredict(input, decision, outerContext);
  //        long stop = System.nanoTime();
  //        decisions[decision].timeInPrediction += (stop - start);
  //        decisions[decision].invocations++;
  //        int SLL_k = _sllStopIndex - _startIndex + 1;
  //        decisions[decision].SLL_TotalLook += SLL_k;
  //        decisions[decision].SLL_MinLook = decisions[decision].SLL_MinLook == 0 ? SLL_k : Math.min(decisions[decision].SLL_MinLook, SLL_k);
  //        if (SLL_k > decisions[decision].SLL_MaxLook) {
  //            decisions[decision].SLL_MaxLook = SLL_k;
  //            decisions[decision].SLL_MaxLookEvent = new LookaheadEventInfo(decision, null, alt, input, _startIndex, _sllStopIndex, false);
  //        if (_llStopIndex >= 0) {
  //            int LL_k = _llStopIndex - _startIndex + 1;
  //            decisions[decision].LL_TotalLook += LL_k;
  //            decisions[decision].LL_MinLook = decisions[decision].LL_MinLook == 0 ? LL_k : Math.min(decisions[decision].LL_MinLook, LL_k);
  //            if (LL_k > decisions[decision].LL_MaxLook) {
  //                decisions[decision].LL_MaxLook = LL_k;
  //                decisions[decision].LL_MaxLookEvent = new LookaheadEventInfo(decision, null, alt, input, _startIndex, _llStopIndex, true);
  //        return alt;
  //    } finally {
  //        this.currentDecision = -1;

        return 0
    }

    protected open override func getExistingTargetState (previousD: DFAState, t: Int32): DFAState {
  //    _sllStopIndex = _input.index();
  //    DFAState existingTargetState = super.getExistingTargetState(previousD, t);
  //    if (existingTargetState != null) {
  //        decisions[currentDecision].SLL_DFATransitions++;
  //        if (existingTargetState == ERROR) {
  //            decisions[currentDecision].errors.add(new ErrorInfo(currentDecision, previousD.configs, _input, _startIndex, _sllStopIndex, false));
  //    currentState = existingTargetState;
  //    return existingTargetState;

        return DFAState()
    }

    protected open override func computeTargetState (dfa: DFA, previousD: DFAState, t: Int32): DFAState {
  //    DFAState state = super.computeTargetState(dfa, previousD, t);
  //    currentState = state;
  //    return state;

        return DFAState()
    }

    protected open override func computeReachSet (closure: ATNConfigSet, t: Int32, fullCtx: Bool): ATNConfigSet {
  //    if (fullCtx) {
  //        _llStopIndex = _input.index();
  //    ATNConfigSet reachConfigs = super.computeReachSet(closure, t, fullCtx);
  //    if (fullCtx) {
  //        decisions[currentDecision].LL_ATNTransitions++;
  //        if (reachConfigs != null) {
  //        } else {
  //            decisions[currentDecision].errors.add(new ErrorInfo(currentDecision, closure, _input, _startIndex, _llStopIndex, true));
  //    } else {
  //        decisions[currentDecision].SLL_ATNTransitions++;
  //        if (reachConfigs != null) {
  //        } else {
  //            decisions[currentDecision].errors.add(new ErrorInfo(currentDecision, closure, _input, _startIndex, _sllStopIndex, false));
  //    return reachConfigs;

        return ATNConfigSet()
    }

    protected open override func evalSemanticContext (pred: Option<SemanticContext>, parserCallStack: ParserRuleContext, alt: Int32, fullCtx: Bool): Bool {
  //    boolean result = super.evalSemanticContext(pred, parserCallStack, alt, fullCtx);
  //    if (!(pred instanceof SemanticContext.SemanticContextPrecedencePredicate)) {
  //        boolean fullContext = _llStopIndex >= 0;
  //        int stopIndex = fullContext ? _llStopIndex : _sllStopIndex;
  //        decisions[currentDecision].predicateEvals.add(new PredicateEvalInfo(currentDecision, _input, _startIndex, stopIndex, pred, result, alt, fullCtx));
  //    return result;

        return true
    }

    protected open override func reportAttemptingFullContext (dfa: DFA, conflictingAlts: BitSet, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
  //    if (conflictingAlts != null) {
  //        conflictingAltResolvedBySLL = conflictingAlts.nextSetBit(0);
  //    } else {
  //        conflictingAltResolvedBySLL = configs.getAlts().nextSetBit(0);
  //    decisions[currentDecision].LL_Fallback++;
  //    super.reportAttemptingFullContext(dfa, conflictingAlts, configs, startIndex, stopIndex);

        
    }

    protected open override func reportContextSensitivity (dfa: DFA, prediction: Int32, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
  //    if (prediction != conflictingAltResolvedBySLL) {
  //        decisions[currentDecision].contextSensitivities.add(new ContextSensitivityInfo(currentDecision, configs, _input, startIndex, stopIndex));
  //    super.reportContextSensitivity(dfa, prediction, configs, startIndex, stopIndex);

        
    }

    protected open override func reportAmbiguity (dfa: DFA, D: DFAState, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {
  //    int prediction;
  //    if (ambigAlts != null) {
  //        prediction = ambigAlts.nextSetBit(0);
  //    } else {
  //        prediction = configs.getAlts().nextSetBit(0);
  //    if (configs.fullCtx && prediction != conflictingAltResolvedBySLL) {
  //        decisions[currentDecision].contextSensitivities.add(new ContextSensitivityInfo(currentDecision, configs, _input, startIndex, stopIndex));
  //    decisions[currentDecision].ambiguities.add(new AmbiguityInfo(currentDecision, configs, ambigAlts, _input, startIndex, stopIndex, configs.fullCtx));
  //    super.reportAmbiguity(dfa, D, startIndex, stopIndex, exact, ambigAlts, configs);

        
    }

    public open func getDecisionInfo (): Array<DecisionInfo> {
  //    return decisions;

        return Array<DecisionInfo>()
    }

    public open func getCurrentState (): DFAState {
  //    return currentState;

        return DFAState()
    }

    public init() {}
}


