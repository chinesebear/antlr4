package default

// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.tree.ErrorNode;
// import org.antlr.v4.runtime.tree.ErrorNodeImpl;
// import org.antlr.v4.runtime.tree.ParseTree;
from std import collection.*
// import org.antlr.v4.runtime.tree.TerminalNode;
// import org.antlr.v4.runtime.tree.TerminalNodeImpl;
// import java.util.Collections;

open public class ParserRuleContext <: RuleContext {

    public var children: List<ParseTree> = List<ParseTree>()
    
    public var start: Token = Token()
    
    public var stop: Token = Token()
    
    public var exception: RecognitionException = RecognitionException()
    
    public init (){

    }

    public open func copyFrom (ctx: ParserRuleContext): Unit {
        
    }

    public init (parent: ParserRuleContext, invokingStateNumber: Int32){

    }

    public open func enterRule (listener: ParseTreeListener): Unit {
        
    }

    public open func exitRule (listener: ParseTreeListener): Unit {
        
    }

    public open func addAnyChild<T>(t: T): T where T <: ParseTree {
        return T()
    }

    public open func addChild (ruleInvocation: RuleContext): RuleContext {
        return RuleContext()
    }

    public open func addChild (t: TerminalNode): TerminalNode {
        return TerminalNode()
    }

    public open func addErrorNode (errorNode: ErrorNode): ErrorNode {
        return ErrorNode()
    }

    public open func addChild (matchedToken: Token): TerminalNode {
        return TerminalNode()
    }

    public open func addErrorNode (badToken: Token): ErrorNode {
        return ErrorNode()
    }

    public open func removeLastChild (): Unit {
        
    }

    public open override func getParent (): ParserRuleContext {
        return ParserRuleContext()
    }

    public open override func getChild (i: Int32): ParseTree {
        return ParseTree()
    }

    public open func getChild<T> (ctxType: Class< T>, i: Int32): T where T <: ParseTree {
        return T()
    }

    public open func getToken (ttype: Int32, i: Int32): TerminalNode {
        return TerminalNode()
    }

    public open func getTokens (ttype: Int32): List<TerminalNode> {
        return List<TerminalNode>()
    }

    public open func getRuleContext<T>(ctxType: Class< T>, i: Int32): T where T <: ParserRuleContext {
        return T()
    }

    public open func getRuleContexts<T> (ctxType: Class< T>): List<T> where T <: ParserRuleContext{
        return List<T>()
    }

    public open override func getChildCount (): Int32 {
        return 0
    }

    public open override func getSourceInterval (): Interval {
        return Interval()
    }

    public open func getStart (): Token {
        return Token()
    }

    public open func getStop (): Token {
        return Token()
    }

    public open func toInfoString (recognizer: Parser): String {
        return ""
    }

}


