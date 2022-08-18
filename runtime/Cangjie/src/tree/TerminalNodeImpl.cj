package tree

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.misc.Interval;

open public class TerminalNodeImpl <: TerminalNode {

    public var symbol: Token = Token()
    
    public var parent: ParseTree = ParseTree()
    
    public init (symbol: Token){

    }

    public open func getChild (i: Int32): ParseTree {
        return ParseTree()
    }

    public open func getSymbol (): Token {
        return Token()
    }

    public open func getParent (): ParseTree {
        return ParseTree()
    }

    public open func setParent (parent: RuleContext): Unit {
        
    }

    public open func getPayload (): Token {
        return Token()
    }

    public open func getSourceInterval (): Interval {
        return Interval()
    }

    public open func getChildCount (): Int32 {
        return 0
    }

    public open func accept (visitor: ParseTreeVisitor< T>): T {
        return T()
    }

    public open func getText (): String {
        return ""
    }

    public open func toStringTree (parser: Parser): String {
        return ""
    }

    public open func toString (): String {
        return ""
    }

    public open func toStringTree (): String {
        return ""
    }

    public init() {}
}


