package atn

// import org.antlr.v4.runtime.BailErrorStrategy;
// import org.antlr.v4.runtime.FailedPredicateException;
// import org.antlr.v4.runtime.IntStream;
// import org.antlr.v4.runtime.NoViableAltException;
// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.TokenStream;
// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.dfa.DFAState;
from std import collection.*
// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Pair;
// import java.util.Collection;
// import static org.antlr.v4.runtime.atn.ATNState.BLOCK_END;

open public class ParserATNSimulator <: ATNSimulator {

    public static let debug: Bool = true
    
    public static let debug_list_atn_decisions: Bool = true
    
    public static let dfa_debug: Bool = true
    
    public static let retry_debug: Bool = true
    
    public static let TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT: Bool = true
    
    protected let parser: Parser = Parser()
    
    public let decisionToDFA: Array<DFA> = Array<DFA>()
    
    private var mode: PredictionMode = PredictionMode()
    
    protected var mergeCache: DoubleKeyMap<PredictionContext, PredictionContext, PredictionContext> = DoubleKeyMap<PredictionContext, PredictionContext, PredictionContext>()
    
    protected var input: TokenStream = TokenStream()
    
    protected var startIndex: Int32 = 0
    
    protected var outerContext: ParserRuleContext = ParserRuleContext()
    
    protected var dfa: DFA = DFA()
    
    public init (atn: ATN, decisionToDFA: Array<DFA>, sharedContextCache: PredictionContextCache){

    }

    public init (parser: Parser, atn: ATN, decisionToDFA: Array<DFA>, sharedContextCache: PredictionContextCache){

    }

    public open override func reset (): Unit {
        
    }

    public open override func clearDFA (): Unit {
        
    }

    public open func adaptivePredict (input: TokenStream, decision: Int32, outerContext: ParserRuleContext): Int32 {
        return 0
    }

    protected open func execATN (dfa: DFA, s0: DFAState, input: TokenStream, startIndex: Int32, outerContext: ParserRuleContext): Int32 {
        return 0
    }

    protected open func getExistingTargetState (previousD: DFAState, t: Int32): DFAState {
        return DFAState()
    }

    protected open func computeTargetState (dfa: DFA, previousD: DFAState, t: Int32): DFAState {
        return DFAState()
    }

    protected open func predicateDFAState (dfaState: DFAState, decisionState: DecisionState): Unit {
        
    }

    protected open func execATNWithFullContext (dfa: DFA, D: DFAState, s0: ATNConfigSet, input: TokenStream, startIndex: Int32, outerContext: ParserRuleContext): Int32 {
        return 0
    }

    protected open func computeReachSet (closure: ATNConfigSet, t: Int32, fullCtx: Bool): ATNConfigSet {
        return ATNConfigSet()
    }

    protected open func removeAllConfigsNotInRuleStopState (configs: ATNConfigSet, lookToEndOfRule: Bool): ATNConfigSet {
        return ATNConfigSet()
    }

    protected open func computeStartState (p: ATNState, ctx: RuleContext, fullCtx: Bool): ATNConfigSet {
        return ATNConfigSet()
    }

    protected open func applyPrecedenceFilter (configs: ATNConfigSet): ATNConfigSet {
        return ATNConfigSet()
    }

    protected open func getReachableTarget (trans: Transition, ttype: Int32): ATNState {
        return ATNState()
    }

    protected open func getPredsForAmbigAlts (ambigAlts: BitSet, configs: ATNConfigSet, nalts: Int32): Array<SemanticContext> {
        return Array<SemanticContext>()
    }

    protected open func getPredicatePredictions (ambigAlts: BitSet, altToPred: Array<SemanticContext>): Array<DFAStatePredPrediction> {
        return Array<DFAStatePredPrediction>()
    }

    protected open func getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule (configs: ATNConfigSet, outerContext: ParserRuleContext): Int32 {
        return 0
    }

    protected open func getAltThatFinishedDecisionEntryRule (configs: ATNConfigSet): Int32 {
        return 0
    }

