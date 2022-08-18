package tree

// import org.antlr.v4.runtime.Token;

public interface TerminalNode <: ParseTree {

    func getSymbol (): Token 

}


