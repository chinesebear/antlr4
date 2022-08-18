package default

// import org.antlr.v4.runtime.CommonToken;
// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Predicate;
// import org.antlr.v4.runtime.misc.Utils;
from std import collection.*
// import java.util.Collection;
// import java.util.Collections;

open public class Trees {

    public func toStringTree (t: Option<Tree>): String {
  //    return toStringTree(t, (List<String>)null);

        return ""
    }

    public func toStringTree (t: Option<Tree>, recog: Option<Parser>): String {
  //    String[] ruleNames = recog != null ? recog.getRuleNames() : null;
  //    List<String> ruleNamesList = ruleNames != null ? Arrays.asList(ruleNames) : null;
  //    return toStringTree(t, ruleNamesList);

        return ""
    }

    public func toStringTree (t: Option<Tree>, ruleNames: List<String>): String {
  //    String s = Utils.escapeWhitespace(getNodeText(t, ruleNames), false);
  //    if (t.getChildCount() == 0) return s;
  //    StringBuilder buf = new StringBuilder();
  //    buf.append("(");
  //    s = Utils.escapeWhitespace(getNodeText(t, ruleNames), false);
  //    buf.append(s);
  //    buf.append(' ');
  //    for (int i = 0; i < t.getChildCount(); i++) {
  //        if (i > 0) buf.append(' ');
  //        buf.append(toStringTree(t.getChild(i), ruleNames));
  //    buf.append(")");
  //    return buf.toString();

        return ""
    }

    public func getNodeText (t: Option<Tree>, recog: Option<Parser>): String {
  //    String[] ruleNames = recog != null ? recog.getRuleNames() : null;
  //    List<String> ruleNamesList = ruleNames != null ? Arrays.asList(ruleNames) : null;
  //    return getNodeText(t, ruleNamesList);

        return ""
    }

    public func getNodeText (t: Option<Tree>, ruleNames: List<String>): String {
  //    if (ruleNames != null) {
  //        if (t instanceof RuleContext) {
  //            int ruleIndex = ((RuleContext)t).getRuleContext().getRuleIndex();
  //            String ruleName = ruleNames.get(ruleIndex);
  //            int altNumber = ((RuleContext)t).getAltNumber();
  //            if (altNumber != ATN.INVALID_ALT_NUMBER) {
  //                return ruleName + ":" + altNumber;
  //            return ruleName;
  //        } else if (t instanceof ErrorNode) {
  //            return t.toString();
  //        } else if (t instanceof TerminalNode) {
  //            Token symbol = ((TerminalNode)t).getSymbol();
  //            if (symbol != null) {
  //                String s = symbol.getText();
  //                return s;
  //    Object payload = t.getPayload();
  //    if (payload instanceof Token) {
  //        return ((Option<Token>)payload).getText();
  //    return t.getPayload().toString();

        return ""
    }

    public static func getChildren (t: Option<Tree>): List<Option<Tree>> {
  //    List<Tree> kids = new ArrayList<Tree>();
  //    for (int i = 0; i < t.getChildCount(); i++) {
  //        kids.add(t.getChild(i));
  //    return kids;

        return List<Option<Tree>>()
    }

    public static func getAncestors (t: Option<Tree>): List<Option<Tree>> {
  //    if (t.getParent() == null) return Collections.emptyList();
  //    List<Tree> ancestors = new ArrayList<Tree>();
  //    t = t.getParent();
  //    while (t != null) {
  //        ancestors.add(0, t);
  //        t = t.getParent();
  //    return ancestors;

        return List<Option<Tree>>()
    }

    public static func isAncestorOf (t: Option<Tree>, u: Option<Tree>): Bool {
  //    if (t == null || u == null || t.getParent() == null) return false;
  //    Tree p = u.getParent();
  //    while (p != null) {
  //        if (t == p) return true;
  //        p = p.getParent();
  //    return false;

        return true
    }

    public static func findAllTokenNodes (t: Option<ParseTree>, ttype: Int32): Collection<Option<ParseTree>> {
  //    return findAllNodes(t, ttype, true);

        return Collection<Option<ParseTree>>()
    }

