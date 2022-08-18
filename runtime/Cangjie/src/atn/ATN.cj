package default

// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
from std import collection.*

open public class ATN {

    public static let INVALID_ALT_NUMBER: Int32 = 0
    
    public let states: List<Option<ATNState>> = List<Option<ATNState>>()
    
    public let decisionToState: List<Option<DecisionState>> = List<Option<DecisionState>>()
    
    public var ruleToStartState: Array<RuleStartState> = Array<RuleStartState>()
    
    public var ruleToStopState: Array<RuleStopState> = Array<RuleStopState>()
    
    public let modeNameToStartState: Map<String, TokensStartState> = Map<String, TokensStartState>()
    
    public let grammarType: ATNType = ATNType.LEXER
    
    public let maxTokenType: Int32 = 0
    
    public var ruleToTokenType: Array<Int32> = Array<Int32>()
    
    public var lexerActions: Array<Option<LexerAction>> = Array<Option<LexerAction>>()
    
    public let modeToStartState: List<TokensStartState> = List<TokensStartState>()
    
    public init (grammarType: ATNType, maxTokenType: Int32){

    }

    public open func nextTokens (s: Option<ATNState>, ctx: RuleContext): IntervalSet {
  //    LL1Analyzer anal = new LL1Analyzer(this);
  //    IntervalSet next = anal.LOOK(s, ctx);
  //    return next;

        return IntervalSet()
    }

    public open func nextTokens (s: Option<ATNState>): IntervalSet {
  //    if (s.nextTokenWithinRule != null) return s.nextTokenWithinRule;
  //    s.nextTokenWithinRule = nextTokens(s, null);
  //    s.nextTokenWithinRule.setReadonly(true);
  //    return s.nextTokenWithinRule;

        return IntervalSet()
    }

    public open func addState (state: Option<ATNState>): Unit {
  //    if (state != null) {
  //        state.atn = this;
  //        state.stateNumber = states.size();
  //    states.add(state);

        
    }

    public open func removeState (state: Option<ATNState>): Unit {
  //    states.set(state.stateNumber, null);

        
    }

    public open func defineDecisionState (s: Option<DecisionState>): Int32 {
  //    decisionToState.add(s);
  //    s.decision = decisionToState.size() - 1;
  //    return s.decision;

        return 0
    }

    public open func getDecisionState (decision: Int32): Option<DecisionState> {
  //    if (!decisionToState.isEmpty()) {
  //        return decisionToState.get(decision);
  //    return null;

        return Option<DecisionState>.None
    }

    public open func getNumberOfDecisions (): Int32 {
  //    return decisionToState.size();

        return 0
    }

    public open func getExpectedTokens (stateNumber: Int32, context: RuleContext): IntervalSet {
  //    if (stateNumber < 0 || stateNumber >= states.size()) {
  //        throw new IllegalArgumentException("Invalid state number.");
  //    RuleContext ctx = context;
  //    ATNState s = states.get(stateNumber);
  //    IntervalSet following = nextTokens(s);
  //    if (!following.contains(Token.EPSILON)) {
  //        return following;
  //    IntervalSet expected = new IntervalSet();
  //    expected.addAll(following);
  //    expected.remove(Token.EPSILON);
  //    while (ctx != null && ctx.invokingState >= 0 && following.contains(Token.EPSILON)) {
  //        ATNState invokingState = states.get(ctx.invokingState);
  //        RuleTransition rt = (RuleTransition)invokingState.transition(0);
  //        following = nextTokens(rt.followState);
  //        expected.addAll(following);
  //        expected.remove(Token.EPSILON);
  //        ctx = ctx.parent;
  //    if (following.contains(Token.EPSILON)) {
  //        expected.add(Token.EOF);
  //    return expected;

        return IntervalSet()
    }

    public init() {}
}


