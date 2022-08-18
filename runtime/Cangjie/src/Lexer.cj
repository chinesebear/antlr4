package default

// import org.antlr.v4.runtime.atn.LexerATNSimulator;
// import org.antlr.v4.runtime.misc.IntegerStack;
// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Pair;
from std import collection.*
// import java.util.EmptyStackException;

public abstract class Lexer <: Recognizer<Integer, LexerATNSimulator> & TokenSource {

    public static let DEFAULT_MODE: Int32 = 0
    
    public static let MORE: Int32 = -2
    
    public static let SKIP: Int32 = -3
    
    public static let DEFAULT_TOKEN_CHANNEL: Int32 = 0
    
    public static let HIDDEN: Int32 = 0
    
    public static let MIN_CHAR_VALUE: Int32 = 0
    
    public static let MAX_CHAR_VALUE: Int32 = 1114111
    
    public var input: Option<CharStream> = Option<CharStream>.None
    
    protected var tokenFactorySourcePair: Pair<Option<TokenSource>, Option<CharStream>> = Pair<Option<TokenSource>, Option<CharStream>>()
    
    protected var factory: TokenFactory<T> = TokenFactory<T>()
    
    public var token: Option<Token> = Option<Token>.None
    
    public var tokenStartCharIndex: Int32 = -1
    
    public var tokenStartLine: Int32 = 0
    
    public var tokenStartCharPositionInLine: Int32 = 0
    
    public var hitEOF: Bool = true
    
    public var channel: Int32 = 0
    
    public var type: Int32 = 0
    
    public let modeStack: IntegerStack = IntegerStack()
    
    public var mode: Int32 = 0
    
    public var text: String = ""
    
    public init (){

    }

    public init (input: Option<CharStream>){

    }

    public open func reset (): Unit {
  //    if (_input != null) {
  //        _input.seek(0);
  //    _token = null;
  //    _type = Token.INVALID_TYPE;
  //    _channel = Token.DEFAULT_CHANNEL;
  //    _tokenStartCharIndex = -1;
  //    _tokenStartCharPositionInLine = -1;
  //    _tokenStartLine = -1;
  //    _text = null;
  //    _hitEOF = false;
  //    _mode = Lexer.DEFAULT_MODE;
  //    _modeStack.clear();
  //    getInterpreter().reset();

        
    }

    public override open func nextToken (): Option<Token> {
  //    if (_input == null) {
  //        throw new IllegalStateException("nextToken requires a non-null input stream.");
  //    int tokenStartMarker = _input.mark();
  //    try {
  //        outer: while (true) {
  //            if (_hitEOF) {
  //                emitEOF();
  //                return _token;
  //            _token = null;
  //            _channel = Token.DEFAULT_CHANNEL;
  //            _tokenStartCharIndex = _input.index();
  //            _tokenStartCharPositionInLine = getInterpreter().getCharPositionInLine();
  //            _tokenStartLine = getInterpreter().getLine();
  //            _text = null;
  //            do {
  //                _type = Token.INVALID_TYPE;
  //                int ttype;
  //                try {
  //                    ttype = getInterpreter().match(_input, _mode);
  //                } catch (LexerNoViableAltException e) {
  //                    notifyListeners(e);
  //                    recover(e);
  //                    ttype = SKIP;
  //                if (_input.LA(1) == IntStream.EOF) {
  //                    _hitEOF = true;
  //                if (_type == Token.INVALID_TYPE) _type = ttype;
  //                if (_type == SKIP) {
  //                    continue outer;
  //            }             while (_type == MORE);
  //            if (_token == null) emit();
  //            return _token;
  //    } finally {
  //        _input.release(tokenStartMarker);

        return Option<Token>.None
    }

    public open func skip (): Unit {
  //    _type = SKIP;

        
    }

    public open func more (): Unit {
  //    _type = MORE;

        
    }

    public open func modeFunc (m: Int32): Unit {
  //    _mode = m;

        
    }

    public open func pushMode (m: Int32): Unit {
  //    if (LexerATNSimulator.debug) System.out.println("pushMode " + m);
  //    _modeStack.push(_mode);
  //    mode(m);

        
    }

    public open func popMode (): Int32 {
  //    if (_modeStack.isEmpty()) throw new EmptyStackException();
  //    if (LexerATNSimulator.debug) System.out.println("popMode back to " + _modeStack.peek());
  //    mode(_modeStack.pop());
  //    return _mode;

        return 0
    }

    public override open func setTokenFactory (factory: TokenFactory<T>): Unit {
  //    this._factory = factory;

        
    }

    public override open func getTokenFactory (): TokenFactory<Option<Token>> {
  //    return _factory;

        return TokenFactory<Option<Token>>()
    }

