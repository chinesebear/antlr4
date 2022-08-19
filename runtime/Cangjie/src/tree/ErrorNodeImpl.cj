package default

// import org.antlr.v4.runtime.Token;

open public class ErrorNodeImpl <: TerminalNodeImpl & ErrorNode {

    public init (token: Option<Token>){

    }

    public override func accept (visitor: Option<ParseTreeVisitor<T>>): T {
  //    return visitor.visitErrorNode(this);

        return T()
    }

    public init() {}
}


