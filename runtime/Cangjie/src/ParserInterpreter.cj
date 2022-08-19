package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNState;
// import org.antlr.v4.runtime.atn.ActionTransition;
// import org.antlr.v4.runtime.atn.AtomTransition;
// import org.antlr.v4.runtime.atn.DecisionState;
// import org.antlr.v4.runtime.atn.LoopEndState;
// import org.antlr.v4.runtime.atn.ParserATNSimulator;
// import org.antlr.v4.runtime.atn.PrecedencePredicateTransition;
// import org.antlr.v4.runtime.atn.PredicateTransition;
// import org.antlr.v4.runtime.atn.PredictionContextCache;
// import org.antlr.v4.runtime.atn.RuleStartState;
// import org.antlr.v4.runtime.atn.RuleTransition;
// import org.antlr.v4.runtime.atn.StarLoopEntryState;
// import org.antlr.v4.runtime.atn.Transition;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.misc.Pair;
from std import collection.*
// import java.util.Collection;
// import java.util.Deque;

open public class ParserInterpreter <: Parser {

    protected let grammarFileName: String = ""
    
    protected let atn: ATN = ATN()
    
    protected let decisionToDFA: Array<DFA> = Array<DFA>()
    
    protected let sharedContextCache: PredictionContextCache = PredictionContextCache()
    
    //@Deprecated
    protected let tokenNames: Array<String> = Array<String>()
    
    protected let ruleNames: Array<String> = Array<String>()
    
    private let vocabulary: Option<Vocabulary> = Option<Vocabulary>.None
    
    protected let parentContextStack: Deque<Pair<ParserRuleContext, Integer>> = Deque<Pair<ParserRuleContext, Integer>>()
    
    protected var overrideDecision: Int32 = -1
    
    protected var overrideDecisionInputIndex: Int32 = -1
    
    protected var overrideDecisionAlt: Int32 = -1
    
    protected var overrideDecisionReached: Bool = true
    
    protected var overrideDecisionRoot: InterpreterRuleContext = InterpreterRuleContext()
    
    protected var rootContext: InterpreterRuleContext = InterpreterRuleContext()
    
    public init (grammarFileName: String, tokenNames: Collection<String>, ruleNames: Collection<String>, atn: ATN, input: Option<TokenStream>){

    }

    public init (grammarFileName: String, vocabulary: Option<Vocabulary>, ruleNames: Collection<String>, atn: ATN, input: Option<TokenStream>){

    }

    public open func reset (): Unit {
  //    super.reset();
  //    overrideDecisionReached = false;
  //    overrideDecisionRoot = null;

        
    }

    public open func getATN (): ATN {
  //    return atn;

        return ATN()
    }

    public open func getTokenNames (): Array<String> {
  //    return tokenNames;

        return Array<String>()
    }

    public open func getVocabulary (): Option<Vocabulary> {
  //    return vocabulary;

        return Option<Vocabulary>.None
    }

    public open func getRuleNames (): Array<String> {
  //    return ruleNames;

        return Array<String>()
    }

    public open func getGrammarFileName (): String {
  //    return grammarFileName;

        return ""
    }

    public open func parse (startRuleIndex: Int32): ParserRuleContext {
  //    RuleStartState startRuleStartState = atn.ruleToStartState[startRuleIndex];
  //    rootContext = createInterpreterRuleContext(null, ATNState.INVALID_STATE_NUMBER, startRuleIndex);
  //    if (startRuleStartState.isLeftRecursiveRule) {
  //        enterRecursionRule(rootContext, startRuleStartState.stateNumber, startRuleIndex, 0);
  //    } else {
  //        enterRule(rootContext, startRuleStartState.stateNumber, startRuleIndex);
  //    while (true) {
  //        ATNState p = getATNState();
  //        switch (p.getStateType.BYTE) {
  //        case ATNState.RULE_STOP: 
  //            if (_ctx.isEmpty()) {
  //                if (startRuleStartState.isLeftRecursiveRule) {
  //                    ParserRuleContext result = _ctx;
  //                    Pair<ParserRuleContext, Integer> parentContext = _parentContextStack.pop();
  //                    unrollRecursionContexts(parentContext.a);
  //                    return result;
  //                } else {
  //                    exitRule();
  //                    return rootContext;
  //            visitRuleStopState(p);
  //            break;
  //        
  //        default: 
  //            try {
  //                visitState(p);
  //            } catch (RecognitionException e) {
  //                setState(atn.ruleToStopState[p.ruleIndex].stateNumber);
  //                getContext().exception = e;
  //                getErrorHandler().reportError(this, e);
  //                recover(e);
  //            break;
  //        

        return ParserRuleContext()
    }

