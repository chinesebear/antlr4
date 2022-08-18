package default

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
    
    protected let parser: Option<Parser> = Option<Parser>.None
    
    public let decisionToDFA: Array<DFA> = Array<DFA>()
    
    private var mode: PredictionMode = PredictionMode.SLL
    
    protected var mergeCache: DoubleKeyMap<Option<PredictionContext>, Option<PredictionContext>, Option<PredictionContext>> = DoubleKeyMap<Option<PredictionContext>, Option<PredictionContext>, Option<PredictionContext>>()
    
    protected var input: Option<TokenStream> = Option<TokenStream>.None
    
    protected var startIndex: Int32 = 0
    
    protected var outerContext: ParserRuleContext = ParserRuleContext()
    
    protected var dfa: DFA = DFA()
    
    public init (atn: ATN, decisionToDFA: Array<DFA>, sharedContextCache: PredictionContextCache){

    }

    public init (parser: Option<Parser>, atn: ATN, decisionToDFA: Array<DFA>, sharedContextCache: PredictionContextCache){

    }

    public open func reset (): Unit {

        
    }

    public open func clearDFA (): Unit {
  //    for (int d = 0; d < decisionToDFA.length; d++) {
  //        decisionToDFA[d] = new DFA(atn.getDecisionState(d), d);

        
    }

    public open func adaptivePredict (input: Option<TokenStream>, decision: Int32, outerContext: ParserRuleContext): Int32 {
  //    if (debug || debug_list_atn_decisions) {
  //        System.out.println("adaptivePredict decision " + decision + " exec LA(1)==" + getLookaheadName(input) + " line " + input.LT(1).getLine() + ":" + input.LT(1).getCharPositionInLine());
  //    _input = input;
  //    _startIndex = input.index();
  //    _outerContext = outerContext;
  //    DFA dfa = decisionToDFA[decision];
  //    _dfa = dfa;
  //    int m = input.mark();
  //    int index = _startIndex;
  //    try {
  //        DFAState s0;
  //        if (dfa.isPrecedenceDfa()) {
  //            s0 = dfa.getPrecedenceStartState(parser.getPrecedence());
  //        } else {
  //            s0 = dfa.s0;
  //        if (s0 == null) {
  //            if (outerContext == null) outerContext = ParserRuleContext.EMPTY;
  //            if (debug || debug_list_atn_decisions) {
  //                System.out.println("predictATN decision " + dfa.decision + " exec LA(1)==" + getLookaheadName(input) + ", outerContext=" + outerContext.toString(parser));
  //            boolean fullCtx = false;
  //            ATNConfigSet s0_closure = computeStartState(dfa.atnStartState, ParserRuleContext.EMPTY, fullCtx);
  //            if (dfa.isPrecedenceDfa()) {
  //                dfa.s0.configs = s0_closure;
  //                s0_closure = applyPrecedenceFilter(s0_closure);
  //                s0 = addDFAState(dfa, new DFAState(s0_closure));
  //                dfa.setPrecedenceStartState(parser.getPrecedence(), s0);
  //            } else {
  //                s0 = addDFAState(dfa, new DFAState(s0_closure));
  //                dfa.s0 = s0;
  //        int alt = execATN(dfa, s0, input, index, outerContext);
  //        if (debug) System.out.println("DFA after predictATN: " + dfa.toString(parser.getVocabulary()));
  //        return alt;
  //    } finally {
  //        mergeCache = null;
  //        _dfa = null;
  //        input.seek(index);
  //        input.release(m);

        return 0
    }

    protected open func execATN (dfa: DFA, s0: DFAState, input: Option<TokenStream>, startIndex: Int32, outerContext: ParserRuleContext): Int32 {
  //    if (debug || debug_list_atn_decisions) {
  //        System.out.println("execATN decision " + dfa.decision + " exec LA(1)==" + getLookaheadName(input) + " line " + input.LT(1).getLine() + ":" + input.LT(1).getCharPositionInLine());
  //    DFAState previousD = s0;
  //    if (debug) System.out.println("s0 = " + s0);
  //    int t = input.LA(1);
  //    while (true) {
  //        DFAState D = getExistingTargetState(previousD, t);
  //        if (D == null) {
  //            D = computeTargetState(dfa, previousD, t);
  //        if (D == ERROR) {
  //            NoViableAltException e = noViableAlt(input, outerContext, previousD.configs, startIndex);
  //            input.seek(startIndex);
  //            int alt = getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(previousD.configs, outerContext);
  //            if (alt != ATN.INVALID_ALT_NUMBER) {
  //                return alt;
  //            throw e;
  //        if (D.requiresFullContext && mode != PredictionMode.SLL) {
  //            BitSet conflictingAlts = D.configs.conflictingAlts;
  //            if (D.predicates != null) {
  //                if (debug) System.out.println("DFA state has preds in DFA sim LL failover");
  //                int conflictIndex = input.index();
  //                if (conflictIndex != startIndex) {
  //                    input.seek(startIndex);
  //                conflictingAlts = evalSemanticContext(D.predicates, outerContext, true);
  //                if (conflictingAlts.cardinality() == 1) {
  //                    if (debug) System.out.println("Full LL avoided");
  //                    return conflictingAlts.nextSetBit(0);
  //                if (conflictIndex != startIndex) {
  //                    input.seek(conflictIndex);
  //            if (dfa_debug) System.out.println("ctx sensitive state " + outerContext + " in " + D);
  //            boolean fullCtx = true;
  //            ATNConfigSet s0_closure = computeStartState(dfa.atnStartState, outerContext, fullCtx);
  //            reportAttemptingFullContext(dfa, conflictingAlts, D.configs, startIndex, input.index());
  //            int alt = execATNWithFullContext(dfa, D, s0_closure, input, startIndex, outerContext);
  //            return alt;
  //        if (D.isAcceptState) {
  //            if (D.predicates == null) {
  //                return D.prediction;
  //            int stopIndex = input.index();
  //            input.seek(startIndex);
  //            BitSet alts = evalSemanticContext(D.predicates, outerContext, true);
  //            switch (alts.cardinality()) {
  //            case 0: 
  //                throw noViableAlt(input, outerContext, D.configs, startIndex);
  //            
  //            case 1: 
  //                return alts.nextSetBit(0);
  //            
  //            default: 
  //                reportAmbiguity(dfa, D, startIndex, stopIndex, false, alts, D.configs);
  //                return alts.nextSetBit(0);
  //            
  //        previousD = D;
  //        if (t != IntStream.EOF) {
  //            input.consume();
  //            t = input.LA(1);

        return 0
    }

    protected open func getExistingTargetState (previousD: DFAState, t: Int32): DFAState {
  //    DFAState[] edges = previousD.edges;
  //    if (edges == null || t + 1 < 0 || t + 1 >= edges.length) {
  //        return null;
  //    return edges[t + 1];

        return DFAState()
    }

    protected open func computeTargetState (dfa: DFA, previousD: DFAState, t: Int32): DFAState {
  //    ATNConfigSet reach = computeReachSet(previousD.configs, t, false);
  //    if (reach == null) {
  //        addDFAEdge(dfa, previousD, t, ERROR);
  //        return ERROR;
  //    DFAState D = new DFAState(reach);
  //    int predictedAlt = getUniqueAlt(reach);
  //    if (debug) {
  //        Collection<BitSet> altSubSets = PredictionMode.getConflictingAltSubsets(reach);
  //        System.out.println("SLL altSubSets=" + altSubSets + ", configs=" + reach + ", predict=" + predictedAlt + ", allSubsetsConflict=" + PredictionMode.allSubsetsConflict(altSubSets) + ", conflictingAlts=" + getConflictingAlts(reach));
  //    if (predictedAlt != ATN.INVALID_ALT_NUMBER) {
  //        D.isAcceptState = true;
  //        D.configs.uniqueAlt = predictedAlt;
  //        D.prediction = predictedAlt;
  //    } else if (PredictionMode.hasSLLConflictTerminatingPrediction(mode, reach)) {
  //        D.configs.conflictingAlts = getConflictingAlts(reach);
  //        D.requiresFullContext = true;
  //        D.isAcceptState = true;
  //        D.prediction = D.configs.conflictingAlts.nextSetBit(0);
  //    if (D.isAcceptState && D.configs.hasSemanticContext) {
  //        predicateDFAState(D, atn.getDecisionState(dfa.decision));
  //        if (D.predicates != null) {
  //            D.prediction = ATN.INVALID_ALT_NUMBER;
  //    D = addDFAEdge(dfa, previousD, t, D);
  //    return D;

        return DFAState()
    }

    protected open func predicateDFAState (dfaState: DFAState, decisionState: Option<DecisionState>): Unit {
  //    int nalts = decisionState.getNumberOfTransitions();
  //    BitSet altsToCollectPredsFrom = getConflictingAltsOrUniqueAlt(dfaState.configs);
  //    SemanticContext[] altToPred = getPredsForAmbigAlts(altsToCollectPredsFrom, dfaState.configs, nalts);
  //    if (altToPred != null) {
  //        dfaState.predicates = getPredicatePredictions(altsToCollectPredsFrom, altToPred);
  //        dfaState.prediction = ATN.INVALID_ALT_NUMBER;
  //    } else {
  //        dfaState.prediction = altsToCollectPredsFrom.nextSetBit(0);

        
    }

    protected open func execATNWithFullContext (dfa: DFA, D: DFAState, s0: ATNConfigSet, input: Option<TokenStream>, startIndex: Int32, outerContext: ParserRuleContext): Int32 {
  //    if (debug || debug_list_atn_decisions) {
  //        System.out.println("execATNWithFullContext " + s0);
  //    boolean fullCtx = true;
  //    boolean foundExactAmbig = false;
  //    ATNConfigSet reach = null;
  //    ATNConfigSet previous = s0;
  //    input.seek(startIndex);
  //    int t = input.LA(1);
  //    int predictedAlt;
  //    while (true) {
  //        reach = computeReachSet(previous, t, fullCtx);
  //        if (reach == null) {
  //            NoViableAltException e = noViableAlt(input, outerContext, previous, startIndex);
  //            input.seek(startIndex);
  //            int alt = getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule(previous, outerContext);
  //            if (alt != ATN.INVALID_ALT_NUMBER) {
  //                return alt;
  //            throw e;
  //        Collection<BitSet> altSubSets = PredictionMode.getConflictingAltSubsets(reach);
  //        if (debug) {
  //            System.out.println("LL altSubSets=" + altSubSets + ", predict=" + PredictionMode.getUniqueAlt(altSubSets) + ", resolvesToJustOneViableAlt=" + PredictionMode.resolvesToJustOneViableAlt(altSubSets));
  //        reach.uniqueAlt = getUniqueAlt(reach);
  //        if (reach.uniqueAlt != ATN.INVALID_ALT_NUMBER) {
  //            predictedAlt = reach.uniqueAlt;
  //            break;
  //        if (mode != PredictionMode.LL_EXACT_AMBIG_DETECTION) {
  //            predictedAlt = PredictionMode.resolvesToJustOneViableAlt(altSubSets);
  //            if (predictedAlt != ATN.INVALID_ALT_NUMBER) {
  //                break;
  //        } else {
  //            if (PredictionMode.allSubsetsConflict(altSubSets) && PredictionMode.allSubsetsEqual(altSubSets)) {
  //                foundExactAmbig = true;
  //                predictedAlt = PredictionMode.getSingleViableAlt(altSubSets);
  //                break;
  //        previous = reach;
  //        if (t != IntStream.EOF) {
  //            input.consume();
  //            t = input.LA(1);
  //    if (reach.uniqueAlt != ATN.INVALID_ALT_NUMBER) {
  //        reportContextSensitivity(dfa, predictedAlt, reach, startIndex, input.index());
  //        return predictedAlt;
  //    reportAmbiguity(dfa, D, startIndex, input.index(), foundExactAmbig, reach.getAlts(), reach);
  //    return predictedAlt;

        return 0
    }

    protected open func computeReachSet (closure: ATNConfigSet, t: Int32, fullCtx: Bool): ATNConfigSet {
  //    if (debug) System.out.println("in computeReachSet, starting closure: " + closure);
  //    if (mergeCache == null) {
  //        mergeCache = new DoubleKeyMap<PredictionContext, PredictionContext, PredictionContext>();
  //    ATNConfigSet intermediate = new ATNConfigSet(fullCtx);
  //    List<ATNConfig> skippedStopStates = null;
  //    for (ATNConfig c : closure) {
  //        if (debug) System.out.println("testing " + getTokenName(t) + " at " + c.toString());
  //        if (c.state instanceof RuleStopState) {
  //            assert c.context.isEmpty();
  //            if (fullCtx || t == IntStream.EOF) {
  //                if (skippedStopStates == null) {
  //                    skippedStopStates = new ArrayList<ATNConfig>();
  //                skippedStopStates.add(c);
  //            continue;
  //        int n = c.state.getNumberOfTransitions();
  //        for (int ti = 0; ti < n; ti++) {
  //            Transition trans = c.state.transition(ti);
  //            ATNState target = getReachableTarget(trans, t);
  //            if (target != null) {
  //                intermediate.add(new ATNConfig(c, target), mergeCache);
  //    ATNConfigSet reach = null;
  //    if (skippedStopStates == null && t != Token.EOF) {
  //        if (intermediate.size() == 1) {
  //            reach = intermediate;
  //        } else if (getUniqueAlt(intermediate) != ATN.INVALID_ALT_NUMBER) {
  //            reach = intermediate;
  //    if (reach == null) {
  //        reach = new ATNConfigSet(fullCtx);
  //        Set<ATNConfig> closureBusy = new HashSet<ATNConfig>();
  //        boolean treatEofAsEpsilon = t == Token.EOF;
  //        for (ATNConfig c : intermediate) {
  //            closure(c, reach, closureBusy, false, fullCtx, treatEofAsEpsilon);
  //    if (t == IntStream.EOF) {
  //        reach = removeAllConfigsNotInRuleStopState(reach, reach == intermediate);
  //    if (skippedStopStates != null && (!fullCtx || !PredictionMode.hasConfigInRuleStopState(reach))) {
  //        assert !skippedStopStates.isEmpty();
  //        for (ATNConfig c : skippedStopStates) {
  //            reach.add(c, mergeCache);
  //    if (reach.isEmpty()) return null;
  //    return reach;

        return ATNConfigSet()
    }

    protected open func removeAllConfigsNotInRuleStopState (configs: ATNConfigSet, lookToEndOfRule: Bool): ATNConfigSet {
  //    if (PredictionMode.allConfigsInRuleStopStates(configs)) {
  //        return configs;
  //    ATNConfigSet result = new ATNConfigSet(configs.fullCtx);
  //    for (ATNConfig config : configs) {
  //        if (config.state instanceof RuleStopState) {
  //            result.add(config, mergeCache);
  //            continue;
  //        if (lookToEndOfRule && config.state.onlyHasEpsilonTransitions()) {
  //            IntervalSet nextTokens = atn.nextTokens(config.state);
  //            if (nextTokens.contains(Token.EPSILON)) {
  //                ATNState endOfRuleState = atn.ruleToStopState[config.state.ruleIndex];
  //                result.add(new ATNConfig(config, endOfRuleState), mergeCache);
  //    return result;

        return ATNConfigSet()
    }

    protected open func computeStartState (p: Option<ATNState>, ctx: RuleContext, fullCtx: Bool): ATNConfigSet {
  //    Option<PredictionContext> initialContext = //    Option<PredictionContext> initialContext()
  //    ATNConfigSet configs = new ATNConfigSet(fullCtx);
  //    for (int i = 0; i < p.getNumberOfTransitions(); i++) {
  //        ATNState target = p.transition(i).target;
  //        ATNConfig c = new ATNConfig(target, i + 1, initialContext);
  //        Set<ATNConfig> closureBusy = new HashSet<ATNConfig>();
  //        closure(c, configs, closureBusy, true, fullCtx, false);
  //    return configs;

        return ATNConfigSet()
    }

    protected open func applyPrecedenceFilter (configs: ATNConfigSet): ATNConfigSet {
  //    Map<Integer, PredictionContext> statesFromAlt1 = new HashMap<Integer, PredictionContext>();
  //    ATNConfigSet configSet = new ATNConfigSet(configs.fullCtx);
  //    for (ATNConfig config : configs) {
  //        if (config.alt != 1) {
  //            continue;
  //        SemanticContext updatedContext = config.semanticContext.evalPrecedence(parser, _outerContext);
  //        if (updatedContext == null) {
  //            continue;
  //        statesFromAlt1.put(config.state.stateNumber, config.context);
  //        if (updatedContext != config.semanticContext) {
  //            configSet.add(new ATNConfig(config, updatedContext), mergeCache);
  //        } else {
  //            configSet.add(config, mergeCache);
  //    for (ATNConfig config : configs) {
  //        if (config.alt == 1) {
  //            continue;
  //        if (!config.isPrecedenceFilterSuppressed()) {
  //            PredictionContext context = statesFromAlt1.get(config.state.stateNumber);
  //            if (context != null && context.equals(config.context)) {
  //                continue;
  //        configSet.add(config, mergeCache);
  //    return configSet;

        return ATNConfigSet()
    }

    protected open func getReachableTarget (trans: Option<Transition>, ttype: Int32): Option<ATNState> {
  //    if (trans.matches(ttype, 0, atn.maxTokenType)) {
  //        return trans.target;
  //    return null;

        return Option<ATNState>.None
    }

    protected open func getPredsForAmbigAlts (ambigAlts: BitSet, configs: ATNConfigSet, nalts: Int32): Array<Option<SemanticContext>> {
  //    SemanticContext[] altToPred = new SemanticContext[nalts + 1];
  //    for (ATNConfig c : configs) {
  //        if (ambigAlts.get(c.alt)) {
  //            altToPred[c.alt] = SemanticContext.or(altToPred[c.alt], c.semanticContext);
  //    int nPredAlts = 0;
  //    for (int i = 1; i <= nalts; i++) {
  //        if (altToPred[i] == null) {
  //            altToPred[i] = SemanticContext.NONE;
  //        } else if (altToPred[i] != SemanticContext.NONE) {
  //            nPredAlts++;
  //    if (nPredAlts == 0) altToPred = null;
  //    if (debug) System.out.println("getPredsForAmbigAlts result " + Arrays.toString(altToPred));
  //    return altToPred;

        return Array<Option<SemanticContext>>()
    }

    protected open func getPredicatePredictions (ambigAlts: BitSet, altToPred: Array<Option<SemanticContext>>): Array<DFAStatePredPrediction> {
  //    List<DFAState.PredPrediction> pairs = new ArrayList<DFAState.PredPrediction>();
  //    boolean containsPredicate = false;
  //    for (int i = 1; i < altToPred.length; i++) {
  //        SemanticContext pred = altToPred[i];
  //        assert pred != null;
  //        if (ambigAlts != null && ambigAlts.get(i)) {
  //            pairs.add(new DFAState.PredPrediction(pred, i));
  //        if (pred != SemanticContext.NONE) containsPredicate = true;
  //    if (!containsPredicate) {
  //        return null;
  //    return pairs.toArray(new DFAState.PredPrediction[0]);

        return Array<DFAStatePredPrediction>()
    }

    protected open func getSynValidOrSemInvalidAltThatFinishedDecisionEntryRule (configs: ATNConfigSet, outerContext: ParserRuleContext): Int32 {
  //    Pair<ATNConfigSet, ATNConfigSet> sets = splitAccordingToSemanticValidity(configs, outerContext);
  //    ATNConfigSet semValidConfigs = sets.a;
  //    ATNConfigSet semInvalidConfigs = sets.b;
  //    int alt = getAltThatFinishedDecisionEntryRule(semValidConfigs);
  //    if (alt != ATN.INVALID_ALT_NUMBER) {
  //        return alt;
  //    if (semInvalidConfigs.size() > 0) {
  //        alt = getAltThatFinishedDecisionEntryRule(semInvalidConfigs);
  //        if (alt != ATN.INVALID_ALT_NUMBER) {
  //            return alt;
  //    return ATN.INVALID_ALT_NUMBER;

        return 0
    }

    protected open func getAltThatFinishedDecisionEntryRule (configs: ATNConfigSet): Int32 {
  //    IntervalSet alts = new IntervalSet();
  //    for (ATNConfig c : configs) {
  //        if (c.getOuterContextDepth() > 0 || (c.state instanceof RuleStopState && c.context.hasEmptyPath())) {
  //            alts.add(c.alt);
  //    if (alts.size() == 0) return ATN.INVALID_ALT_NUMBER;
  //    return alts.getMinElement();

        return 0
    }

    protected open func splitAccordingToSemanticValidity (configs: ATNConfigSet, outerContext: ParserRuleContext): Pair<ATNConfigSet, ATNConfigSet> {
  //    ATNConfigSet succeeded = new ATNConfigSet(configs.fullCtx);
  //    ATNConfigSet failed = new ATNConfigSet(configs.fullCtx);
  //    for (ATNConfig c : configs) {
  //        if (c.semanticContext != SemanticContext.NONE) {
  //            boolean predicateEvaluationResult = evalSemanticContext(c.semanticContext, outerContext, c.alt, configs.fullCtx);
  //            if (predicateEvaluationResult) {
  //                succeeded.add(c);
  //            } else {
  //                failed.add(c);
  //        } else {
  //            succeeded.add(c);
  //    return new Pair<ATNConfigSet, ATNConfigSet>(succeeded, failed);

        return Pair<ATNConfigSet, ATNConfigSet>()
    }

    protected open func evalSemanticContext (predPredictions: Array<DFAStatePredPrediction>, outerContext: ParserRuleContext, complete: Bool): BitSet {
  //    BitSet predictions = new BitSet();
  //    for (DFAState.PredPrediction pair : predPredictions) {
  //        if (pair.pred == SemanticContext.NONE) {
  //            predictions.set(pair.alt);
  //            if (!complete) {
  //                break;
  //            continue;
  //        boolean fullCtx = false;
  //        boolean predicateEvaluationResult = evalSemanticContext(pair.pred, outerContext, pair.alt, fullCtx);
  //        if (debug || dfa_debug) {
  //            System.out.println("eval pred " + pair + "=" + predicateEvaluationResult);
  //        if (predicateEvaluationResult) {
  //            if (debug || dfa_debug) System.out.println("PREDICT " + pair.alt);
  //            predictions.set(pair.alt);
  //            if (!complete) {
  //                break;
  //    return predictions;

        return BitSet()
    }

    protected open func evalSemanticContext (pred: Option<SemanticContext>, parserCallStack: ParserRuleContext, alt: Int32, fullCtx: Bool): Bool {
  //    return pred.eval(parser, parserCallStack);

        return true
    }

    protected open func closure (config: ATNConfig, configs: ATNConfigSet, closureBusy: Option<Set<ATNConfig>>, collectPredicates: Bool, fullCtx: Bool, treatEofAsEpsilon: Bool): Unit {
  //    final int initialDepth = 0;
  //    closureCheckingStopState(config, configs, closureBusy, collectPredicates, fullCtx, initialDepth, treatEofAsEpsilon);
  //    assert !fullCtx || !configs.dipsIntoOuterContext;

        
    }

    protected open func closureCheckingStopState (config: ATNConfig, configs: ATNConfigSet, closureBusy: Option<Set<ATNConfig>>, collectPredicates: Bool, fullCtx: Bool, depth: Int32, treatEofAsEpsilon: Bool): Unit {
  //    if (debug) System.out.println("closure(" + config.toString(parser, true) + ")");
  //    if (config.state instanceof RuleStopState) {
  //        if (!config.context.isEmpty()) {
  //            for (int i = 0; i < config.context.size(); i++) {
  //                if (config.context.getReturnState(i) == PredictionContext.EMPTY_RETURN_STATE) {
  //                    if (fullCtx) {
  //                        configs.add(new ATNConfig(config, config.state, PredictionContext.EMPTY), mergeCache);
  //                        continue;
  //                    } else {
  //                        if (debug) System.out.println("FALLING off rule " + getRuleName(config.state.ruleIndex));
  //                        closure_(config, configs, closureBusy, collectPredicates, fullCtx, depth, treatEofAsEpsilon);
  //                    continue;
  //                ATNState returnState = atn.states.get(config.context.getReturnState(i));
  //                PredictionContext newContext = config.context.getParent(i);
  //                ATNConfig c = new ATNConfig(returnState, config.alt, newContext, config.semanticContext);
  //                c.reachesIntoOuterContext = config.reachesIntoOuterContext;
  //                assert depth > Integer.MIN_VALUE;
  //                closureCheckingStopState(c, configs, closureBusy, collectPredicates, fullCtx, depth - 1, treatEofAsEpsilon);
  //            return;
  //        } else if (fullCtx) {
  //            configs.add(config, mergeCache);
  //            return;
  //        } else {
  //            if (debug) System.out.println("FALLING off rule " + getRuleName(config.state.ruleIndex));
  //    closure_(config, configs, closureBusy, collectPredicates, fullCtx, depth, treatEofAsEpsilon);

        
    }

    protected open func closure_ (config: ATNConfig, configs: ATNConfigSet, closureBusy: Option<Set<ATNConfig>>, collectPredicates: Bool, fullCtx: Bool, depth: Int32, treatEofAsEpsilon: Bool): Unit {
  //    ATNState p = config.state;
  //    if (!p.onlyHasEpsilonTransitions()) {
  //        configs.add(config, mergeCache);
  //    for (int i = 0; i < p.getNumberOfTransitions(); i++) {
  //        if (i == 0 && canDropLoopEntryEdgeInLeftRecursiveRule(config)) continue;
  //        Transition t = p.transition(i);
  //        boolean continueCollecting = !(t instanceof ActionTransition) && collectPredicates;
  //        ATNConfig c = getEpsilonTarget(config, t, continueCollecting, depth == 0, fullCtx, treatEofAsEpsilon);
  //        if (c != null) {
  //            int newDepth = depth;
  //            if (config.state instanceof RuleStopState) {
  //                assert !fullCtx;
  //                if (_dfa != null && _dfa.isPrecedenceDfa()) {
  //                    int outermostPrecedenceReturn = ((EpsilonTransition)t).outermostPrecedenceReturn();
  //                    if (outermostPrecedenceReturn == _dfa.atnStartState.ruleIndex) {
  //                        c.setPrecedenceFilterSuppressed(true);
  //                c.reachesIntoOuterContext++;
  //                if (!closureBusy.add(c)) {
  //                    continue;
  //                configs.dipsIntoOuterContext = true;
  //                assert newDepth > Integer.MIN_VALUE;
  //                newDepth--;
  //                if (debug) System.out.println("dips into outer ctx: " + c);
  //            } else {
  //                if (!t.isEpsilon() && !closureBusy.add(c)) {
  //                    continue;
  //                if (t instanceof RuleTransition) {
  //                    if (newDepth >= 0) {
  //                        newDepth++;
  //            closureCheckingStopState(c, configs, closureBusy, continueCollecting, fullCtx, newDepth, treatEofAsEpsilon);

        
    }

    protected open func canDropLoopEntryEdgeInLeftRecursiveRule (config: ATNConfig): Bool {
  //    if (TURN_OFF_LR_LOOP_ENTRY_BRANCH_OPT) return false;
  //    ATNState p = config.state;
  //    if (p.getStateType.BYTE != ATNState.STAR_LOOP_ENTRY || !((StarLoopEntryState)p).isPrecedenceDecision || config.context.isEmpty() || config.context.hasEmptyPath()) {
  //        return false;
  //    int numCtxs = config.context.size();
  //    for (int i = 0; i < numCtxs; i++) {
  //        ATNState returnState = atn.states.get(config.context.getReturnState(i));
  //        if (returnState.ruleIndex != p.ruleIndex) return false;
  //    BlockStartState decisionStartState = (BlockStartState)p.transition(0).target;
  //    int blockEndStateNum = decisionStartState.endState.stateNumber;
  //    BlockEndState blockEndState = (BlockEndState)atn.states.get(blockEndStateNum);
  //    for (int i = 0; i < numCtxs; i++) {
  //        int returnStateNumber = config.context.getReturnState(i);
  //        ATNState returnState = atn.states.get(returnStateNumber);
  //        if (returnState.getNumberOfTransitions() != 1 || !returnState.transition(0).isEpsilon()) {
  //            return false;
  //        ATNState returnStateTarget = returnState.transition(0).target;
  //        if (returnState.getStateType.BYTE == BLOCK_END && returnStateTarget == p) {
  //            continue;
  //        if (returnState == blockEndState) {
  //            continue;
  //        if (returnStateTarget == blockEndState) {
  //            continue;
  //        if (returnStateTarget.getStateType.BYTE == BLOCK_END && returnStateTarget.getNumberOfTransitions() == 1 && returnStateTarget.transition(0).isEpsilon() && returnStateTarget.transition(0).target == p) {
  //            continue;
  //        return false;
  //    return true;

        return true
    }

    public open func getRuleName (index: Int32): String {
  //    if (parser != null && index >= 0) return parser.getRuleNames()[index];
  //    return "<rule " + index + ">";

        return ""
    }

    protected open func getEpsilonTarget (config: ATNConfig, t: Option<Transition>, collectPredicates: Bool, inContext: Bool, fullCtx: Bool, treatEofAsEpsilon: Bool): ATNConfig {
  //    switch (t.getSerializationType.BYTE) {
  //    case Transition.RULE: 
  //        return ruleTransition(config, (RuleTransition)t);
  //    
  //    case Transition.PRECEDENCE: 
  //        return precedenceTransition(config, (PrecedencePredicateTransition)t, collectPredicates, inContext, fullCtx);
  //    
  //    case Transition.PREDICATE: 
  //        return predTransition(config, (PredicateTransition)t, collectPredicates, inContext, fullCtx);
  //    
  //    case Transition.ACTION: 
  //        return actionTransition(config, (ActionTransition)t);
  //    
  //    case Transition.EPSILON: 
  //        return new ATNConfig(config, t.target);
  //    
  //    case Transition.ATOM: 
  //    
  //    case Transition.RANGE: 
  //    
  //    case Transition.SET: 
  //        if (treatEofAsEpsilon) {
  //            if (t.matches(Token.EOF, 0, 1)) {
  //                return new ATNConfig(config, t.target);
  //        return null;
  //    
  //    default: 
  //        return null;
  //    

        return ATNConfig()
    }

    protected open func actionTransition (config: ATNConfig, t: ActionTransition): ATNConfig {
  //    if (debug) System.out.println("ACTION edge " + t.ruleIndex + ":" + t.actionIndex);
  //    return new ATNConfig(config, t.target);

        return ATNConfig()
    }

    public open func precedenceTransition (config: ATNConfig, pt: PrecedencePredicateTransition, collectPredicates: Bool, inContext: Bool, fullCtx: Bool): ATNConfig {
  //    if (debug) {
  //        System.out.println("PRED (collectPredicates=" + collectPredicates + ") " + pt.precedence + ">=_p, ctx dependent=true");
  //        if (parser != null) {
  //            System.out.println("context surrounding pred is " + parser.getRuleInvocationStack());
  //    ATNConfig c = null;
  //    if (collectPredicates && inContext) {
  //        if (fullCtx) {
  //            int currentPosition = _input.index();
  //            _input.seek(_startIndex);
  //            boolean predSucceeds = evalSemanticContext(pt.getPredicate(), _outerContext, config.alt, fullCtx);
  //            _input.seek(currentPosition);
  //            if (predSucceeds) {
  //                c = new ATNConfig(config, pt.target);
  //        } else {
  //            SemanticContext newSemCtx = SemanticContext.and(config.semanticContext, pt.getPredicate());
  //            c = new ATNConfig(config, pt.target, newSemCtx);
  //    } else {
  //        c = new ATNConfig(config, pt.target);
  //    if (debug) System.out.println("config from pred transition=" + c);
  //    return c;

        return ATNConfig()
    }

    protected open func predTransition (config: ATNConfig, pt: PredicateTransition, collectPredicates: Bool, inContext: Bool, fullCtx: Bool): ATNConfig {
  //    if (debug) {
  //        System.out.println("PRED (collectPredicates=" + collectPredicates + ") " + pt.ruleIndex + ":" + pt.predIndex + ", ctx dependent=" + pt.isCtxDependent);
  //        if (parser != null) {
  //            System.out.println("context surrounding pred is " + parser.getRuleInvocationStack());
  //    ATNConfig c = null;
  //    if (collectPredicates && (!pt.isCtxDependent || (pt.isCtxDependent && inContext))) {
  //        if (fullCtx) {
  //            int currentPosition = _input.index();
  //            _input.seek(_startIndex);
  //            boolean predSucceeds = evalSemanticContext(pt.getPredicate(), _outerContext, config.alt, fullCtx);
  //            _input.seek(currentPosition);
  //            if (predSucceeds) {
  //                c = new ATNConfig(config, pt.target);
  //        } else {
  //            SemanticContext newSemCtx = SemanticContext.and(config.semanticContext, pt.getPredicate());
  //            c = new ATNConfig(config, pt.target, newSemCtx);
  //    } else {
  //        c = new ATNConfig(config, pt.target);
  //    if (debug) System.out.println("config from pred transition=" + c);
  //    return c;

        return ATNConfig()
    }

    protected open func ruleTransition (config: ATNConfig, t: RuleTransition): ATNConfig {
  //    if (debug) {
  //        System.out.println("CALL rule " + getRuleName(t.target.ruleIndex) + ", ctx=" + config.context);
  //    ATNState returnState = t.followState;
  //    PredictionContext newContext = SingletonPredictionContext.create(config.context, returnState.stateNumber);
  //    return new ATNConfig(config, t.target, newContext);

        return ATNConfig()
    }

    protected open func getConflictingAlts (configs: ATNConfigSet): BitSet {
  //    Collection<BitSet> altsets = PredictionMode.getConflictingAltSubsets(configs);
  //    return PredictionMode.getAlts(altsets);

        return BitSet()
    }

    protected open func getConflictingAltsOrUniqueAlt (configs: ATNConfigSet): BitSet {
  //    BitSet conflictingAlts;
  //    if (configs.uniqueAlt != ATN.INVALID_ALT_NUMBER) {
  //        conflictingAlts = new BitSet();
  //        conflictingAlts.set(configs.uniqueAlt);
  //    } else {
  //        conflictingAlts = configs.conflictingAlts;
  //    return conflictingAlts;

        return BitSet()
    }

    public open func getTokenName (t: Int32): String {
  //    if (t == Token.EOF) {
  //        return "EOF";
  //    Vocabulary vocabulary = parser != null ? parser.getVocabulary() : VocabularyImpl.EMPTY_VOCABULARY;
  //    String displayName = vocabulary.getDisplayName(t);
  //    if (displayName.equals(Integer.toString(t))) {
  //        return displayName;
  //    return displayName + "<" + t + ">";

        return ""
    }

    public open func getLookaheadName (input: Option<TokenStream>): String {
  //    return getTokenName(input.LA(1));

        return ""
    }

    public open func dumpDeadEndConfigs (nvae: NoViableAltException): Unit {
  //    System.err.println("dead end configs: ");
  //    for (ATNConfig c : nvae.getDeadEndConfigs()) {
  //        String trans = "no edges";
  //        if (c.state.getNumberOfTransitions() > 0) {
  //            Transition t = c.state.transition(0);
  //            if (t instanceof AtomTransition) {
  //                AtomTransition at = (AtomTransition)t;
  //                trans = "Atom " + getTokenName(at.label);
  //            } else if (t instanceof SetTransition) {
  //                SetTransition st = (SetTransition)t;
  //                boolean not = st instanceof NotSetTransition;
  //                trans = (not ? "~" : "") + "Set " + st.set.toString();
  //        System.err.println(c.toString(parser, true) + ":" + trans);

        
    }

    protected open func noViableAlt (input: Option<TokenStream>, outerContext: ParserRuleContext, configs: ATNConfigSet, startIndex: Int32): NoViableAltException {
  //    return new NoViableAltException(parser, input, input.get(startIndex), input.LT(1), configs, outerContext);

        return NoViableAltException()
    }

    protected static func getUniqueAlt (configs: ATNConfigSet): Int32 {
  //    int alt = ATN.INVALID_ALT_NUMBER;
  //    for (ATNConfig c : configs) {
  //        if (alt == ATN.INVALID_ALT_NUMBER) {
  //            alt = c.alt;
  //        } else if (c.alt != alt) {
  //            return ATN.INVALID_ALT_NUMBER;
  //    return alt;

        return 0
    }

    protected open func addDFAEdge (dfa: DFA, `from`: DFAState, t: Int32, to: DFAState): DFAState {
  //    if (debug) {
  //        System.out.println("EDGE " + from + " -> " + to + " upon " + getTokenName(t));
  //    if (to == null) {
  //        return null;
  //    to = addDFAState(dfa, to);
  //    if (from == null || t < -1 || t > atn.maxTokenType) {
  //        return to;
  //    synchronized (from) {
  //        if (from.edges == null) {
  //            from.edges = new DFAState[atn.maxTokenType + 1 + 1];
  //        from.edges[t + 1] = to;
  //    if (debug) {
  //        System.out.println("DFA=\n" + dfa.toString(parser != null ? parser.getVocabulary() : VocabularyImpl.EMPTY_VOCABULARY));
  //    return to;

        return DFAState()
    }

    protected open func addDFAState (dfa: DFA, D: DFAState): DFAState {
  //    if (D == ERROR) {
  //        return D;
  //    synchronized (dfa.states) {
  //        DFAState existing = dfa.states.get(D);
  //        if (existing != null) return existing;
  //        D.stateNumber = dfa.states.size();
  //        if (!D.configs.isReadonly()) {
  //            D.configs.optimizeConfigs(this);
  //            D.configs.setReadonly(true);
  //        dfa.states.put(D, D);
  //        if (debug) System.out.println("adding new DFA state: " + D);
  //        return D;

        return DFAState()
    }

    protected open func reportAttemptingFullContext (dfa: DFA, conflictingAlts: BitSet, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
  //    if (debug || retry_debug) {
  //        Interval interval = Interval.of(startIndex, stopIndex);
  //        System.out.println("reportAttemptingFullContext decision=" + dfa.decision + ":" + configs + ", input=" + parser.getTokenStream().getText(interval));
  //    if (parser != null) parser.getErrorListenerDispatch().reportAttemptingFullContext(parser, dfa, startIndex, stopIndex, conflictingAlts, configs);

        
    }

    protected open func reportContextSensitivity (dfa: DFA, prediction: Int32, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
  //    if (debug || retry_debug) {
  //        Interval interval = Interval.of(startIndex, stopIndex);
  //        System.out.println("reportContextSensitivity decision=" + dfa.decision + ":" + configs + ", input=" + parser.getTokenStream().getText(interval));
  //    if (parser != null) parser.getErrorListenerDispatch().reportContextSensitivity(parser, dfa, startIndex, stopIndex, prediction, configs);

        
    }

    protected open func reportAmbiguity (dfa: DFA, D: DFAState, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {
  //    if (debug || retry_debug) {
  //        Interval interval = Interval.of(startIndex, stopIndex);
  //        System.out.println("reportAmbiguity " + ambigAlts + ":" + configs + ", input=" + parser.getTokenStream().getText(interval));
  //    if (parser != null) parser.getErrorListenerDispatch().reportAmbiguity(parser, dfa, startIndex, stopIndex, exact, ambigAlts, configs);

        
    }

    public open func setPredictionMode (mode: PredictionMode): Unit {
  //    this.mode = mode;

        
    }

    public open func getPredictionMode (): PredictionMode {
  //    return mode;

        return PredictionMode.SLL
    }

    public open func getParser (): Option<Parser> {
  //    return parser;

        return Option<Parser>.None
    }

    public static func getSafeEnv (envName: String): String {
  //    try {
  //        return System.getenv(envName);
  //    } catch (SecurityException e) {
  //    return null;

        return ""
    }

    public init() {}
}


