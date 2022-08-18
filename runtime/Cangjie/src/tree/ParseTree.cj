package default

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;

public interface ParseTree <: SyntaxTree {

    override func getParent (): Option<ParseTree> 

    override func getChild (i: Int32): Option<ParseTree> 

    func setParent (parent: RuleContext): Unit 

    func accept (visitor: Option<ParseTreeVisitor<T>>): T 

    func getText (): String 

    func toStringTree (parser: Option<Parser>): String 

}