    public open func enterRecursionRule (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32, precedence: Int32): Unit {
  //    Pair<ParserRuleContext, Integer> pair = new Pair<ParserRuleContext, Integer>(_ctx, localctx.invokingState);
  //    _parentContextStack.push(pair);
  //    super.enterRecursionRule(localctx, state, ruleIndex, precedence);

        
    }

    protected open func getATNState (): Option<ATNState> {
  //    return atn.states.get(getState());

        return Option<ATNState>.None
    }

    protected open func visitState (p: Option<ATNState>): Unit {
  //    int predictedAlt = 1;
  //    if (p instanceof DecisionState) {
  //        predictedAlt = visitDecisionState((DecisionState)p);
  //    Transition transition = p.transition(predictedAlt - 1);
  //    switch (transition.getSerializationType.BYTE) {
  //    case Transition.EPSILON: 
  //        if (p.getStateType.BYTE == ATNState.STAR_LOOP_ENTRY && ((StarLoopEntryState)p).isPrecedenceDecision && !(transition.target instanceof LoopEndState)) {
  //            InterpreterRuleContext localctx = createInterpreterRuleContext(_parentContextStack.peek().a, _parentContextStack.peek().b, _ctx.getRuleIndex());
  //            pushNewRecursionContext(localctx, atn.ruleToStartState[p.ruleIndex].stateNumber, _ctx.getRuleIndex());
  //        break;
  //    
  //    case Transition.ATOM: 
  //        match(((AtomTransition)transition).label);
  //        break;
  //    
  //    case Transition.RANGE: 
  //    
  //    case Transition.SET: 
  //    
  //    case Transition.NOT_SET: 
  //        if (!transition.matches(_input.LA(1), Token.MIN_USER_TOKEN_TYPE, 65535)) {
  //            recoverInline();
  //        matchWildcard();
  //        break;
  //    
  //    case Transition.WILDCARD: 
  //        matchWildcard();
  //        break;
  //    
  //    case Transition.RULE: 
  //        RuleStartState ruleStartState = (RuleStartState)transition.target;
  //        int ruleIndex = ruleStartState.ruleIndex;
  //        InterpreterRuleContext newctx = createInterpreterRuleContext(_ctx, p.stateNumber, ruleIndex);
  //        if (ruleStartState.isLeftRecursiveRule) {
  //            enterRecursionRule(newctx, ruleStartState.stateNumber, ruleIndex, ((RuleTransition)transition).precedence);
  //        } else {
  //            enterRule(newctx, transition.target.stateNumber, ruleIndex);
  //        break;
  //    
  //    case Transition.PREDICATE: 
  //        PredicateTransition predicateTransition = (PredicateTransition)transition;
  //        if (!sempred(_ctx, predicateTransition.ruleIndex, predicateTransition.predIndex)) {
  //            throw new FailedPredicateException(this);
  //        break;
  //    
  //    case Transition.ACTION: 
  //        ActionTransition actionTransition = (ActionTransition)transition;
  //        action(_ctx, actionTransition.ruleIndex, actionTransition.actionIndex);
  //        break;
  //    
  //    case Transition.PRECEDENCE: 
  //        if (!precpred(_ctx, ((PrecedencePredicateTransition)transition).precedence)) {
  //            throw new FailedPredicateException(this, String.format("precpred(_ctx, %d)", ((PrecedencePredicateTransition)transition).precedence));
  //        break;
  //    
  //    default: 
  //        throw new UnsupportedOperationException("Unrecognized ATN transition type.");
  //    
  //    setState(transition.target.stateNumber);

        
    }

