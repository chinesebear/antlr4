package atn

// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
from std import collection.*

open public class LL1Analyzer {

    public static let HIT_PRED: Int32 = 0
    
    public let atn: ATN = ATN()
    
    public init (atn: ATN){

    }

    public open func getDecisionLookahead (s: ATNState): Array<IntervalSet> {
        return Array<IntervalSet>()
    }

    public open func LOOK (s: ATNState, ctx: RuleContext): IntervalSet {
        return IntervalSet()
    }

    public open func LOOK (s: ATNState, stopState: ATNState, ctx: RuleContext): IntervalSet {
        return IntervalSet()
    }

    protected open func LOOK (s: ATNState, stopState: ATNState, ctx: PredictionContext, look: IntervalSet, lookBusy: Set<ATNConfig>, calledRuleStack: BitSet, seeThruPreds: Bool, addEOF: Bool): Unit {
        
    }

    public init() {}
}


