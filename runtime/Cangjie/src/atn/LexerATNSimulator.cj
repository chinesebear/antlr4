package default

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.IntStream;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.LexerNoViableAltException;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.dfa.DFAState;
// import org.antlr.v4.runtime.misc.Interval;
// import java.util.Locale;

open public class LexerATNSimulator <: ATNSimulator {

    public static let debug: Bool = true
    
    public static let dfa_debug: Bool = true
    
    public static let MIN_DFA_EDGE: Int32 = 0
    
    public static let MAX_DFA_EDGE: Int32 = 127
    
    protected let recog: Option<Lexer> = Option<Lexer>.None
    
    protected var startIndex: Int32 = -1
    
    protected var line: Int32 = 1
    
    protected var charPositionInLine: Int32 = 0
    
    public let decisionToDFA: Array<DFA> = Array<DFA>()
    
    protected var mode: Int32 = 0
    
    protected let prevAccept: LexerATNSimulatorSimState = LexerATNSimulatorSimState()
    
    public open func copyState (simulator: LexerATNSimulator): Unit {
  //    this.charPositionInLine = simulator.charPositionInLine;
  //    this.line = simulator.line;
  //    this.mode = simulator.mode;
  //    this.startIndex = simulator.startIndex;

        
    }

    public open func `match` (input: Option<CharStream>, mode: Int32): Int32 {
  //    this.mode = mode;
  //    int mark = input.mark();
  //    try {
  //        this.startIndex = input.index();
  //        this.prevAccept.reset();
  //        DFA dfa = decisionToDFA[mode];
  //        if (dfa.s0 == null) {
  //            return matchATN(input);
  //        } else {
  //            return execATN(input, dfa.s0);
  //    } finally {
  //        input.release(mark);

        return 0
    }

    public open func reset (): Unit {
  //    prevAccept.reset();
  //    startIndex = -1;
  //    line = 1;
  //    charPositionInLine = 0;
  //    mode = Lexer.DEFAULT_MODE;

        
    }

    public open func clearDFA (): Unit {
  //    for (int d = 0; d < decisionToDFA.length; d++) {
  //        decisionToDFA[d] = new DFA(atn.getDecisionState(d), d);

        
    }

    protected open func matchATN (input: Option<CharStream>): Int32 {
  //    ATNState startState = atn.modeToStartState.get(mode);
  //    if (debug) {
  //        System.out.format(Locale.getDefault(), "matchATN mode %d start: %s\n", mode, startState);
  //    int old_mode = mode;
  //    ATNConfigSet s0_closure = computeStartState(input, startState);
  //    boolean suppressEdge = s0_closure.hasSemanticContext;
  //    s0_closure.hasSemanticContext = false;
  //    DFAState next = addDFAState(s0_closure);
  //    if (!suppressEdge) {
  //        decisionToDFA[mode].s0 = next;
  //    int predict = execATN(input, next);
  //    if (debug) {
  //        System.out.format(Locale.getDefault(), "DFA after matchATN: %s\n", decisionToDFA[old_mode].toLexerString());
  //    return predict;

        return 0
    }

    protected open func execATN (input: Option<CharStream>, ds0: DFAState): Int32 {
  //    if (debug) {
  //        System.out.format(Locale.getDefault(), "start state closure=%s\n", ds0.configs);
  //    if (ds0.isAcceptState) {
  //        captureSimState(prevAccept, input, ds0);
  //    int t = input.LA(1);
  //    DFAState s = ds0;
  //    while (true) {
  //        if (debug) {
  //            System.out.format(Locale.getDefault(), "execATN loop starting closure: %s\n", s.configs);
  //        DFAState target = getExistingTargetState(s, t);
  //        if (target == null) {
  //            target = computeTargetState(input, s, t);
  //        if (target == ERROR) {
  //            break;
  //        if (t != IntStream.EOF) {
  //            consume(input);
  //        if (target.isAcceptState) {
  //            captureSimState(prevAccept, input, target);
  //            if (t == IntStream.EOF) {
  //                break;
  //        t = input.LA(1);
  //        s = target;
  //    return failOrAccept(prevAccept, input, s.configs, t);

        return 0
    }

    protected open func getExistingTargetState (s: DFAState, t: Int32): DFAState {
  //    if (s.edges == null || t < MIN_DFA_EDGE || t > MAX_DFA_EDGE) {
  //        return null;
  //    DFAState target = s.edges[t - MIN_DFA_EDGE];
  //    if (debug && target != null) {
  //        System.out.println("reuse state " + s.stateNumber + " edge to " + target.stateNumber);
  //    return target;

        return DFAState()
    }

