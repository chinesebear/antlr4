package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNState;
// import org.antlr.v4.runtime.atn.RuleTransition;
from std import collection.*
// import org.antlr.v4.runtime.misc.Pair;

open public class DefaultErrorStrategy <: ANTLRErrorStrategy {

    protected var errorRecoveryMode: Bool = true
    
    protected var lastErrorIndex: Int32 = -1
    
    protected var lastErrorStates: IntervalSet = IntervalSet()
    
    protected var nextTokensContext: ParserRuleContext = ParserRuleContext()
    
    protected var nextTokensState: Int32 = 0
    
    public open func reset (recognizer: Option<Parser>): Unit {
  //    endErrorCondition(recognizer);

        
    }

    protected open func beginErrorCondition (recognizer: Option<Parser>): Unit {
  //    errorRecoveryMode = true;

        
    }

    public open func inErrorRecoveryMode (recognizer: Option<Parser>): Bool {
  //    return errorRecoveryMode;

        return true
    }

    protected open func endErrorCondition (recognizer: Option<Parser>): Unit {
  //    errorRecoveryMode = false;
  //    lastErrorStates = null;
  //    lastErrorIndex = -1;

        
    }

    public open func reportMatch (recognizer: Option<Parser>): Unit {
  //    endErrorCondition(recognizer);

        
    }

    public open func reportError (recognizer: Option<Parser>, e: RecognitionException): Unit {
  //    if (inErrorRecoveryMode(recognizer)) {
  //        return;
  //    beginErrorCondition(recognizer);
  //    if (e instanceof NoViableAltException) {
  //        reportNoViableAlternative(recognizer, (NoViableAltException)e);
  //    } else if (e instanceof InputMismatchException) {
  //        reportInputMismatch(recognizer, (InputMismatchException)e);
  //    } else if (e instanceof FailedPredicateException) {
  //        reportFailedPredicate(recognizer, (FailedPredicateException)e);
  //    } else {
  //        System.err.println("unknown recognition error type: " + e.getClass().getName());
  //        recognizer.notifyErrorListeners(e.getOffendingToken(), e.getMessage(), e);

        
    }

    public open func recover (recognizer: Option<Parser>, e: RecognitionException): Unit {
  //    if (lastErrorIndex == recognizer.getInputStream().index() && lastErrorStates != null && lastErrorStates.contains(recognizer.getState())) {
  //        recognizer.consume();
  //    lastErrorIndex = recognizer.getInputStream().index();
  //    if (lastErrorStates == null) lastErrorStates = new IntervalSet();
  //    lastErrorStates.add(recognizer.getState());
  //    IntervalSet followSet = getErrorRecoverySet(recognizer);
  //    consumeUntil(recognizer, followSet);

        
    }

    public open func sync (recognizer: Option<Parser>): Unit {
  //    ATNState s = recognizer.getInterpreter().atn.states.get(recognizer.getState());
  //    if (inErrorRecoveryMode(recognizer)) {
  //        return;
  //    TokenStream tokens = recognizer.getInputStream();
  //    int la = tokens.LA(1);
  //    IntervalSet nextTokens = recognizer.getATN().nextTokens(s);
  //    if (nextTokens.contains(la)) {
  //        nextTokensContext = null;
  //        nextTokensState = ATNState.INVALID_STATE_NUMBER;
  //        return;
  //    if (nextTokens.contains(Token.EPSILON)) {
  //        if (nextTokensContext == null) {
  //            nextTokensContext = recognizer.getContext();
  //            nextTokensState = recognizer.getState();
  //        return;
  //    switch (s.getStateType.BYTE) {
  //    case ATNState.BLOCK_START: 
  //    
  //    case ATNState.STAR_BLOCK_START: 
  //    
  //    case ATNState.PLUS_BLOCK_START: 
  //    
  //    case ATNState.STAR_LOOP_ENTRY: 
  //        if (singleTokenDeletion(recognizer) != null) {
  //            return;
  //        throw new InputMismatchException(recognizer);
  //    
  //    case ATNState.PLUS_LOOP_BACK: 
  //    
  //    case ATNState.STAR_LOOP_BACK: 
  //        reportUnwantedToken(recognizer);
  //        IntervalSet expecting = recognizer.getExpectedTokens();
  //        IntervalSet whatFollowsLoopIterationOrRule = expecting.or(getErrorRecoverySet(recognizer));
  //        consumeUntil(recognizer, whatFollowsLoopIterationOrRule);
  //        break;
  //    
  //    default: 
  //        break;
  //    

        
    }