    protected open func splitAccordingToSemanticValidity (configs: ATNConfigSet, outerContext: ParserRuleContext): Pair<ATNConfigSet, ATNConfigSet> {
        return Pair<ATNConfigSet, ATNConfigSet>()
    }

    protected open func evalSemanticContext (predPredictions: Array<DFAStatePredPrediction>, outerContext: ParserRuleContext, complete: Bool): BitSet {
        return BitSet()
    }

    protected open func evalSemanticContext (pred: SemanticContext, parserCallStack: ParserRuleContext, alt: Int32, fullCtx: Bool): Bool {
        return true
    }

    protected open func closure (config: ATNConfig, configs: ATNConfigSet, closureBusy: Set<ATNConfig>, collectPredicates: Bool, fullCtx: Bool, treatEofAsEpsilon: Bool): Unit {
        
    }

    protected open func closureCheckingStopState (config: ATNConfig, configs: ATNConfigSet, closureBusy: Set<ATNConfig>, collectPredicates: Bool, fullCtx: Bool, depth: Int32, treatEofAsEpsilon: Bool): Unit {
        
    }

    protected open func closure_ (config: ATNConfig, configs: ATNConfigSet, closureBusy: Set<ATNConfig>, collectPredicates: Bool, fullCtx: Bool, depth: Int32, treatEofAsEpsilon: Bool): Unit {
        
    }

    protected open func canDropLoopEntryEdgeInLeftRecursiveRule (config: ATNConfig): Bool {
        return true
    }

    public open func getRuleName (index: Int32): String {
        return ""
    }

    protected open func getEpsilonTarget (config: ATNConfig, t: Transition, collectPredicates: Bool, inContext: Bool, fullCtx: Bool, treatEofAsEpsilon: Bool): ATNConfig {
        return ATNConfig()
    }

    protected open func actionTransition (config: ATNConfig, t: ActionTransition): ATNConfig {
        return ATNConfig()
    }

    public open func precedenceTransition (config: ATNConfig, pt: PrecedencePredicateTransition, collectPredicates: Bool, inContext: Bool, fullCtx: Bool): ATNConfig {
        return ATNConfig()
    }

    protected open func predTransition (config: ATNConfig, pt: PredicateTransition, collectPredicates: Bool, inContext: Bool, fullCtx: Bool): ATNConfig {
        return ATNConfig()
    }

    protected open func ruleTransition (config: ATNConfig, t: RuleTransition): ATNConfig {
        return ATNConfig()
    }

    protected open func getConflictingAlts (configs: ATNConfigSet): BitSet {
        return BitSet()
    }

    protected open func getConflictingAltsOrUniqueAlt (configs: ATNConfigSet): BitSet {
        return BitSet()
    }

    public open func getTokenName (t: Int32): String {
        return ""
    }

    public open func getLookaheadName (input: TokenStream): String {
        return ""
    }

    public open func dumpDeadEndConfigs (nvae: NoViableAltException): Unit {
        
    }

    protected open func noViableAlt (input: TokenStream, outerContext: ParserRuleContext, configs: ATNConfigSet, startIndex: Int32): NoViableAltException {
        return NoViableAltException()
    }

    protected static func getUniqueAlt (configs: ATNConfigSet): Int32 {
        return 0
    }

    protected open func addDFAEdge (dfa: DFA, `from`: DFAState, t: Int32, to: DFAState): DFAState {
        return DFAState()
    }

    protected open func addDFAState (dfa: DFA, D: DFAState): DFAState {
        return DFAState()
    }

    protected open func reportAttemptingFullContext (dfa: DFA, conflictingAlts: BitSet, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
        
    }

    protected open func reportContextSensitivity (dfa: DFA, prediction: Int32, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
        
    }

    protected open func reportAmbiguity (dfa: DFA, D: DFAState, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {
        
    }

    public open func setPredictionMode (mode: PredictionMode): Unit {
        
    }

    public open func getPredictionMode (): PredictionMode {
        return PredictionMode()
    }

    public open func getParser (): Parser {
        return Parser()
    }

    public static func getSafeEnv (envName: String): String {
        return ""
    }

    public init() {}
}