    protected open func computeTargetState (input: Option<CharStream>, s: DFAState, t: Int32): DFAState {
  //    ATNConfigSet reach = new OrderedATNConfigSet();
  //    getReachableConfigSet(input, s.configs, reach, t);
  //    if (reach.isEmpty()) {
  //        if (!reach.hasSemanticContext) {
  //            addDFAEdge(s, t, ERROR);
  //        return ERROR;
  //    return addDFAEdge(s, t, reach);

        return DFAState()
    }

    protected open func failOrAccept (prevAccept: LexerATNSimulatorSimState, input: Option<CharStream>, reach: ATNConfigSet, t: Int32): Int32 {
  //    if (prevAccept.dfaState != null) {
  //        LexerActionExecutor lexerActionExecutor = prevAccept.dfaState.lexerActionExecutor;
  //        accept(input, lexerActionExecutor, startIndex, prevAccept.index, prevAccept.line, prevAccept.charPos);
  //        return prevAccept.dfaState.prediction;
  //    } else {
  //        if (t == IntStream.EOF && input.index() == startIndex) {
  //            return Option<Token>.EOF;
  //        throw new LexerNoViableAltException(recog, input, startIndex, reach);

        return 0
    }

    protected open func getReachableConfigSet (input: Option<CharStream>, closure: ATNConfigSet, reach: ATNConfigSet, t: Int32): Unit {
  //    int skipAlt = ATN.INVALID_ALT_NUMBER;
  //    for (ATNConfig c : closure) {
  //        boolean currentAltReachedAcceptState = c.alt == skipAlt;
  //        if (currentAltReachedAcceptState && ((LexerATNConfig)c).hasPassedThroughNonGreedyDecision()) {
  //            continue;
  //        if (debug) {
  //            System.out.format(Locale.getDefault(), "testing %s at %s\n", getTokenName(t), c.toString(recog, true));
  //        int n = c.state.getNumberOfTransitions();
  //        for (int ti = 0; ti < n; ti++) {
  //            Transition trans = c.state.transition(ti);
  //            ATNState target = getReachableTarget(trans, t);
  //            if (target != null) {
  //                LexerActionExecutor lexerActionExecutor = ((LexerATNConfig)c).getLexerActionExecutor();
  //                if (lexerActionExecutor != null) {
  //                    lexerActionExecutor = lexerActionExecutor.fixOffsetBeforeMatch(input.index() - startIndex);
  //                boolean treatEofAsEpsilon = t == CharStream.EOF;
  //                if (closure(input, new LexerATNConfig((LexerATNConfig)c, target, lexerActionExecutor), reach, currentAltReachedAcceptState, true, treatEofAsEpsilon)) {
  //                    skipAlt = c.alt;
  //                    break;

        
    }

    protected open func accept (input: Option<CharStream>, lexerActionExecutor: LexerActionExecutor, startIndex: Int32, index: Int32, line: Int32, charPos: Int32): Unit {
  //    if (debug) {
  //        System.out.format(Locale.getDefault(), "ACTION %s\n", lexerActionExecutor);
  //    input.seek(index);
  //    this.line = line;
  //    this.charPositionInLine = charPos;
  //    if (lexerActionExecutor != null && recog != null) {
  //        lexerActionExecutor.execute(recog, input, startIndex);

        
    }

    protected open func getReachableTarget (trans: Option<Transition>, t: Int32): Option<ATNState> {
  //    if (trans.matches(t, Lexer.MIN_CHAR_VALUE, Lexer.MAX_CHAR_VALUE)) {
  //        return trans.target;
  //    return null;

        return Option<ATNState>.None
    }

    protected open func computeStartState (input: Option<CharStream>, p: Option<ATNState>): ATNConfigSet {
  //    Option<PredictionContext> initialContext = //    Option<PredictionContext> initialContext()
  //    ATNConfigSet configs = new OrderedATNConfigSet();
  //    for (int i = 0; i < p.getNumberOfTransitions(); i++) {
  //        ATNState target = p.transition(i).target;
  //        LexerATNConfig c = new LexerATNConfig(target, i + 1, initialContext);
  //        closure(input, c, configs, false, false, false);
  //    return configs;

        return ATNConfigSet()
    }

