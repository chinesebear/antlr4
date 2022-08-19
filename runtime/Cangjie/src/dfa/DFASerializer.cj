package default

// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
from std import collection.*

open public class DFASerializer {

    private let dfa: DFA = DFA()
    
    private let vocabulary: Option<Vocabulary> = Option<Vocabulary>.None
    
    public init (dfa: DFA, tokenNames: Array<String>){

    }

    public init (dfa: DFA, vocabulary: Option<Vocabulary>){

    }

    public open func toString (): String {
  //    if (dfa.s0 == null) return null;
  //    StringBuilder buf = new StringBuilder();
  //    List<DFAState> states = dfa.getStates();
  //    for (DFAState s : states) {
  //        int n = 0;
  //        if (s.edges != null) n = s.edges.length;
  //        for (int i = 0; i < n; i++) {
  //            DFAState t = s.edges[i];
  //            if (t != null && t.stateNumber != Integer.MAX_VALUE) {
  //                buf.append(getStateString(s));
  //                String label = getEdgeLabel(i);
  //                buf.append("-").append(label).append("->").append(getStateString(t)).append('\n');
  //    String output = buf.toString();
  //    if (output.length() == 0) return null;
  //    return output;

        return ""
    }

    protected open func getEdgeLabel (i: Int32): String {
  //    return vocabulary.getDisplayName(i - 1);

        return ""
    }

    protected open func getStateString (s: DFAState): String {
  //    int n = s.stateNumber;
  //    final String baseStateStr = (s.isAcceptState ? ":" : "") + "s" + n + (s.requiresFullContext ? "^" : "");
  //    if (s.isAcceptState) {
  //        if (s.predicates != null) {
  //            return baseStateStr + "=>" + Arrays.toString(s.predicates);
  //        } else {
  //            return baseStateStr + "=>" + s.prediction;
  //    } else {
  //        return baseStateStr;

        return ""
    }

    public init() {}
}


