package atn

// import org.antlr.v4.runtime.dfa.DFA;
from std import collection.*

open public class ParseInfo {

    protected let atnSimulator: ProfilingATNSimulator = ProfilingATNSimulator()
    
    public init (atnSimulator: ProfilingATNSimulator){

    }

    public open func getDecisionInfo (): Array<DecisionInfo> {
        return Array<DecisionInfo>()
    }

    public open func getLLDecisions (): List<Integer> {
        return List<Integer>()
    }

    public open func getTotalTimeInPrediction (): Int64 {
        return 0
    }

    public open func getTotalSLLLookaheadOps (): Int64 {
        return 0
    }

    public open func getTotalLLLookaheadOps (): Int64 {
        return 0
    }

    public open func getTotalSLLATNLookaheadOps (): Int64 {
        return 0
    }

    public open func getTotalLLATNLookaheadOps (): Int64 {
        return 0
    }

    public open func getTotalATNLookaheadOps (): Int64 {
        return 0
    }

    public open func getDFASize (): Int32 {
        return 0
    }

    public open func getDFASize (decision: Int32): Int32 {
        return 0
    }

    public init() {}
}


