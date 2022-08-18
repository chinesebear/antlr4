package default

// import org.antlr.v4.runtime.ParserRuleContext;

public interface ParseTreeListener {

    func visitTerminal (node: Option<TerminalNode>): Unit 

    func visitErrorNode (node: Option<ErrorNode>): Unit 

    func enterEveryRule (ctx: ParserRuleContext): Unit 

    func exitEveryRule (ctx: ParserRuleContext): Unit 

}


