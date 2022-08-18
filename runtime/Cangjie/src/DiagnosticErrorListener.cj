package default

// import org.antlr.v4.runtime.atn.ATNConfig;
from std import collection.*
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.misc.Interval;

open public class DiagnosticErrorListener <: BaseErrorListener {

    protected let exactOnly: Bool = true
    
    public init (){

    }

    public init (exactOnly: Bool){

    }

    public open override func reportAmbiguity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {
  //    if (exactOnly && !exact) {
  //        return;
  //    String format = "reportAmbiguity d=%s: ambigAlts=%s, input=\'%s\'";
  //    String decision = getDecisionDescription(recognizer, dfa);
  //    BitSet conflictingAlts = getConflictingAlts(ambigAlts, configs);
  //    String text = recognizer.getTokenStream().getText(Interval.of(startIndex, stopIndex));
  //    String message = String.format(format, decision, conflictingAlts, text);
  //    recognizer.notifyErrorListeners(message);

        
    }

    public open override func reportAttemptingFullContext (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, conflictingAlts: BitSet, configs: ATNConfigSet): Unit {
  //    String format = "reportAttemptingFullContext d=%s, input=\'%s\'";
  //    String decision = getDecisionDescription(recognizer, dfa);
  //    String text = recognizer.getTokenStream().getText(Interval.of(startIndex, stopIndex));
  //    String message = String.format(format, decision, text);
  //    recognizer.notifyErrorListeners(message);

        
    }

    public open override func reportContextSensitivity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, prediction: Int32, configs: ATNConfigSet): Unit {
  //    String format = "reportContextSensitivity d=%s, input=\'%s\'";
  //    String decision = getDecisionDescription(recognizer, dfa);
  //    String text = recognizer.getTokenStream().getText(Interval.of(startIndex, stopIndex));
  //    String message = String.format(format, decision, text);
  //    recognizer.notifyErrorListeners(message);

        
    }

    protected open func getDecisionDescription (recognizer: Option<Parser>, dfa: DFA): String {
  //    int decision = dfa.decision;
  //    int ruleIndex = dfa.atnStartState.ruleIndex;
  //    String[] ruleNames = recognizer.getRuleNames();
  //    if (ruleIndex < 0 || ruleIndex >= ruleNames.length) {
  //        return String.valueOf(decision);
  //    String ruleName = ruleNames[ruleIndex];
  //    if (ruleName == null || ruleName.isEmpty()) {
  //        return String.valueOf(decision);
  //    return String.format("%d (%s)", decision, ruleName);

        return ""
    }

    protected open func getConflictingAlts (reportedAlts: BitSet, configs: ATNConfigSet): BitSet {
  //    if (reportedAlts != null) {
  //        return reportedAlts;
  //    BitSet result = new BitSet();
  //    for (ATNConfig config : configs) {
  //        result.set(config.alt);
  //    return result;

        return BitSet()
    }

}


