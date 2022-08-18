package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNDeserializationOptions;
// import org.antlr.v4.runtime.atn.ATNDeserializer;
// import org.antlr.v4.runtime.atn.ATNSimulator;
// import org.antlr.v4.runtime.atn.ATNState;
// import org.antlr.v4.runtime.atn.ParseInfo;
// import org.antlr.v4.runtime.atn.ParserATNSimulator;
// import org.antlr.v4.runtime.atn.PredictionMode;
// import org.antlr.v4.runtime.atn.ProfilingATNSimulator;
// import org.antlr.v4.runtime.atn.RuleTransition;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.misc.IntegerStack;
from std import collection.*
// import org.antlr.v4.runtime.tree.ErrorNode;
// import org.antlr.v4.runtime.tree.ErrorNodeImpl;
// import org.antlr.v4.runtime.tree.ParseTreeWalker;
// import org.antlr.v4.runtime.tree.TerminalNode;
// import org.antlr.v4.runtime.tree.TerminalNodeImpl;
// import org.antlr.v4.runtime.tree.pattern.ParseTreePattern;
// import org.antlr.v4.runtime.tree.pattern.ParseTreePatternMatcher;
// import java.util.Collections;

public abstract class Parser <: Recognizer<Token, ParserATNSimulator> {

    private var bypassAltsAtnCache: ATN = ATN()
    
    protected var errHandler: Option<ANTLRErrorStrategy> = Option<ANTLRErrorStrategy>.None
    
    protected var input: Option<TokenStream> = Option<TokenStream>.None
    
    protected let precedenceStack: IntegerStack = IntegerStack()
    
    protected var ctx: ParserRuleContext = ParserRuleContext()
    
    protected var buildParseTrees: Bool = true
    
    private var tracer: ParserTraceListener = ParserTraceListener()
    
    protected var parseListeners: List<Option<ParseTreeListener>> = List<Option<ParseTreeListener>>()
    
    protected var syntaxErrors: Int32 = 0
    
    protected var matchedEOF: Bool = true
    
    public open func reset (): Unit {
  //    if (getInputStream() != null) getInputStream().seek(0);
  //    _errHandler.reset(this);
  //    _ctx = null;
  //    _syntaxErrors = 0;
  //    matchedEOF = false;
  //    setTrace(false);
  //    _precedenceStack.clear();
  //    _precedenceStack.push(0);
  //    ATNSimulator interpreter = getInterpreter();
  //    if (interpreter != null) {
  //        interpreter.reset();

        
    }

    public open func `match` (ttype: Int32): Option<Token> {
  //    Token t = getCurrentToken();
  //    if (t.getType.BYTE == ttype) {
  //        if (ttype == Token.EOF) {
  //            matchedEOF = true;
  //        _errHandler.reportMatch(this);
  //        consume();
  //    } else {
  //        t = _errHandler.recoverInline(this);
  //        if (_buildParseTrees && t.getTokenIndex() == -1) {
  //            _ctx.addErrorNode(createErrorNode(_ctx, t));
  //    return t;

        return Option<Token>.None
    }

    public open func matchWildcard (): Option<Token> {
  //    Token t = getCurrentToken();
  //    if (t.getType.BYTE > 0) {
  //        _errHandler.reportMatch(this);
  //        consume();
  //    } else {
  //        t = _errHandler.recoverInline(this);
  //        if (_buildParseTrees && t.getTokenIndex() == -1) {
  //            _ctx.addErrorNode(createErrorNode(_ctx, t));
  //    return t;

        return Option<Token>.None
    }

    public open func setBuildParseTree (buildParseTrees: Bool): Unit {
  //    this._buildParseTrees = buildParseTrees;

        
    }

    public open func getBuildParseTree (): Bool {
  //    return _buildParseTrees;

        return true
    }

    public open func setTrimParseTree (trimParseTrees: Bool): Unit {
  //    if (trimParseTrees) {
  //        if (getTrimParseTree()) return;
  //        addParseListener(ParserTrimToSizeListener.INSTANCE);
  //    } else {
  //        removeParseListener(ParserTrimToSizeListener.INSTANCE);

        
    }

    public open func getTrimParseTree (): Bool {
  //    return getParseListeners().contains(ParserTrimToSizeListener.INSTANCE);

        return true
    }