    protected open func reportNoViableAlternative (recognizer: Option<Parser>, e: NoViableAltException): Unit {
  //    TokenStream tokens = recognizer.getInputStream();
  //    String input;
  //    if (tokens != null) {
  //        if (e.getStartToken().getType.BYTE == Token.EOF) input = "<EOF>"; else input = tokens.getText(e.getStartToken(), e.getOffendingToken());
  //    } else {
  //        input = "<unknown input>";
  //    String msg = "no viable alternative at input " + escapeWSAndQuote(input);
  //    recognizer.notifyErrorListeners(e.getOffendingToken(), msg, e);

        
    }

    protected open func reportInputMismatch (recognizer: Option<Parser>, e: InputMismatchException): Unit {
  //    String msg = "mismatched input " + getTokenErrorDisplay(e.getOffendingToken()) + " expecting " + e.getExpectedTokens().toString(recognizer.getVocabulary());
  //    recognizer.notifyErrorListeners(e.getOffendingToken(), msg, e);

        
    }

    protected open func reportFailedPredicate (recognizer: Option<Parser>, e: FailedPredicateException): Unit {
  //    String ruleName = recognizer.getRuleNames()[recognizer._ctx.getRuleIndex()];
  //    String msg = "rule " + ruleName + " " + e.getMessage();
  //    recognizer.notifyErrorListeners(e.getOffendingToken(), msg, e);

        
    }

    protected open func reportUnwantedToken (recognizer: Option<Parser>): Unit {
  //    if (inErrorRecoveryMode(recognizer)) {
  //        return;
  //    beginErrorCondition(recognizer);
  //    Token t = recognizer.getCurrentToken();
  //    String tokenName = getTokenErrorDisplay(t);
  //    IntervalSet expecting = getExpectedTokens(recognizer);
  //    String msg = "extraneous input " + tokenName + " expecting " + expecting.toString(recognizer.getVocabulary());
  //    recognizer.notifyErrorListeners(t, msg, null);

        
    }

    protected open func reportMissingToken (recognizer: Option<Parser>): Unit {
  //    if (inErrorRecoveryMode(recognizer)) {
  //        return;
  //    beginErrorCondition(recognizer);
  //    Token t = recognizer.getCurrentToken();
  //    IntervalSet expecting = getExpectedTokens(recognizer);
  //    String msg = "missing " + expecting.toString(recognizer.getVocabulary()) + " at " + getTokenErrorDisplay(t);
  //    recognizer.notifyErrorListeners(t, msg, null);

        
    }

    public open func recoverInline (recognizer: Option<Parser>): Option<Token> {
  //    Token matchedSymbol = singleTokenDeletion(recognizer);
  //    if (matchedSymbol != null) {
  //        recognizer.consume();
  //        return matchedSymbol;
  //    if (singleTokenInsertion(recognizer)) {
  //        return getMissingSymbol(recognizer);
  //    InputMismatchException e;
  //    if (nextTokensContext == null) {
  //        e = new InputMismatchException(recognizer);
  //    } else {
  //        e = new InputMismatchException(recognizer, nextTokensState, nextTokensContext);
  //    throw e;

        return Option<Token>.None
    }

    protected open func singleTokenInsertion (recognizer: Option<Parser>): Bool {
  //    int currentSymbolType = recognizer.getInputStream().LA(1);
  //    ATNState currentState = recognizer.getInterpreter().atn.states.get(recognizer.getState());
  //    ATNState next = currentState.transition(0).target;
  //    ATN atn = recognizer.getInterpreter().atn;
  //    IntervalSet expectingAtLL2 = atn.nextTokens(next, recognizer._ctx);
  //    if (expectingAtLL2.contains(currentSymbolType)) {
  //        reportMissingToken(recognizer);
  //        return true;
  //    return false;

        return true
    }

