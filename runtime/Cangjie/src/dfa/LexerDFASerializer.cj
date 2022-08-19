package default

// import org.antlr.v4.runtime.VocabularyImpl;

open public class LexerDFASerializer <: DFASerializer {

    public init (dfa: DFA){

    }

    protected open override func getEdgeLabel (i: Int32): String {
  //    return new StringBuilder("\'").appendCodePoint(i).append("\'").toString();

        return ""
    }

    public init() {}
}


