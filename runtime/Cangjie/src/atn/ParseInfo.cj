package default

// import org.antlr.v4.runtime.dfa.DFA;
from std import collection.*

open public class ParseInfo {

    protected let atnSimulator: ProfilingATNSimulator = ProfilingATNSimulator()
    
    public init (atnSimulator: ProfilingATNSimulator){

    }

    public open func getDecisionInfo (): Array<DecisionInfo> {
  //    return atnSimulator.getDecisionInfo();

        return Array<DecisionInfo>()
    }

    public open func getLLDecisions (): List<Integer> {
  //    DecisionInfo[] decisions = atnSimulator.getDecisionInfo();
  //    List<Integer> LL = new ArrayList<Integer>();
  //    for (int i = 0; i < decisions.length; i++) {
  //        long fallBack = decisions[i].LL_Fallback;
  //        if (fallBack > 0) LL.add(i);
  //    return LL;

        return List<Integer>()
    }

    public open func getTotalTimeInPrediction (): Int64 {
  //    DecisionInfo[] decisions = atnSimulator.getDecisionInfo();
  //    long t = 0;
  //    for (int i = 0; i < decisions.length; i++) {
  //        t += decisions[i].timeInPrediction;
  //    return t;

        return 0
    }

    public open func getTotalSLLLookaheadOps (): Int64 {
  //    DecisionInfo[] decisions = atnSimulator.getDecisionInfo();
  //    long k = 0;
  //    for (int i = 0; i < decisions.length; i++) {
  //        k += decisions[i].SLL_TotalLook;
  //    return k;

        return 0
    }

    public open func getTotalLLLookaheadOps (): Int64 {
  //    DecisionInfo[] decisions = atnSimulator.getDecisionInfo();
  //    long k = 0;
  //    for (int i = 0; i < decisions.length; i++) {
  //        k += decisions[i].LL_TotalLook;
  //    return k;

        return 0
    }

    public open func getTotalSLLATNLookaheadOps (): Int64 {
  //    DecisionInfo[] decisions = atnSimulator.getDecisionInfo();
  //    long k = 0;
  //    for (int i = 0; i < decisions.length; i++) {
  //        k += decisions[i].SLL_ATNTransitions;
  //    return k;

        return 0
    }

    public open func getTotalLLATNLookaheadOps (): Int64 {
  //    DecisionInfo[] decisions = atnSimulator.getDecisionInfo();
  //    long k = 0;
  //    for (int i = 0; i < decisions.length; i++) {
  //        k += decisions[i].LL_ATNTransitions;
  //    return k;

        return 0
    }

    public open func getTotalATNLookaheadOps (): Int64 {
  //    DecisionInfo[] decisions = atnSimulator.getDecisionInfo();
  //    long k = 0;
  //    for (int i = 0; i < decisions.length; i++) {
  //        k += decisions[i].SLL_ATNTransitions;
  //        k += decisions[i].LL_ATNTransitions;
  //    return k;

        return 0
    }

    public open func getDFASize (): Int32 {
  //    int n = 0;
  //    DFA[] decisionToDFA = atnSimulator.decisionToDFA;
  //    for (int i = 0; i < decisionToDFA.length; i++) {
  //        n += getDFASize(i);
  //    return n;

        return 0
    }

    public open func getDFASize (decision: Int32): Int32 {
  //    DFA decisionToDFA = atnSimulator.decisionToDFA[decision];
  //    return decisionToDFA.states.size();

        return 0
    }

    public init() {}
}


