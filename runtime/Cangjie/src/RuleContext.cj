package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.ParseTreeVisitor;
// import org.antlr.v4.runtime.tree.RuleNode;
// import org.antlr.v4.runtime.tree.Trees;
from std import collection.*

open public class RuleContext <: RuleNode {

    public static let EMPTY: ParserRuleContext = ParserRuleContext()
    
    public var parent: RuleContext = RuleContext()
    
    public var invokingState: Int32 = -1
    
    public init (){

    }

    public init (parent: RuleContext, invokingState: Int32){

    }

    public open func depth (): Int32 {
        return 0
    }

    public open func isEmpty (): Bool {
        return true
    }

    public open func getSourceInterval (): Interval {
        return Interval()
    }

    public open func getRuleContext (): RuleContext {
        return RuleContext()
    }

    public open func getParent (): RuleContext {
        return RuleContext()
    }

    public open func getPayload (): RuleContext {
        return RuleContext()
    }

    public open func getText (): String {
        return ""
    }

    public open func getRuleIndex (): Int32 {
        return 0
    }

    public open func getAltNumber (): Int32 {
        return 0
    }

    public open func setAltNumber (altNumber: Int32): Unit {
        
    }

    public open func setParent (parent: RuleContext): Unit {
        
    }

    public open func getChild (i: Int32): ParseTree {
        return ParseTree()
    }

    public open func getChildCount (): Int32 {
        return 0
    }

    public open func accept (visitor: ParseTreeVisitor< T>): T {
        return T()
    }

    public open func toStringTree (recog: Parser): String {
        return ""
    }

    public open func toStringTree (ruleNames: List<String>): String {
        return ""
    }

    public open func toStringTree (): String {
        return ""
    }

    public open func toString (): String {
        return ""
    }

    public open func toString (recog: Recognizer<T, T>): String {
        return ""
    }

    public open func toString (ruleNames: List<String>): String {
        return ""
    }

    public open func toString (recog: Recognizer<T, T>, stop: RuleContext): String {
        return ""
    }

    public open func toString (ruleNames: List<String>, stop: RuleContext): String {
        return ""
    }

}