    public open func getParseListeners (): List<Option<ParseTreeListener>> {
  //    List<ParseTreeListener> listeners = _parseListeners;
  //    if (listeners == null) {
  //        return Collections.emptyList();
  //    return listeners;

        return List<Option<ParseTreeListener>>()
    }

    public open func addParseListener (listener: Option<ParseTreeListener>): Unit {
  //    if (listener == null) {
  //        throw new NullPointerException("listener");
  //    if (_parseListeners == null) {
  //        _parseListeners = new ArrayList<ParseTreeListener>();
  //    this._parseListeners.add(listener);

        
    }

    public open func removeParseListener (listener: Option<ParseTreeListener>): Unit {
  //    if (_parseListeners != null) {
  //        if (_parseListeners.remove(listener)) {
  //            if (_parseListeners.isEmpty()) {
  //                _parseListeners = null;

        
    }

    public open func removeParseListeners (): Unit {
  //    _parseListeners = null;

        
    }

    protected open func triggerEnterRuleEvent (): Unit {
  //    for (ParseTreeListener listener : _parseListeners) {
  //        listener.enterEveryRule(_ctx);
  //        _ctx.enterRule(listener);

        
    }

    protected open func triggerExitRuleEvent (): Unit {
  //    for (int i = _parseListeners.size() - 1; i >= 0; i--) {
  //        ParseTreeListener listener = _parseListeners.get(i);
  //        _ctx.exitRule(listener);
  //        listener.exitEveryRule(_ctx);

        
    }

    public open func getNumberOfSyntaxErrors (): Int32 {
  //    return _syntaxErrors;

        return 0
    }

    public open func getTokenFactory (): TokenFactory<T> {
  //    return _input.getTokenSource().getTokenFactory();

        return TokenFactory<T>()
    }

    public open func setTokenFactory (factory: TokenFactory<T>): Unit {
  //    _input.getTokenSource().setTokenFactory(factory);

        
    }

    public open func getATNWithBypassAlts (): ATN {
  //    String serializedAtn = getSerializedATN();
  //    if (serializedAtn == null) {
  //        throw new UnsupportedOperationException("The current parser does not support an ATN with bypass alternatives.");
  //    synchronized (this) {
  //        if (bypassAltsAtnCache != null) {
  //            return bypassAltsAtnCache;
  //        ATNDeserializationOptions deserializationOptions = new ATNDeserializationOptions();
  //        deserializationOptions.setGenerateRuleBypassTransitions(true);
  //        bypassAltsAtnCache = new ATNDeserializer(deserializationOptions).deserialize(serializedAtn.toCharArray());
  //        return bypassAltsAtnCache;

        return ATN()
    }

    public open func compileParseTreePattern (pattern: String, patternRuleIndex: Int32): ParseTreePattern {
  //    if (getTokenStream() != null) {
  //        TokenSource tokenSource = getTokenStream().getTokenSource();
  //        if (tokenSource instanceof Lexer) {
  //            Lexer lexer = (Lexer)tokenSource;
  //            return compileParseTreePattern(pattern, patternRuleIndex, lexer);
  //    throw new UnsupportedOperationException("Parser can\'t discover a lexer to use");

        return ParseTreePattern()
    }

    public open func compileParseTreePattern (pattern: String, patternRuleIndex: Int32, lexer: Option<Lexer>): ParseTreePattern {
  //    ParseTreePatternMatcher m = new ParseTreePatternMatcher(lexer, this);
  //    return m.compile(pattern, patternRuleIndex);

        return ParseTreePattern()
    }

    public open func getErrorHandler (): Option<ANTLRErrorStrategy> {
  //    return _errHandler;

        return Option<ANTLRErrorStrategy>.None
    }

    public open func setErrorHandler (handler: Option<ANTLRErrorStrategy>): Unit {
  //    this._errHandler = handler;

        
    }

    public open func getInputStream (): Option<TokenStream> {
  //    return getTokenStream();

        return Option<TokenStream>.None
    }

    public open func setInputStream (input: Option<IntStream>): Unit {
  //    setTokenStream((TokenStream)input);

        
    }

    public open func getTokenStream (): Option<TokenStream> {
  //    return _input;

        return Option<TokenStream>.None
    }

