package tree

// import org.antlr.v4.runtime.Token;
import atn.*

open public class ErrorNodeImpl <: TerminalNodeImpl & ErrorNode {

    public init (token: Token){

    }

    public open override func accept (visitor: ParseTreeVisitor< T>): T {
        return T()
    }

    public init() {}
}