    protected open func visitDecisionState (p: Option<DecisionState>): Int32 {
  //    int predictedAlt = 1;
  //    if (p.getNumberOfTransitions() > 1) {
  //        getErrorHandler().sync(this);
  //        int decision = p.decision;
  //        if (decision == overrideDecision && _input.index() == overrideDecisionInputIndex && !overrideDecisionReached) {
  //            predictedAlt = overrideDecisionAlt;
  //            overrideDecisionReached = true;
  //        } else {
  //            predictedAlt = getInterpreter().adaptivePredict(_input, decision, _ctx);
  //    return predictedAlt;

        return 0
    }

    protected open func createInterpreterRuleContext (parent: ParserRuleContext, invokingStateNumber: Int32, ruleIndex: Int32): InterpreterRuleContext {
  //    return new InterpreterRuleContext(parent, invokingStateNumber, ruleIndex);

        return InterpreterRuleContext()
    }

    protected open func visitRuleStopState (p: Option<ATNState>): Unit {
  //    RuleStartState ruleStartState = atn.ruleToStartState[p.ruleIndex];
  //    if (ruleStartState.isLeftRecursiveRule) {
  //        Pair<ParserRuleContext, Integer> parentContext = _parentContextStack.pop();
  //        unrollRecursionContexts(parentContext.a);
  //        setState(parentContext.b);
  //    } else {
  //        exitRule();
  //    RuleTransition ruleTransition = (RuleTransition)atn.states.get(getState()).transition(0);
  //    setState(ruleTransition.followState.stateNumber);

        
    }

    public open func addDecisionOverride (decision: Int32, tokenIndex: Int32, forcedAlt: Int32): Unit {
  //    overrideDecision = decision;
  //    overrideDecisionInputIndex = tokenIndex;
  //    overrideDecisionAlt = forcedAlt;

        
    }

    public open func getOverrideDecisionRoot (): InterpreterRuleContext {
  //    return overrideDecisionRoot;

        return InterpreterRuleContext()
    }

    protected open func recover (e: RecognitionException): Unit {
  //    int i = _input.index();
  //    getErrorHandler().recover(this, e);
  //    if (_input.index() == i) {
  //        if (e instanceof InputMismatchException) {
  //            InputMismatchException ime = (InputMismatchException)e;
  //            Token tok = e.getOffendingToken();
  //            int expectedTokenType = Token.INVALID_TYPE;
  //            if (!ime.getExpectedTokens().isNil()) {
  //                expectedTokenType = ime.getExpectedTokens().getMinElement();
  //            Token errToken = getTokenFactory().create(new Pair<TokenSource, CharStream>(tok.getTokenSource(), tok.getTokenSource().getInputStream()), expectedTokenType, tok.getText(), Token.DEFAULT_CHANNEL, -1, -1, tok.getLine(), tok.getCharPositionInLine());
  //            _ctx.addErrorNode(createErrorNode(_ctx, errToken));
  //        } else {
  //            Token tok = e.getOffendingToken();
  //            Token errToken = getTokenFactory().create(new Pair<TokenSource, CharStream>(tok.getTokenSource(), tok.getTokenSource().getInputStream()), Token.INVALID_TYPE, tok.getText(), Token.DEFAULT_CHANNEL, -1, -1, tok.getLine(), tok.getCharPositionInLine());
  //            _ctx.addErrorNode(createErrorNode(_ctx, errToken));

        
    }

    protected open func recoverInline (): Option<Token> {
  //    return _errHandler.recoverInline(this);

        return Option<Token>.None
    }

    public open func getRootContext (): InterpreterRuleContext {
  //    return rootContext;

        return InterpreterRuleContext()
    }

    public init() {}
}


