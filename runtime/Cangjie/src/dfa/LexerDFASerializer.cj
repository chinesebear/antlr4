package dfa

// import org.antlr.v4.runtime.VocabularyImpl;

open public class LexerDFASerializer <: DFASerializer {

    public init (dfa: DFA){

    }

    protected open override func getEdgeLabel (i: Int32): String {
        return ""
    }

    public init() {}
}


