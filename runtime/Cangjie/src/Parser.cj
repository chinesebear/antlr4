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
    
    protected var errHandler: ANTLRErrorStrategy = ANTLRErrorStrategy()
    
    protected var input: TokenStream = TokenStream()
    
    protected let precedenceStack: IntegerStack = IntegerStack()
    
    protected var ctx: ParserRuleContext = ParserRuleContext()
    
    protected var buildParseTrees: Bool = true
    
    private var tracer: TraceListener = TraceListener()
    
    protected var parseListeners: List<ParseTreeListener> = List<ParseTreeListener>()
    
    protected var syntaxErrors: Int32 = 0
    
    protected var matchedEOF: Bool = true
    
    public func reset (): Unit {
        
    }

    public func `match` (ttype: Int32): Token {
        return Token()
    }

    public func matchWildcard (): Token {
        return Token()
    }

    public func setBuildParseTree (buildParseTrees: Bool): Unit {
        
    }

    public func getBuildParseTree (): Bool {
        return true
    }

    public func setTrimParseTree (trimParseTrees: Bool): Unit {
        
    }

    public func getTrimParseTree (): Bool {
        return true
    }

    public func getParseListeners (): List<ParseTreeListener> {
        return List<ParseTreeListener>()
    }

    public func addParseListener (listener: ParseTreeListener): Unit {
        
    }

    public func removeParseListener (listener: ParseTreeListener): Unit {
        
    }

    public func removeParseListeners (): Unit {
        
    }

    protected func triggerEnterRuleEvent (): Unit {
        
    }

    protected func triggerExitRuleEvent (): Unit {
        
    }

    public func getNumberOfSyntaxErrors (): Int32 {
        return 0
    }

    public func getTokenFactory (): TokenFactory<T> {
        return TokenFactory<T>()
    }

    public func setTokenFactory (factory: TokenFactory<T>): Unit {
        
    }

    public func getATNWithBypassAlts (): ATN {
        return ATN()
    }

    public func compileParseTreePattern (pattern: String, patternRuleIndex: Int32): ParseTreePattern {
        return ParseTreePattern()
    }

    public func compileParseTreePattern (pattern: String, patternRuleIndex: Int32, lexer: Lexer): ParseTreePattern {
        return ParseTreePattern()
    }

    public func getErrorHandler (): ANTLRErrorStrategy {
        return ANTLRErrorStrategy()
    }

    public func setErrorHandler (handler: ANTLRErrorStrategy): Unit {
        
    }

    public func getInputStream (): TokenStream {
        return TokenStream()
    }

    public func setInputStream (input: IntStream): Unit {
        
    }

    public func getTokenStream (): TokenStream {
        return TokenStream()
    }

    public func setTokenStream (input: TokenStream): Unit {
        
    }

    public func getCurrentToken (): Token {
        return Token()
    }

    public func notifyErrorListeners (msg: String): Unit {
        
    }

    public func notifyErrorListeners (offendingToken: Token, msg: String, e: RecognitionException): Unit {
        
    }

    public func consume (): Token {
        return Token()
    }

    public func createTerminalNode (parent: ParserRuleContext, t: Token): TerminalNode {
        return TerminalNode()
    }

    public func createErrorNode (parent: ParserRuleContext, t: Token): ErrorNode {
        return ErrorNode()
    }

    protected func addContextToParseTree (): Unit {
        
    }

    public func enterRule (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32): Unit {
        
    }

    public func exitRule (): Unit {
        
    }

    public func enterOuterAlt (localctx: ParserRuleContext, altNum: Int32): Unit {
        
    }

    public func getPrecedence (): Int32 {
        return 0
    }

    public func enterRecursionRule (localctx: ParserRuleContext, ruleIndex: Int32): Unit {
        
    }

    public func enterRecursionRule (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32, precedence: Int32): Unit {
        
    }

    public func pushNewRecursionContext (localctx: ParserRuleContext, state: Int32, ruleIndex: Int32): Unit {
        
    }

    public func unrollRecursionContexts (parentctx: ParserRuleContext): Unit {
        
    }

    public func getInvokingContext (ruleIndex: Int32): ParserRuleContext {
        return ParserRuleContext()
    }

    public func getContext (): ParserRuleContext {
        return ParserRuleContext()
    }

    public func setContext (ctx: ParserRuleContext): Unit {
        
    }

    public func precpred (localctx: RuleContext, precedence: Int32): Bool {
        return true
    }

    public func inContext (context: String): Bool {
        return true
    }

    public func isExpectedToken (symbol: Int32): Bool {
        return true
    }

    public func isMatchedEOF (): Bool {
        return true
    }

    public func getExpectedTokens (): IntervalSet {
        return IntervalSet()
    }

    public func getExpectedTokensWithinCurrentRule (): IntervalSet {
        return IntervalSet()
    }

    public func getRuleIndex (ruleName: String): Int32 {
        return 0
    }

    public func getRuleContext (): ParserRuleContext {
        return ParserRuleContext()
    }

    public func getRuleInvocationStack (): List<String> {
        return List<String>()
    }

    public func getRuleInvocationStack (p: RuleContext): List<String> {
        return List<String>()
    }

    public func getDFAStrings (): List<String> {
        return List<String>()
    }

    public func dumpDFA (): Unit {
        
    }

    public func getSourceName (): String {
        return ""
    }

    public func getParseInfo (): ParseInfo {
        return ParseInfo()
    }

    public func setProfile (profile: Bool): Unit {
        
    }

    public func setTrace (trace: Bool): Unit {
        
    }

    public func isTrace (): Bool {
        return true
    }

    public init() {}
}

class ParserTraceListener <: ParseTreeListener {
    var class_out: Parser
    public init(out: Parser) {
        class_out = out
    }
    public init() {
        class_out = Parser()
    }
    public func enterEveryRule (ctx: ParserRuleContext): Unit {
        
    }

    public func visitTerminal (node: TerminalNode): Unit {
        
    }

    public func visitErrorNode (node: ErrorNode): Unit {
        
    }

    public func exitEveryRule (ctx: ParserRuleContext): Unit {
        
    }

}


class ParserTrimToSizeListener <: ParseTreeListener {
    var class_out: Parser
    public init(out: Parser) {
        class_out = out
    }
    public init() {
        class_out = Parser()
    }
    public static let INSTANCE: TrimToSizeListener = TrimToSizeListener()
    
    public func enterEveryRule (ctx: ParserRuleContext): Unit {
        
    }

    public func visitTerminal (node: TerminalNode): Unit {
        
    }

    public func visitErrorNode (node: ErrorNode): Unit {
        
    }

    public func exitEveryRule (ctx: ParserRuleContext): Unit {
        
    }

}