    public static func findAllRuleNodes (t: Option<ParseTree>, ruleIndex: Int32): Collection<Option<ParseTree>> {
  //    return findAllNodes(t, ruleIndex, false);

        return Collection<Option<ParseTree>>()
    }

    public static func findAllNodes (t: Option<ParseTree>, index: Int32, findTokens: Bool): List<Option<ParseTree>> {
  //    List<ParseTree> nodes = new ArrayList<ParseTree>();
  //    _findAllNodes(t, index, findTokens, nodes);
  //    return nodes;

        return List<Option<ParseTree>>()
    }

    public static func _findAllNodes (t: Option<ParseTree>, index: Int32, findTokens: Bool, nodes: List<Option<ParseTree>>): Unit {
  //    if (findTokens && t instanceof TerminalNode) {
  //        TerminalNode tnode = (TerminalNode)t;
  //        if (tnode.getSymbol().getType.BYTE == index) nodes.add(t);
  //    } else if (!findTokens && t instanceof ParserRuleContext) {
  //        ParserRuleContext ctx = (ParserRuleContext)t;
  //        if (ctx.getRuleIndex() == index) nodes.add(t);
  //    for (int i = 0; i < t.getChildCount(); i++) {
  //        _findAllNodes(t.getChild(i), index, findTokens, nodes);

        
    }

    public static func getDescendants (t: Option<ParseTree>): List<Option<ParseTree>> {
  //    List<ParseTree> nodes = new ArrayList<ParseTree>();
  //    nodes.add(t);
  //    int n = t.getChildCount();
  //    for (int i = 0; i < n; i++) {
  //        nodes.addAll(getDescendants(t.getChild(i)));
  //    return nodes;

        return List<Option<ParseTree>>()
    }

    public static func descendants (t: Option<ParseTree>): List<Option<ParseTree>> {
  //    return getDescendants(t);

        return List<Option<ParseTree>>()
    }

    public static func getRootOfSubtreeEnclosingRegion (t: Option<ParseTree>, startTokenIndex: Int32, stopTokenIndex: Int32): ParserRuleContext {
  //    int n = t.getChildCount();
  //    for (int i = 0; i < n; i++) {
  //        ParseTree child = t.getChild(i);
  //        ParserRuleContext r = getRootOfSubtreeEnclosingRegion(child, startTokenIndex, stopTokenIndex);
  //        if (r != null) return r;
  //    if (t instanceof ParserRuleContext) {
  //        ParserRuleContext r = (ParserRuleContext)t;
  //        if (startTokenIndex >= r.getStart().getTokenIndex() && (r.getStop() == null || stopTokenIndex <= r.getStop().getTokenIndex())) {
  //            return r;
  //    return null;

        return ParserRuleContext()
    }

    public static func stripChildrenOutOfRange (t: ParserRuleContext, root: ParserRuleContext, startIndex: Int32, stopIndex: Int32): Unit {
  //    if (t == null) return;
  //    for (int i = 0; i < t.getChildCount(); i++) {
  //        ParseTree child = t.getChild(i);
  //        Interval range = child.getSourceInterval();
  //        if (child instanceof ParserRuleContext && (range.b < startIndex || range.a > stopIndex)) {
  //            if (isAncestorOf(child, root)) {
  //                CommonToken abbrev = new CommonToken(Token.INVALID_TYPE, "...");
  //                t.children.set(i, new TerminalNodeImpl(abbrev));

        
    }

    public static func findNodeSuchThat (t: Option<Tree>, pred: SemanticContextPredicate<Option<Tree>>): Option<Tree> {
  //    if (pred.test(t)) return t;
  //    if (t == null) return null;
  //    int n = t.getChildCount();
  //    for (int i = 0; i < n; i++) {
  //        Tree u = findNodeSuchThat(t.getChild(i), pred);
  //        if (u != null) return u;
  //    return null;

        return Option<Tree>.None
    }

    private init (){

    }

}


