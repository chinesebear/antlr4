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
    
    public var input: CharStream = CharStream()
    
    protected var tokenFactorySourcePair: Pair<TokenSource, CharStream> = Pair<TokenSource, CharStream>()
    
    protected var factory: TokenFactory<T> = TokenFactory<T>()
    
    public var token: Token = Token()
    
    public var tokenStartCharIndex: Int32 = -1
    
    public var tokenStartLine: Int32 = 0
    
    public var tokenStartCharPositionInLine: Int32 = 0
    
    public var hitEOF: Bool = true
    
    public var channel: Int32 = 0
    
    public var `type`: Int32 = 0
    
    public let modeStack: IntegerStack = IntegerStack()
    
    public var mode: Int32 = 0
    
    public var text: String = ""
    
    public init (){

    }

    public init (input: CharStream){

    }

    public func reset (): Unit {
        
    }

    public override func nextToken (): Token {
        return Token()
    }

    public func skip (): Unit {
        
    }

    public func more (): Unit {
        
    }

    public func mode (m: Int32): Unit {
        
    }

    public func pushMode (m: Int32): Unit {
        
    }

    public func popMode (): Int32 {
        return 0
    }

    public override func setTokenFactory (factory: TokenFactory<T>): Unit {
        
    }

    public override func getTokenFactory (): TokenFactory< Token> {
        return TokenFactory< Token>()
    }

    public override func setInputStream (input: IntStream): Unit {
        
    }

    public override func getSourceName (): String {
        return ""
    }

    public override func getInputStream (): CharStream {
        return CharStream()
    }

    public func emit (token: Token): Unit {
        
    }

    public func emit (): Token {
        return Token()
    }

    public func emitEOF (): Token {
        return Token()
    }

    public override func getLine (): Int32 {
        return 0
    }

    public override func getCharPositionInLine (): Int32 {
        return 0
    }

    public func setLine (line: Int32): Unit {
        
    }

    public func setCharPositionInLine (charPositionInLine: Int32): Unit {
        
    }

    public func getCharIndex (): Int32 {
        return 0
    }

    public func getText (): String {
        return ""
    }

    public func setText (text: String): Unit {
        
    }

    public func getToken (): Token {
        return Token()
    }

    public func setToken (token: Token): Unit {
        
    }

    public func setType (ttype: Int32): Unit {
        
    }

    public func getType (): Int32 {
        return 0
    }

    public func setChannel (channel: Int32): Unit {
        
    }

    public func getChannel (): Int32 {
        return 0
    }

    public func getChannelNames (): Array<String> {
        return Array<String>()
    }

    public func getModeNames (): Array<String> {
        return Array<String>()
    }

    public override func getTokenNames (): Array<String> {
        return Array<String>()
    }

    public func getAllTokens (): List< Token> {
        return List< Token>()
    }

    public func recover (e: LexerNoViableAltException): Unit {
        
    }

    public func notifyListeners (e: LexerNoViableAltException): Unit {
        
    }

    public func getErrorDisplay (s: String): String {
        return ""
    }

    public func getErrorDisplay (c: Int32): String {
        return ""
    }

    public func getCharErrorDisplay (c: Int32): String {
        return ""
    }

    public func recover (re: RecognitionException): Unit {
        
    }

}