    public open func setTokenStream (input: Option<TokenStream>): Unit {
  //    this._input = null;
  //    reset();
  //    this._input = input;

        
    }

    public open func getCurrentToken (): Option<Token> {
  //    return _input.LT(1);

        return Option<Token>.None
    }

    public open func notifyErrorListeners (msg: String): Unit {
  //    notifyErrorListeners(getCurrentToken(), msg, null);

        
    }

    public open func notifyErrorListeners (offendingToken: Option<Token>, msg: String, e: RecognitionException): Unit {
  //    _syntaxErrors++;
  //    int line = -1;
  //    int charPositionInLine = -1;
  //    line = offendingToken.getLine();
  //    charPositionInLine = offendingToken.getCharPositionInLine();
  //    ANTLRErrorListener listener = getErrorListenerDispatch();
  //    listener.syntaxError(this, offendingToken, line, charPositionInLine, msg, e);

        
    }

    public open func consume (): Option<Token> {
  //    Token o = getCurrentToken();
  //    if (o.getType.BYTE != EOF) {
  //        getInputStream().consume();
  //    boolean hasListener = _parseListeners != null && !_parseListeners.isEmpty();
  //    if (_buildParseTrees || hasListener) {
  //        if (_errHandler.inErrorRecoveryMode(this)) {
  //            ErrorNode node = _ctx.addErrorNode(createErrorNode(_ctx, o));
  //            if (_parseListeners != null) {
  //                for (ParseTreeListener listener : _parseListeners) {
  //                    listener.visitErrorNode(node);
  //        } else {
  //            TerminalNode node = _ctx.addChild(createTerminalNode(_ctx, o));
  //            if (_parseListeners != null) {
  //                for (ParseTreeListener listener : _parseListeners) {
  //                    listener.visitTerminal(node);
  //    return o;

        return Option<Token>.None
    }

    public open func createTerminalNode (parent: ParserRuleContext, t: Option<Token>): Option<TerminalNode> {
  //    return new TerminalNodeImpl(t);

        return Option<TerminalNode>.None
    }

    public open func createErrorNode (parent: ParserRuleContext, t: Option<Token>): Option<ErrorNode> {
  //    return new ErrorNodeImpl(t);

        return Option<ErrorNode>.None
    }

    protected open func addContextToParseTree (): Unit {
  //    ParserRuleContext parent = (ParserRuleContext)_ctx.parent;
  //    if (parent != null) {
  //        parent.addChild(_ctx);

        
    }

    public open func enterRule (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32): Unit {
  //    setState(state);
  //    _ctx = localctx;
  //    _ctx.start = _input.LT(1);
  //    if (_buildParseTrees) addContextToParseTree();
  //    if (_parseListeners != null) triggerEnterRuleEvent();

        
    }

    public open func exitRule (): Unit {
  //    if (matchedEOF) {
  //        _ctx.stop = _input.LT(1);
  //    } else {
  //        _ctx.stop = _input.LT(-1);
  //    if (_parseListeners != null) triggerExitRuleEvent();
  //    setState(_ctx.invokingState);
  //    _ctx = (ParserRuleContext)_ctx.parent;

        
    }

    public open func enterOuterAlt (localctx: ParserRuleContext, altNum: Int32): Unit {
  //    localctx.setAltNumber(altNum);
  //    if (_buildParseTrees && _ctx != localctx) {
  //        ParserRuleContext parent = (ParserRuleContext)_ctx.parent;
  //        if (parent != null) {
  //            parent.removeLastChild();
  //            parent.addChild(localctx);
  //    _ctx = localctx;

        
    }

    public open func getPrecedence (): Int32 {
  //    if (_precedenceStack.isEmpty()) {
  //        return -1;
  //    return _precedenceStack.peek();

        return 0
    }

    public open func enterRecursionRule (localctx: ParserRuleContext, ruleIndex: Int32): Unit {
  //    enterRecursionRule(localctx, getATN().ruleToStartState[ruleIndex].stateNumber, ruleIndex, 0);

        
    }

    public open func enterRecursionRule (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32, precedence: Int32): Unit {
  //    setState(state);
  //    _precedenceStack.push(precedence);
  //    _ctx = localctx;
  //    _ctx.start = _input.LT(1);
  //    if (_parseListeners != null) {
  //        triggerEnterRuleEvent();

        
    }

