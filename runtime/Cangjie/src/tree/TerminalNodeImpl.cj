package default

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.misc.Interval;

open public class TerminalNodeImpl <: TerminalNode {

    public var symbol: Option<Token> = Option<Token>.None
    
    public var parent: Option<ParseTree> = Option<ParseTree>.None
    
    public init (symbol: Option<Token>){

    }

    public open func getChild (i: Int32): Option<ParseTree> {
  //    return null;

        return Option<ParseTree>.None
    }

    public open func getSymbol (): Option<Token> {
  //    return symbol;

        return Option<Token>.None
    }

    public open func getParent (): Option<ParseTree> {
  //    return parent;

        return Option<ParseTree>.None
    }

    public open func setParent (parent: RuleContext): Unit {
  //    this.parent = parent;

        
    }

    public open func getPayload (): Option<Token> {
  //    return symbol;

        return Option<Token>.None
    }

    public open func getSourceInterval (): Interval {
  //    if (symbol == null) return Interval.INVALID;
  //    int tokenIndex = symbol.getTokenIndex();
  //    return new Interval(tokenIndex, tokenIndex);

        return Interval()
    }

    public open func getChildCount (): Int32 {
  //    return 0;

        return 0
    }

    public func accept (visitor: Option<ParseTreeVisitor<T>>): T {
  //    return visitor.visitTerminal(this);

        return T()
    }

    public open func getText (): String {
  //    return symbol.getText();

        return ""
    }

    public open func toStringTree (parser: Option<Parser>): String {
  //    return toString();

        return ""
    }

    public open func toString (): String {
  //    if (symbol.getType.BYTE == Option<Token>.EOF) return "<EOF>";
  //    return symbol.getText();

        return ""
    }

    public open func toStringTree (): String {
  //    return toString();

        return ""
    }

    public init() {}
}


