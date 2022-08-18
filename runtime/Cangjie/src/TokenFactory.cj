package default

// import org.antlr.v4.runtime.misc.Pair;

public interface TokenFactory<Symbol> where Symbol<: Token {

    func create (source: Pair<TokenSource, CharStream>, `type`: Int32, text: String, channel: Int32, start: Int32, stop: Int32, line: Int32, charPositionInLine: Int32): Symbol 

    func create (`type`: Int32, text: String): Symbol 

}