    protected open func closure (input: Option<CharStream>, config: LexerATNConfig, configs: ATNConfigSet, currentAltReachedAcceptState: Bool, speculative: Bool, treatEofAsEpsilon: Bool): Bool {
  //    if (debug) {
  //        System.out.println("closure(" + config.toString(recog, true) + ")");
  //    if (config.state instanceof RuleStopState) {
  //        if (debug) {
  //            if (recog != null) {
  //                System.out.format(Locale.getDefault(), "closure at %s rule stop %s\n", recog.getRuleNames()[config.state.ruleIndex], config);
  //            } else {
  //                System.out.format(Locale.getDefault(), "closure at rule stop %s\n", config);
  //        if (config.context == null || config.context.hasEmptyPath()) {
  //            if (config.context == null || config.context.isEmpty()) {
  //                configs.add(config);
  //                return true;
  //            } else {
  //                configs.add(new LexerATNConfig(config, config.state, PredictionContext.EMPTY));
  //                currentAltReachedAcceptState = true;
  //        if (config.context != null && !config.context.isEmpty()) {
  //            for (int i = 0; i < config.context.size(); i++) {
  //                if (config.context.getReturnState(i) != PredictionContext.EMPTY_RETURN_STATE) {
  //                    PredictionContext newContext = config.context.getParent(i);
  //                    ATNState returnState = atn.states.get(config.context.getReturnState(i));
  //                    LexerATNConfig c = new LexerATNConfig(config, returnState, newContext);
  //                    currentAltReachedAcceptState = closure(input, c, configs, currentAltReachedAcceptState, speculative, treatEofAsEpsilon);
  //        return currentAltReachedAcceptState;
  //    if (!config.state.onlyHasEpsilonTransitions()) {
  //        if (!currentAltReachedAcceptState || !config.hasPassedThroughNonGreedyDecision()) {
  //            configs.add(config);
  //    ATNState p = config.state;
  //    for (int i = 0; i < p.getNumberOfTransitions(); i++) {
  //        Transition t = p.transition(i);
  //        LexerATNConfig c = getEpsilonTarget(input, config, t, configs, speculative, treatEofAsEpsilon);
  //        if (c != null) {
  //            currentAltReachedAcceptState = closure(input, c, configs, currentAltReachedAcceptState, speculative, treatEofAsEpsilon);
  //    return currentAltReachedAcceptState;

        return true
    }

    protected open func getEpsilonTarget (input: Option<CharStream>, config: LexerATNConfig, t: Option<Transition>, configs: ATNConfigSet, speculative: Bool, treatEofAsEpsilon: Bool): LexerATNConfig {
  //    LexerATNConfig c = null;
  //    switch (t.getSerializationType.BYTE) {
  //    case Transition.RULE: 
  //        RuleTransition ruleTransition = (RuleTransition)t;
  //        PredictionContext newContext = SingletonPredictionContext.create(config.context, ruleTransition.followState.stateNumber);
  //        c = new LexerATNConfig(config, t.target, newContext);
  //        break;
  //    
  //    case Transition.PRECEDENCE: 
  //        throw new UnsupportedOperationException("Precedence predicates are not supported in lexers.");
  //    
  //    case Transition.PREDICATE: 
  //        PredicateTransition pt = (PredicateTransition)t;
  //        if (debug) {
  //            System.out.println("EVAL rule " + pt.ruleIndex + ":" + pt.predIndex);
  //        configs.hasSemanticContext = true;
  //        if (evaluatePredicate(input, pt.ruleIndex, pt.predIndex, speculative)) {
  //            c = new LexerATNConfig(config, t.target);
  //        break;
  //    
  //    case Transition.ACTION: 
  //        if (config.context == null || config.context.hasEmptyPath()) {
  //            LexerActionExecutor lexerActionExecutor = LexerActionExecutor.append(config.getLexerActionExecutor(), atn.lexerActions[((ActionTransition)t).actionIndex]);
  //            c = new LexerATNConfig(config, t.target, lexerActionExecutor);
  //            break;
  //        } else {
  //            c = new LexerATNConfig(config, t.target);
  //            break;
  //    
  //    case Transition.EPSILON: 
  //        c = new LexerATNConfig(config, t.target);
  //        break;
  //    
  //    case Transition.ATOM: 
  //    
  //    case Transition.RANGE: 
  //    
  //    case Transition.SET: 
  //        if (treatEofAsEpsilon) {
  //            if (t.matches(CharStream.EOF, Lexer.MIN_CHAR_VALUE, Lexer.MAX_CHAR_VALUE)) {
  //                c = new LexerATNConfig(config, t.target);
  //                break;
  //        break;
  //    
  //    return c;

        return LexerATNConfig()
    }

