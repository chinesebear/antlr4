package tree

// import org.antlr.v4.runtime.ParserRuleContext;
import atn.*

public interface ParseTreeListener {

    func visitTerminal (node: TerminalNode): Unit 

    func visitErrorNode (node: ErrorNode): Unit 

    func enterEveryRule (ctx: ParserRuleContext): Unit 

    func exitEveryRule (ctx: ParserRuleContext): Unit 

}