    public open func setInputStream (input: Option<IntStream>): Unit {
  //    this._input = null;
  //    this._tokenFactorySourcePair = new Pair<TokenSource, CharStream>(this, _input);
  //    reset();
  //    this._input = (CharStream)input;
  //    this._tokenFactorySourcePair = new Pair<TokenSource, CharStream>(this, _input);

        
    }

    public override open func getSourceName (): String {
  //    return _input.getSourceName();

        return ""
    }

    public override open func getInputStream (): Option<CharStream> {
  //    return _input;

        return Option<CharStream>.None
    }

    public open func emit (token: Option<Token>): Unit {
  //    this._token = token;

        
    }

    public open func emit (): Option<Token> {
  //    Token t = _factory.create(_tokenFactorySourcePair, _type, _text, _channel, _tokenStartCharIndex, getCharIndex() - 1, _tokenStartLine, _tokenStartCharPositionInLine);
  //    emit(t);
  //    return t;

        return Option<Token>.None
    }

    public open func emitEOF (): Option<Token> {
  //    int cpos = getCharPositionInLine();
  //    int line = getLine();
  //    Token eof = _factory.create(_tokenFactorySourcePair, Token.EOF, null, Token.DEFAULT_CHANNEL, _input.index(), _input.index() - 1, line, cpos);
  //    emit(eof);
  //    return eof;

        return Option<Token>.None
    }

    public override open func getLine (): Int32 {
  //    return getInterpreter().getLine();

        return 0
    }

    public override open func getCharPositionInLine (): Int32 {
  //    return getInterpreter().getCharPositionInLine();

        return 0
    }

    public open func setLine (line: Int32): Unit {
  //    getInterpreter().setLine(line);

        
    }

    public open func setCharPositionInLine (charPositionInLine: Int32): Unit {
  //    getInterpreter().setCharPositionInLine(charPositionInLine);

        
    }

    public open func getCharIndex (): Int32 {
  //    return _input.index();

        return 0
    }

    public open func getText (): String {
  //    if (_text != null) {
  //        return _text;
  //    return getInterpreter().getText(_input);

        return ""
    }

    public open func setText (text: String): Unit {
  //    this._text = text;

        
    }

    public open func getToken (): Option<Token> {
  //    return _token;

        return Option<Token>.None
    }

    public open func setToken (_token: Option<Token>): Unit {
  //    this._token = _token;

        
    }

    public open func setType (ttype: Int32): Unit {
  //    _type = ttype;

        
    }

    public open func getType (): Int32 {
  //    return _type;

        return 0
    }

    public open func setChannel (channel: Int32): Unit {
  //    _channel = channel;

        
    }

    public open func getChannel (): Int32 {
  //    return _channel;

        return 0
    }

    public open func getChannelNames (): Array<String> {
  //    return null;

        return Array<String>()
    }

    public open func getModeNames (): Array<String> {
  //    return null;

        return Array<String>()
    }

    public open func getTokenNames (): Array<String> {
  //    return null;

        return Array<String>()
    }

    public open func getAllTokens (): List<Option<Token>> {
  //    List<Token> tokens = new ArrayList<Token>();
  //    Token t = nextToken();
  //    while (t.getType.BYTE != Token.EOF) {
  //        tokens.add(t);
  //        t = nextToken();
  //    return tokens;

        return List<Option<Token>>()
    }

    public open func recover (e: LexerNoViableAltException): Unit {
  //    if (_input.LA(1) != IntStream.EOF) {
  //        getInterpreter().consume(_input);

        
    }

    public open func notifyListeners (e: LexerNoViableAltException): Unit {
  //    String text = _input.getText(Interval.of(_tokenStartCharIndex, _input.index()));
  //    String msg = "token recognition error at: \'" + getErrorDisplay(text) + "\'";
  //    ANTLRErrorListener listener = getErrorListenerDispatch();
  //    listener.syntaxError(this, null, _tokenStartLine, _tokenStartCharPositionInLine, msg, e);

        
    }

    public open func getErrorDisplay (s: String): String {
  //    StringBuilder buf = new StringBuilder();
  //    for (char c : s.toCharArray()) {
  //        buf.append(getErrorDisplay(c));
  //    return buf.toString();

        return ""
    }

    public open func getErrorDisplay (c: Int32): String {
  //    String s = String.valueOf((char)c);
  //    switch (c) {
  //    case Token.EOF: 
  //        s = "<EOF>";
  //        break;
  //    
  //    case '\n': 
  //        s = "\\n";
  //        break;
  //    
  //    case '\t': 
  //        s = "\\t";
  //        break;
  //    
  //    case '\r': 
  //        s = "\\r";
  //        break;
  //    
  //    return s;

        return ""
    }

    public open func getCharErrorDisplay (c: Int32): String {
  //    String s = getErrorDisplay(c);
  //    return "\'" + s + "\'";

        return ""
    }

    public open func recover (re: RecognitionException): Unit {
  //    _input.consume();

        
    }

}


