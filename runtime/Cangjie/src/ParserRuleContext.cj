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

    public var children: List<Option<ParseTree>> = List<Option<ParseTree>>()
    
    public var start: Option<Token> = Option<Token>.None
    
    public var stop: Option<Token> = Option<Token>.None
    
    public var exception: RecognitionException = RecognitionException()
    
    public init (){

    }

    public open func copyFrom (ctx: ParserRuleContext): Unit {
  //    this.parent = ctx.parent;
  //    this.invokingState = ctx.invokingState;
  //    this.start = ctx.start;
  //    this.stop = ctx.stop;
  //    if (ctx.children != null) {
  //        this.children = new ArrayList<>();
  //        for (ParseTree child : ctx.children) {
  //            if (child instanceof ErrorNode) {
  //                addChild((ErrorNode)child);

        
    }

    public init (parent: ParserRuleContext, invokingStateNumber: Int32){

    }

    public open func enterRule (listener: Option<ParseTreeListener>): Unit {

        
    }

    public open func exitRule (listener: Option<ParseTreeListener>): Unit {

        
    }

    public func addAnyChild<T> (t: T): T where T <: Option<ParseTree> {
  //    if (children == null) children = new ArrayList<>();
  //    children.add(t);
  //    return t;

        return (Object() as T).getOrThrow()
    }

    public open func addChild (ruleInvocation: RuleContext): RuleContext {
  //    return addAnyChild(ruleInvocation);

        return RuleContext()
    }

    public open func addChild (t: Option<TerminalNode>): Option<TerminalNode> {
  //    t.setParent(this);
  //    return addAnyChild(t);

        return Option<TerminalNode>.None
    }

    public open func addErrorNode (errorNode: Option<ErrorNode>): Option<ErrorNode> {
  //    errorNode.setParent(this);
  //    return addAnyChild(errorNode);

        return Option<ErrorNode>.None
    }

    public open func addChild (matchedToken: Option<Token>): Option<TerminalNode> {
  //    TerminalNodeImpl t = new TerminalNodeImpl(matchedToken);
  //    addAnyChild(t);
  //    t.setParent(this);
  //    return t;

        return Option<TerminalNode>.None
    }

    public open func addErrorNode (badToken: Option<Token>): Option<ErrorNode> {
  //    ErrorNodeImpl t = new ErrorNodeImpl(badToken);
  //    addAnyChild(t);
  //    t.setParent(this);
  //    return t;

        return Option<ErrorNode>.None
    }

    public open func removeLastChild (): Unit {
  //    if (children != null) {
  //        children.remove(children.size() - 1);

        
    }

    public open override func getParent (): ParserRuleContext {
  //    return (ParserRuleContext)super.getParent();

        return ParserRuleContext()
    }

    public open override func getChild (i: Int32): Option<ParseTree> {
  //    return children != null && i >= 0 && i < children.size() ? children.get(i) : null;

        return Option<ParseTree>.None
    }

    public func getChild<T> (ctxType: Class<T>, i: Int32): T where T <: Option<ParseTree> {
  //    if (children == null || i < 0 || i >= children.size()) {
  //        return null;
  //    int j = -1;
  //    for (ParseTree o : children) {
  //        if (ctxType.isInstance(o)) {
  //            j++;
  //            if (j == i) {
  //                return ctxType.cast(o);
  //    return null;

        return (Object() as T).getOrThrow()
    }

    public open func getToken (ttype: Int32, i: Int32): Option<TerminalNode> {
  //    if (children == null || i < 0 || i >= children.size()) {
  //        return null;
  //    int j = -1;
  //    for (ParseTree o : children) {
  //        if (o instanceof TerminalNode) {
  //            TerminalNode tnode = (TerminalNode)o;
  //            Token symbol = tnode.getSymbol();
  //            if (symbol.getType.BYTE == ttype) {
  //                j++;
  //                if (j == i) {
  //                    return tnode;
  //    return null;

        return Option<TerminalNode>.None
    }

    public open func getTokens (ttype: Int32): List<Option<TerminalNode>> {
  //    if (children == null) {
  //        return Collections.emptyList();
  //    List<TerminalNode> tokens = null;
  //    for (ParseTree o : children) {
  //        if (o instanceof TerminalNode) {
  //            TerminalNode tnode = (TerminalNode)o;
  //            Token symbol = tnode.getSymbol();
  //            if (symbol.getType.BYTE == ttype) {
  //                if (tokens == null) {
  //                    tokens = new ArrayList<TerminalNode>();
  //                tokens.add(tnode);
  //    if (tokens == null) {
  //        return Collections.emptyList();
  //    return tokens;

        return List<Option<TerminalNode>>()
    }

    public func getRuleContext<T> (ctxType: Class<T>, i: Int32): T where T <: ParserRuleContext {
  //    return getChild(ctxType, i);

        return (Object() as T).getOrThrow()
    }

    public func getRuleContexts<T> (ctxType: Class<T>): List<T> where T <: ParserRuleContext {
  //    if (children == null) {
  //        return Collections.emptyList();
  //    List<T> contexts = null;
  //    for (ParseTree o : children) {
  //        if (ctxType.isInstance(o)) {
  //            if (contexts == null) {
  //                contexts = new ArrayList<T>();
  //            contexts.add(ctxType.cast(o));
  //    if (contexts == null) {
  //        return Collections.emptyList();
  //    return contexts;

        return List<T>()
    }

    public open override func getChildCount (): Int32 {
  //    return children != null ? children.size() : 0;

        return 0
    }

    public open override func getSourceInterval (): Interval {
  //    if (start == null) {
  //        return Interval.INVALID;
  //    if (stop == null || stop.getTokenIndex() < start.getTokenIndex()) {
  //        return Interval.of(start.getTokenIndex(), start.getTokenIndex() - 1);
  //    return Interval.of(start.getTokenIndex(), stop.getTokenIndex());

        return Interval()
    }

    public open func getStart (): Option<Token> {
  //    return start;

        return Option<Token>.None
    }

    public open func getStop (): Option<Token> {
  //    return stop;

        return Option<Token>.None
    }

    public open func toInfoString (recognizer: Option<Parser>): String {
  //    List<String> rules = recognizer.getRuleInvocationStack(this);
  //    Collections.reverse(rules);
  //    return "ParserRuleContext" + rules + "{start=" + start + ", stop=" + stop + '}';

        return ""
    }

}


