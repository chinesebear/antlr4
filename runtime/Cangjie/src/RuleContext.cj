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
  //    int n = 0;
  //    RuleContext p = this;
  //    while (p != null) {
  //        p = p.parent;
  //        n++;
  //    return n;

        return 0
    }

    public open func isEmpty (): Bool {
  //    return invokingState == -1;

        return true
    }

    public open func getSourceInterval (): Interval {
  //    return Interval.INVALID;

        return Interval()
    }

    public open func getRuleContext (): RuleContext {
  //    return this;

        return RuleContext()
    }

    public open func getParent (): RuleContext {
  //    return parent;

        return RuleContext()
    }

    public open func getPayload (): RuleContext {
  //    return this;

        return RuleContext()
    }

    public open func getText (): String {
  //    if (getChildCount() == 0) {
  //        return "";
  //    StringBuilder builder = new StringBuilder();
  //    for (int i = 0; i < getChildCount(); i++) {
  //        builder.append(getChild(i).getText());
  //    return builder.toString();

        return ""
    }

    public open func getRuleIndex (): Int32 {
  //    return -1;

        return 0
    }

    public open func getAltNumber (): Int32 {
  //    return ATN.INVALID_ALT_NUMBER;

        return 0
    }

    public open func setAltNumber (altNumber: Int32): Unit {

        
    }

    public open func setParent (parent: RuleContext): Unit {
  //    this.parent = parent;

        
    }

    public open func getChild (i: Int32): Option<ParseTree> {
  //    return null;

        return Option<ParseTree>.None
    }

    public open func getChildCount (): Int32 {
  //    return 0;

        return 0
    }

    public func accept (visitor: Option<ParseTreeVisitor<T>>): T {
  //    return visitor.visitChildren(this);

        return T()
    }

    public open func toStringTree (recog: Option<Parser>): String {
  //    return Trees.toStringTree(this, recog);

        return ""
    }

    public open func toStringTree (ruleNames: List<String>): String {
  //    return Trees.toStringTree(this, ruleNames);

        return ""
    }

    public open func toStringTree (): String {
  //    return toStringTree((List<String>)null);

        return ""
    }

    public open func toString (): String {
  //    return toString((List<String>)null, (RuleContext)null);

        return ""
    }

    public open func toString (recog: Recognizer<T, T>): String {
  //    return toString(recog, ParserRuleContext.EMPTY);

        return ""
    }

    public open func toString (ruleNames: List<String>): String {
  //    return toString(ruleNames, null);

        return ""
    }

    public open func toString (recog: Recognizer<T, T>, stop: RuleContext): String {
  //    String[] ruleNames = recog != null ? recog.getRuleNames() : null;
  //    List<String> ruleNamesList = ruleNames != null ? Arrays.asList(ruleNames) : null;
  //    return toString(ruleNamesList, stop);

        return ""
    }

    public open func toString (ruleNames: List<String>, stop: RuleContext): String {
  //    StringBuilder buf = new StringBuilder();
  //    RuleContext p = this;
  //    buf.append("[");
  //    while (p != null && p != stop) {
  //        if (ruleNames == null) {
  //            if (!p.isEmpty()) {
  //                buf.append(p.invokingState);
  //        } else {
  //            int ruleIndex = p.getRuleIndex();
  //            String ruleName = ruleIndex >= 0 && ruleIndex < ruleNames.size() ? ruleNames.get(ruleIndex) : Integer.toString(ruleIndex);
  //            buf.append(ruleName);
  //        if (p.parent != null && (ruleNames != null || !p.parent.isEmpty())) {
  //            buf.append(" ");
  //        p = p.parent;
  //    buf.append("]");
  //    return buf.toString();

        return ""
    }

}