    public open func pushNewRecursionContext (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32): Unit {
  //    ParserRuleContext previous = _ctx;
  //    previous.parent = localctx;
  //    previous.invokingState = state;
  //    previous.stop = _input.LT(-1);
  //    _ctx = localctx;
  //    _ctx.start = previous.start;
  //    if (_buildParseTrees) {
  //        _ctx.addChild(previous);
  //    if (_parseListeners != null) {
  //        triggerEnterRuleEvent();

        
    }

    public open func unrollRecursionContexts (_parentctx: ParserRuleContext): Unit {
  //    _precedenceStack.pop();
  //    _ctx.stop = _input.LT(-1);
  //    ParserRuleContext retctx = _ctx;
  //    if (_parseListeners != null) {
  //        while (_ctx != _parentctx) {
  //            triggerExitRuleEvent();
  //            _ctx = (ParserRuleContext)_ctx.parent;
  //    } else {
  //        _ctx = _parentctx;
  //    retctx.parent = _parentctx;
  //    if (_buildParseTrees && _parentctx != null) {
  //        _parentctx.addChild(retctx);

        
    }

    public open func getInvokingContext (ruleIndex: Int32): ParserRuleContext {
  //    ParserRuleContext p = _ctx;
  //    while (p != null) {
  //        if (p.getRuleIndex() == ruleIndex) return p;
  //        p = (ParserRuleContext)p.parent;
  //    return null;

        return ParserRuleContext()
    }

    public open func getContext (): ParserRuleContext {
  //    return _ctx;

        return ParserRuleContext()
    }

    public open func setContext (ctx: ParserRuleContext): Unit {
  //    _ctx = ctx;

        
    }

    public open func precpred (localctx: RuleContext, precedence: Int32): Bool {
  //    return precedence >= _precedenceStack.peek();

        return true
    }

    public open func inContext (context: String): Bool {
  //    return false;

        return true
    }

    public open func isExpectedToken (symbol: Int32): Bool {
  //    ATN atn = getInterpreter().atn;
  //    ParserRuleContext ctx = _ctx;
  //    ATNState s = atn.states.get(getState());
  //    IntervalSet following = atn.nextTokens(s);
  //    if (following.contains(symbol)) {
  //        return true;
  //    if (!following.contains(Option<Token>.EPSILON)) return false;
  //    while (ctx != null && ctx.invokingState >= 0 && following.contains(Token.EPSILON)) {
  //        ATNState invokingState = atn.states.get(ctx.invokingState);
  //        RuleTransition rt = (RuleTransition)invokingState.transition(0);
  //        following = atn.nextTokens(rt.followState);
  //        if (following.contains(symbol)) {
  //            return true;
  //        ctx = (ParserRuleContext)ctx.parent;
  //    if (following.contains(Token.EPSILON) && symbol == Token.EOF) {
  //        return true;
  //    return false;

        return true
    }

    public open func isMatchedEOF (): Bool {
  //    return matchedEOF;

        return true
    }

    public open func getExpectedTokens (): IntervalSet {
  //    return getATN().getExpectedTokens(getState(), getContext());

        return IntervalSet()
    }

    public open func getExpectedTokensWithinCurrentRule (): IntervalSet {
  //    ATN atn = getInterpreter().atn;
  //    ATNState s = atn.states.get(getState());
  //    return atn.nextTokens(s);

        return IntervalSet()
    }

    public open func getRuleIndex (ruleName: String): Int32 {
  //    Integer ruleIndex = getRuleIndexMap().get(ruleName);
  //    if (ruleIndex != null) return ruleIndex;
  //    return -1;

        return 0
    }

    public open func getRuleContext (): ParserRuleContext {
  //    return _ctx;

        return ParserRuleContext()
    }

    public open func getRuleInvocationStack (): List<String> {
  //    return getRuleInvocationStack(_ctx);

        return List<String>()
    }

    public open func getRuleInvocationStack (p: RuleContext): List<String> {
  //    String[] ruleNames = getRuleNames();
  //    List<String> stack = new ArrayList<String>();
  //    while (p != null) {
  //        int ruleIndex = p.getRuleIndex();
  //        if (ruleIndex < 0) stack.add("n/a"); else stack.add(ruleNames[ruleIndex]);
  //        p = p.parent;
  //    return stack;

        return List<String>()
    }