    protected open func singleTokenDeletion (recognizer: Option<Parser>): Option<Token> {
  //    int nextTokenType = recognizer.getInputStream().LA(2);
  //    IntervalSet expecting = getExpectedTokens(recognizer);
  //    if (expecting.contains(nextTokenType)) {
  //        reportUnwantedToken(recognizer);
  //        recognizer.consume();
  //        Token matchedSymbol = recognizer.getCurrentToken();
  //        reportMatch(recognizer);
  //        return matchedSymbol;
  //    return null;

        return Option<Token>.None
    }

    protected open func getMissingSymbol (recognizer: Option<Parser>): Option<Token> {
  //    Token currentSymbol = recognizer.getCurrentToken();
  //    IntervalSet expecting = getExpectedTokens(recognizer);
  //    int expectedTokenType = Token.INVALID_TYPE;
  //    if (!expecting.isNil()) {
  //        expectedTokenType = expecting.getMinElement();
  //    String tokenText;
  //    if (expectedTokenType == Token.EOF) tokenText = "<missing EOF>"; else tokenText = "<missing " + recognizer.getVocabulary().getDisplayName(expectedTokenType) + ">";
  //    Token current = currentSymbol;
  //    Token lookback = recognizer.getInputStream().LT(-1);
  //    if (current.getType.BYTE == Token.EOF && lookback != null) {
  //        current = lookback;
  //    return recognizer.getTokenFactory().create(new Pair<Option<TokenSource>, Option<CharStream>>(current.getTokenSource(), current.getTokenSource().getInputStream()), expectedTokenType, tokenText, Option<Token>.DEFAULT_CHANNEL, -1, -1, current.getLine(), current.getCharPositionInLine());

        return Option<Token>.None
    }

    protected open func getExpectedTokens (recognizer: Option<Parser>): IntervalSet {
  //    return recognizer.getExpectedTokens();

        return IntervalSet()
    }

    protected open func getTokenErrorDisplay (t: Option<Token>): String {
  //    if (t == null) return "<no token>";
  //    String s = getSymbolText(t);
  //    if (s == null) {
  //        if (getSymbolType(t) == Token.EOF) {
  //            s = "<EOF>";
  //        } else {
  //            s = "<" + getSymbolType(t) + ">";
  //    return escapeWSAndQuote(s);

        return ""
    }

    protected open func getSymbolText (symbol: Option<Token>): String {
  //    return symbol.getText();

        return ""
    }

    protected open func getSymbolType (symbol: Option<Token>): Int32 {
  //    return symbol.getType.BYTE;

        return 0
    }

    protected open func escapeWSAndQuote (s: String): String {
  //    s = s.replace("\n", "\\n");
  //    s = s.replace("\r", "\\r");
  //    s = s.replace("\t", "\\t");
  //    return "\'" + s + "\'";

        return ""
    }

    protected open func getErrorRecoverySet (recognizer: Option<Parser>): IntervalSet {
  //    ATN atn = recognizer.getInterpreter().atn;
  //    RuleContext ctx = recognizer._ctx;
  //    IntervalSet recoverSet = new IntervalSet();
  //    while (ctx != null && ctx.invokingState >= 0) {
  //        ATNState invokingState = atn.states.get(ctx.invokingState);
  //        RuleTransition rt = (RuleTransition)invokingState.transition(0);
  //        IntervalSet follow = atn.nextTokens(rt.followState);
  //        recoverSet.addAll(follow);
  //        ctx = ctx.parent;
  //    recoverSet.remove(Token.EPSILON);
  //    return recoverSet;

        return IntervalSet()
    }

    protected open func consumeUntil (recognizer: Option<Parser>, set: IntervalSet): Unit {
  //    int ttype = recognizer.getInputStream().LA(1);
  //    while (ttype != Token.EOF && !set.contains(ttype)) {
  //        recognizer.consume();
  //        ttype = recognizer.getInputStream().LA(1);

        
    }

    public init() {}
}


