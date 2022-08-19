package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNSimulator;
// import org.antlr.v4.runtime.atn.ParseInfo;
// import org.antlr.v4.runtime.misc.Utils;
// import java.util.Collections;
from std import collection.*

public abstract class Recognizer<Symbol,ATNInterpreter> {

    public static let EOF: Int32 = -1
    
    private static let tokenTypeMapCache: Map<Option<Vocabulary>, Map<String, Integer>> = Map<Option<Vocabulary>, Map<String, Integer>>()
    
    private static let ruleIndexMapCache: Map<String[], Map<String, Integer>> = Map<String[], Map<String, Integer>>()
    
    private var listeners: List<Option<ANTLRErrorListener>> = List<Option<ANTLRErrorListener>>()
    
    protected var interp: ATNInterpreter = ATNInterpreter()
    
    private var stateNumber: Int32 = -1
    
    public func getTokenNames (): Array<String> 

    public func getRuleNames (): Array<String> 

    public open func getVocabulary (): Option<Vocabulary> {
  //    return VocabularyImpl.fromTokenNames(getTokenNames());

        return Option<Vocabulary>.None
    }

    public open func getTokenTypeMap (): Map<String, Integer> {
  //    Vocabulary vocabulary = getVocabulary();
  //    synchronized (tokenTypeMapCache) {
  //        Map<String, Integer> result = tokenTypeMapCache.get(vocabulary);
  //        if (result == null) {
  //            result = new HashMap<String, Integer>();
  //            for (int i = 0; i <= getATN().maxTokenType; i++) {
  //                String literalName = vocabulary.getLiteralName(i);
  //                if (literalName != null) {
  //                    result.put(literalName, i);
  //                String symbolicName = vocabulary.getSymbolicName(i);
  //                if (symbolicName != null) {
  //                    result.put(symbolicName, i);
  //            result.put("EOF", Token.EOF);
  //            result = Collections.unmodifiableMap(result);
  //            tokenTypeMapCache.put(vocabulary, result);
  //        return result;

        return Map<String, Integer>()
    }

    public open func getRuleIndexMap (): Map<String, Integer> {
  //    String[] ruleNames = getRuleNames();
  //    if (ruleNames == null) {
  //        throw new UnsupportedOperationException("The current recognizer does not provide a list of rule names.");
  //    synchronized (ruleIndexMapCache) {
  //        Map<String, Integer> result = ruleIndexMapCache.get(ruleNames);
  //        if (result == null) {
  //            result = Collections.unmodifiableMap(Utils.toMap(ruleNames));
  //            ruleIndexMapCache.put(ruleNames, result);
  //        return result;

        return Map<String, Integer>()
    }

    public open func getTokenType (tokenName: String): Int32 {
  //    Integer ttype = getTokenTypeMap().get(tokenName);
  //    if (ttype != null) return ttype;
  //    return Option<Token>.INVALID_TYPE;

        return 0
    }

    public open func getSerializedATN (): String {
  //    throw new UnsupportedOperationException("there is no serialized ATN");

        return ""
    }

    public func getGrammarFileName (): String 

    public func getATN (): ATN 

    public open func getInterpreter (): ATNInterpreter {
  //    return _interp;

        return ATNInterpreter()
    }

    public open func getParseInfo (): ParseInfo {
  //    return null;

        return ParseInfo()
    }

    public open func setInterpreter (interpreter: ATNInterpreter): Unit {
  //    _interp = interpreter;

        
    }

    public open func getErrorHeader (e: RecognitionException): String {
  //    int line = e.getOffendingToken().getLine();
  //    int charPositionInLine = e.getOffendingToken().getCharPositionInLine();
  //    return "line " + line + ":" + charPositionInLine;

        return ""
    }

    public open func getTokenErrorDisplay (t: Option<Token>): String {
  //    if (t == null) return "<no token>";
  //    String s = t.getText();
  //    if (s == null) {
  //        if (t.getType.BYTE == Token.EOF) {
  //            s = "<EOF>";
  //        } else {
  //            s = "<" + t.getType.BYTE + ">";
  //    s = s.replace("\n", "\\n");
  //    s = s.replace("\r", "\\r");
  //    s = s.replace("\t", "\\t");
  //    return "\'" + s + "\'";

        return ""
    }

    public open func addErrorListener (listener: Option<ANTLRErrorListener>): Unit {
  //    if (listener == null) {
  //        throw new NullPointerException("listener cannot be null.");
  //    _listeners.add(listener);

        
    }

    public open func removeErrorListener (listener: Option<ANTLRErrorListener>): Unit {
  //    _listeners.remove(listener);

        
    }

    public open func removeErrorListeners (): Unit {
  //    _listeners.clear();

        
    }

    public open func getErrorListeners (): List<Option<ANTLRErrorListener>> {
  //    return _listeners;

        return List<Option<ANTLRErrorListener>>()
    }

    public open func getErrorListenerDispatch (): Option<ANTLRErrorListener> {
  //    return new ProxyErrorListener(getErrorListeners());

        return Option<ANTLRErrorListener>.None
    }

    public open func sempred (_localctx: RuleContext, ruleIndex: Int32, actionIndex: Int32): Bool {
  //    return true;

        return true
    }

    public open func precpred (localctx: RuleContext, precedence: Int32): Bool {
  //    return true;

        return true
    }

    public open func actionFunc (_localctx: RuleContext, ruleIndex: Int32, actionIndex: Int32): Unit {

        
    }

    public open func getState (): Int32 {
  //    return _stateNumber;

        return 0
    }

    public open func setState (atnState: Int32): Unit {
  //    _stateNumber = atnState;

        
    }

    public func getInputStream (): Option<IntStream> 

    public func setInputStream (input: Option<IntStream>): Unit 

    public func getTokenFactory (): TokenFactory<T> 

    public func setTokenFactory (input: TokenFactory<T>): Unit 

    public init() {}
}