    public open func getDFAStrings (): List<String> {
  //    synchronized (_interp.decisionToDFA) {
  //        List<String> s = new ArrayList<String>();
  //        for (int d = 0; d < _interp.decisionToDFA.length; d++) {
  //            DFA dfa = _interp.decisionToDFA[d];
  //            s.add(dfa.toString(getVocabulary()));
  //        return s;

        return List<String>()
    }

    public open func dumpDFA (): Unit {
  //    synchronized (_interp.decisionToDFA) {
  //        boolean seenOne = false;
  //        for (int d = 0; d < _interp.decisionToDFA.length; d++) {
  //            DFA dfa = _interp.decisionToDFA[d];
  //            if (!dfa.states.isEmpty()) {
  //                if (seenOne) System.out.println();
  //                System.out.println("Decision " + dfa.decision + ":");
  //                System.out.print(dfa.toString(getVocabulary()));
  //                seenOne = true;

        
    }

    public open func getSourceName (): String {
  //    return _input.getSourceName();

        return ""
    }

    public open func getParseInfo (): ParseInfo {
  //    ParserATNSimulator interp = getInterpreter();
  //    if (interp instanceof ProfilingATNSimulator) {
  //        return new ParseInfo((ProfilingATNSimulator)interp);
  //    return null;

        return ParseInfo()
    }

    public open func setProfile (profile: Bool): Unit {
  //    ParserATNSimulator interp = getInterpreter();
  //    PredictionMode saveMode = interp.getPredictionMode.SLL;
  //    if (profile) {
  //        if (!(interp instanceof ProfilingATNSimulator)) {
  //            setInterpreter(new ProfilingATNSimulator(this));
  //    } else if (interp instanceof ProfilingATNSimulator) {
  //        ParserATNSimulator sim = new ParserATNSimulator(this, getATN(), interp.decisionToDFA, interp.getSharedContextCache());
  //        setInterpreter(sim);
  //    getInterpreter().setPredictionMode(saveMode);

        
    }

    public open func setTrace (trace: Bool): Unit {
  //    if (!trace) {
  //        removeParseListener(_tracer);
  //        _tracer = null;
  //    } else {
  //        if (_tracer != null) removeParseListener(_tracer); else _tracer = new ParserTraceListener();
  //        addParseListener(_tracer);

        
    }

    public open func isTrace (): Bool {
  //    return _tracer != null;

        return true
    }

    public init() {}
}

public class ParserTraceListener <: ParseTreeListener {
    var class_out: Option<Parser>
    public init(out: Option<Parser>) {
        class_out = out
    }
    public init() {
        class_out = Option<Parser>.None
    }
    public func enterEveryRule (ctx: ParserRuleContext): Unit {
  //    System.out.println("enter   " + getRuleNames()[ctx.getRuleIndex()] + ", LT(1)=" + _input.LT(1).getText());

        
    }

    public func visitTerminal (node: Option<TerminalNode>): Unit {
  //    System.out.println("consume " + node.getSymbol() + " rule " + getRuleNames()[_ctx.getRuleIndex()]);

        
    }

    public func visitErrorNode (node: Option<ErrorNode>): Unit {

        
    }

    public func exitEveryRule (ctx: ParserRuleContext): Unit {
  //    System.out.println("exit    " + getRuleNames()[ctx.getRuleIndex()] + ", LT(1)=" + _input.LT(1).getText());

        
    }

}


public class ParserTrimToSizeListener <: ParseTreeListener {
    var class_out: Option<Parser>
    public init(out: Option<Parser>) {
        class_out = out
    }
    public init() {
        class_out = Option<Parser>.None
    }
    public static let INSTANCE: ParserTrimToSizeListener = ParserTrimToSizeListener()
    
    public func enterEveryRule (ctx: ParserRuleContext): Unit {

        
    }

    public func visitTerminal (node: Option<TerminalNode>): Unit {

        
    }

    public func visitErrorNode (node: Option<ErrorNode>): Unit {

        
    }

    public func exitEveryRule (ctx: ParserRuleContext): Unit {
  //    if (ctx.children instanceof ArrayList) {
  //        ((ArrayList<?>)ctx.children).trimToSize();

        
    }

}



