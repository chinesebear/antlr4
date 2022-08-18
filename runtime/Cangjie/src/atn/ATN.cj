package atn

// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
from std import collection.*

open public class ATN {

    public static let INVALID_ALT_NUMBER: Int32 = 0
    
    public let states: List<ATNState> = List<ATNState>()
    
    public let decisionToState: List<DecisionState> = List<DecisionState>()
    
    public var ruleToStartState: Array<RuleStartState> = Array<RuleStartState>()
    
    public var ruleToStopState: Array<RuleStopState> = Array<RuleStopState>()
    
    public let modeNameToStartState: Map<String, TokensStartState> = Map<String, TokensStartState>()
    
    public let grammarType: ATNType = ATNType()
    
    public let maxTokenType: Int32 = 0
    
    public var ruleToTokenType: Array<Int32> = Array<Int32>()
    
    public var lexerActions: Array<LexerAction> = Array<LexerAction>()
    
    public let modeToStartState: List<TokensStartState> = List<TokensStartState>()
    
    public init (grammarType: ATNType, maxTokenType: Int32){

    }

    public open func nextTokens (s: ATNState, ctx: RuleContext): IntervalSet {
        return IntervalSet()
    }

    public open func nextTokens (s: ATNState): IntervalSet {
        return IntervalSet()
    }

    public open func addState (state: ATNState): Unit {
        
    }

    public open func removeState (state: ATNState): Unit {
        
    }

    public open func defineDecisionState (s: DecisionState): Int32 {
        return 0
    }

    public open func getDecisionState (decision: Int32): DecisionState {
        return DecisionState()
    }

    public open func getNumberOfDecisions (): Int32 {
        return 0
    }

    public open func getExpectedTokens (stateNumber: Int32, context: RuleContext): IntervalSet {
        return IntervalSet()
    }

    public init() {}
}


