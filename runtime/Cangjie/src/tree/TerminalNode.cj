package default

// import org.antlr.v4.runtime.Token;

public interface TerminalNode <: ParseTree {

    func getSymbol (): Option<Token> 

}


