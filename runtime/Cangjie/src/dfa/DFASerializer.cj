package dfa

// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
from std import collection.*

open public class DFASerializer {

    private let dfa: DFA = DFA()
    
    private let vocabulary: Vocabulary = Vocabulary()
    
    public init (dfa: DFA, tokenNames: Array<String>){

    }

    public init (dfa: DFA, vocabulary: Vocabulary){

    }

    public open func toString (): String {
        return ""
    }

    protected open func getEdgeLabel (i: Int32): String {
        return ""
    }

    protected open func getStateString (s: DFAState): String {
        return ""
    }

    public init() {}
}


