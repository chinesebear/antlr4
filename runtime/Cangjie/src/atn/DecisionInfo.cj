package default

from std import collection.*

open public class DecisionInfo {

    public let decision: Int32 = 0
    
    public var invocations: Int64 = 0
    
    public var timeInPrediction: Int64 = 0
    
    public var SLL_TotalLook: Int64 = 0
    
    public var SLL_MinLook: Int64 = 0
    
    public var SLL_MaxLook: Int64 = 0
    
    public var SLL_MaxLookEvent: LookaheadEventInfo = LookaheadEventInfo()
    
    public var LL_TotalLook: Int64 = 0
    
    public var LL_MinLook: Int64 = 0
    
    public var LL_MaxLook: Int64 = 0
    
    public var LL_MaxLookEvent: LookaheadEventInfo = LookaheadEventInfo()
    
    public let contextSensitivities: List<ContextSensitivityInfo> = List<ContextSensitivityInfo>()
    
    public let errors: List<ErrorInfo> = List<ErrorInfo>()
    
    public let ambiguities: List<AmbiguityInfo> = List<AmbiguityInfo>()
    
    public let predicateEvals: List<PredicateEvalInfo> = List<PredicateEvalInfo>()
    
    public var SLL_ATNTransitions: Int64 = 0
    
    public var SLL_DFATransitions: Int64 = 0
    
    public var LL_Fallback: Int64 = 0
    
    public var LL_ATNTransitions: Int64 = 0
    
    public var LL_DFATransitions: Int64 = 0
    
    public init (decision: Int32){

    }

    public open func toString (): String {
  //    return "{decision=" + decision + ", contextSensitivities=" + contextSensitivities.size() + ", errors=" + errors.size() + ", ambiguities=" + ambiguities.size() + ", SLL_lookahead=" + SLL_TotalLook + ", SLL_ATNTransitions=" + SLL_ATNTransitions + ", SLL_DFATransitions=" + SLL_DFATransitions + ", LL_Fallback=" + LL_Fallback + ", LL_lookahead=" + LL_TotalLook + ", LL_ATNTransitions=" + LL_ATNTransitions + '}';

        return ""
    }

    public init() {}
}