    protected open func evaluatePredicate (input: Option<CharStream>, ruleIndex: Int32, predIndex: Int32, speculative: Bool): Bool {
  //    if (recog == null) {
  //        return true;
  //    if (!speculative) {
  //        return recog.sempred(null, ruleIndex, predIndex);
  //    int savedCharPositionInLine = charPositionInLine;
  //    int savedLine = line;
  //    int index = input.index();
  //    int marker = input.mark();
  //    try {
  //        consume(input);
  //        return recog.sempred(null, ruleIndex, predIndex);
  //    } finally {
  //        charPositionInLine = savedCharPositionInLine;
  //        line = savedLine;
  //        input.seek(index);
  //        input.release(marker);

        return true
    }

    protected open func captureSimState (settings: LexerATNSimulatorSimState, input: Option<CharStream>, dfaState: DFAState): Unit {
  //    settings.index = input.index();
  //    settings.line = line;
  //    settings.charPos = charPositionInLine;
  //    settings.dfaState = dfaState;

        
    }

    protected open func addDFAEdge (`from`: DFAState, t: Int32, q: ATNConfigSet): DFAState {
  //    boolean suppressEdge = q.hasSemanticContext;
  //    q.hasSemanticContext = false;
  //    DFAState to = addDFAState(q);
  //    if (suppressEdge) {
  //        return to;
  //    addDFAEdge(from, t, to);
  //    return to;

        return DFAState()
    }

    protected open func addDFAEdge (p: DFAState, t: Int32, q: DFAState): Unit {
  //    if (t < MIN_DFA_EDGE || t > MAX_DFA_EDGE) {
  //        return;
  //    if (debug) {
  //        System.out.println("EDGE " + p + " -> " + q + " upon " + ((char)t));
  //    synchronized (p) {
  //        if (p.edges == null) {
  //            p.edges = new DFAState[MAX_DFA_EDGE - MIN_DFA_EDGE + 1];
  //        p.edges[t - MIN_DFA_EDGE] = q;

        
    }

    protected open func addDFAState (configs: ATNConfigSet): DFAState {
  //    assert !configs.hasSemanticContext;
  //    DFAState proposed = new DFAState(configs);
  //    ATNConfig firstConfigWithRuleStopState = null;
  //    for (ATNConfig c : configs) {
  //        if (c.state instanceof RuleStopState) {
  //            firstConfigWithRuleStopState = c;
  //            break;
  //    if (firstConfigWithRuleStopState != null) {
  //        proposed.isAcceptState = true;
  //        proposed.lexerActionExecutor = ((LexerATNConfig)firstConfigWithRuleStopState).getLexerActionExecutor();
  //        proposed.prediction = atn.ruleToTokenType[firstConfigWithRuleStopState.state.ruleIndex];
  //    DFA dfa = decisionToDFA[mode];
  //    synchronized (dfa.states) {
  //        DFAState existing = dfa.states.get(proposed);
  //        if (existing != null) return existing;
  //        DFAState newState = proposed;
  //        newState.stateNumber = dfa.states.size();
  //        configs.setReadonly(true);
  //        newState.configs = configs;
  //        dfa.states.put(newState, newState);
  //        return newState;

        return DFAState()
    }

    public open func getDFA (mode: Int32): DFA {
  //    return decisionToDFA[mode];

        return DFA()
    }

    public open func getText (input: Option<CharStream>): String {
  //    return input.getText(Interval.of(startIndex, input.index() - 1));

        return ""
    }

    public open func getLine (): Int32 {
  //    return line;

        return 0
    }

    public open func setLine (line: Int32): Unit {
  //    this.line = line;

        
    }

    public open func getCharPositionInLine (): Int32 {
  //    return charPositionInLine;

        return 0
    }

    public open func setCharPositionInLine (charPositionInLine: Int32): Unit {
  //    this.charPositionInLine = charPositionInLine;

        
    }

    public open func consume (input: Option<CharStream>): Unit {
  //    int curChar = input.LA(1);
  //    if (curChar == '\n') {
  //        line++;
  //        charPositionInLine = 0;
  //    } else {
  //        charPositionInLine++;
  //    input.consume();

        
    }

    public open func getTokenName (t: Int32): String {
  //    if (t == -1) return "EOF";
  //    return "\'" + (char)t + "\'";

        return ""
    }

    public init() {}
}

public class LexerATNSimulatorSimState {
    var class_out: LexerATNSimulator
    public init(out: LexerATNSimulator) {
        class_out = out
    }
    public init() {
        class_out = LexerATNSimulator()
    }
    protected var index: Int32 = -1
    
    protected var line: Int32 = 0
    
    protected var charPos: Int32 = -1
    
    protected var dfaState: DFAState = DFAState()
    
    protected func reset (): Unit {
  //    index = -1;
  //    line = 0;
  //    charPos = -1;
  //    dfaState = null;

        
    }

}



