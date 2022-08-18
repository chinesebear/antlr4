package tree

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;

public interface ParseTree <: SyntaxTree {

    func getParent (): ParseTree 

    func getChild (i: Int32): ParseTree 

    func setParent (parent: RuleContext): Unit 

    func accept (visitor: ParseTreeVisitor< T>): T 

    func getText (): String 

    func toStringTree (parser: Parser): String 

}


