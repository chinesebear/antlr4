package default

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
from std import collection.*
// import org.antlr.v4.runtime.atn.DecisionState;
// import org.antlr.v4.runtime.atn.StarLoopEntryState;
// import java.util.Collections;
// import java.util.Comparator;

open public class DFA {

    public let states: Map<DFAState, DFAState> = Map<DFAState, DFAState>()
    
    public var s0: DFAState = DFAState()
    
    public let decision: Int32 = 0
    
    public let atnStartState: Option<DecisionState> = Option<DecisionState>.None
    
    private let precedenceDfa: Bool = true
    
    public init (atnStartState: Option<DecisionState>){

    }

    public init (atnStartState: Option<DecisionState>, decision: Int32){

    }

    public open func isPrecedenceDfa (): Bool {
  //    return precedenceDfa;

        return true
    }

    public open func getPrecedenceStartState (precedence: Int32): DFAState {
  //    if (!isPrecedenceDfa()) {
  //        throw new IllegalStateException("Only precedence DFAs may contain a precedence start state.");
  //    if (precedence < 0 || precedence >= s0.edges.length) {
  //        return null;
  //    return s0.edges[precedence];

        return DFAState()
    }

    public open func setPrecedenceStartState (precedence: Int32, startState: DFAState): Unit {
  //    if (!isPrecedenceDfa()) {
  //        throw new IllegalStateException("Only precedence DFAs may contain a precedence start state.");
  //    if (precedence < 0) {
  //        return;
  //    synchronized (s0) {
  //        if (precedence >= s0.edges.length) {
  //            s0.edges = Arrays.copyOf(s0.edges, precedence + 1);
  //        s0.edges[precedence] = startState;

        
    }

    public open func setPrecedenceDfa (precedenceDfa: Bool): Unit {
  //    if (precedenceDfa != isPrecedenceDfa()) {
  //        throw new UnsupportedOperationException("The precedenceDfa field cannot change after a DFA is constructed.");

        
    }

    public open func getStates (): List<DFAState> {
  //    List<DFAState> result = new ArrayList<DFAState>(states.keySet());
  //    Collections.sort(result, new Comparator<DFAState>(){
  //        
  //        @Override()
  //        public int compare(DFAState o1, DFAState o2) {
  //            return o1.stateNumber - o2.stateNumber;
  //    });
  //    return result;

        return List<DFAState>()
    }

    public open func toString (): String {
  //    return toString(VocabularyImpl.EMPTY_VOCABULARY);

        return ""
    }

    public open func toString (tokenNames: Array<String>): String {
  //    if (s0 == null) return "";
  //    DFASerializer serializer = new DFASerializer(this, tokenNames);
  //    return serializer.toString();

        return ""
    }

    public open func toString (vocabulary: Option<Vocabulary>): String {
  //    if (s0 == null) {
  //        return "";
  //    DFASerializer serializer = new DFASerializer(this, vocabulary);
  //    return serializer.toString();

        return ""
    }

    public open func toLexerString (): String {
  //    if (s0 == null) return "";
  //    DFASerializer serializer = new LexerDFASerializer(this);
  //    return serializer.toString();

        return ""
    }

    public init() {}
}


