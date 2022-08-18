package default

// import org.antlr.v4.runtime.ParserRuleContext;

open public class ParseTreeWalker {

    public static let DEFAULT: ParseTreeWalker = ParseTreeWalker()
    
    public open func walk (listener: Option<ParseTreeListener>, t: Option<ParseTree>): Unit {
  //    if (t instanceof ErrorNode) {
  //        listener.visitErrorNode((ErrorNode)t);
  //        return;
  //    } else if (t instanceof TerminalNode) {
  //        listener.visitTerminal((TerminalNode)t);
  //        return;
  //    RuleNode r = (RuleNode)t;
  //    enterRule(listener, r);
  //    int n = r.getChildCount();
  //    for (int i = 0; i < n; i++) {
  //        walk(listener, r.getChild(i));
  //    exitRule(listener, r);

        
    }

    protected open func enterRule (listener: Option<ParseTreeListener>, r: Option<RuleNode>): Unit {
  //    ParserRuleContext ctx = (ParserRuleContext)r.getRuleContext();
  //    listener.enterEveryRule(ctx);
  //    ctx.enterRule(listener);

        
    }

    protected open func exitRule (listener: Option<ParseTreeListener>, r: Option<RuleNode>): Unit {
  //    ParserRuleContext ctx = (ParserRuleContext)r.getRuleContext();
  //    ctx.exitRule(listener);
  //    listener.exitEveryRule(ctx);

        
    }

    public init() {}
}


