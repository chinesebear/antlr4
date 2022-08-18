package tree

// import org.antlr.v4.runtime.ParserRuleContext;

open public class ParseTreeWalker {

    public static let DEFAULT: ParseTreeWalker = ParseTreeWalker()
    
    public open func walk (listener: ParseTreeListener, t: ParseTree): Unit {
        
    }

    protected open func enterRule (listener: ParseTreeListener, r: RuleNode): Unit {
        
    }

    protected open func exitRule (listener: ParseTreeListener, r: RuleNode): Unit {
        
    }

    public init() {}
}


