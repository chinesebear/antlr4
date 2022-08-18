package default

// import org.antlr.v4.runtime.misc.Interval;
from std import collection.*

open public class UnbufferedTokenStream<T> <: TokenStream where T<: Token  {

    protected var tokenSource: TokenSource = TokenSource()
    
    protected var tokens: Array<Token> = Array<Token>()
    
    protected var n: Int32 = 0
    
    protected var p: Int32 = 0
    
    protected var numMarkers: Int32 = 0
    
    protected var lastToken: Token = Token()
    
    protected var lastTokenBufferStart: Token = Token()
    
    protected var currentTokenIndex: Int32 = 0
    
    public init (tokenSource: TokenSource){

    }

    public init (tokenSource: TokenSource, bufferSize: Int32){

    }

    public open func get (i: Int32): Token {
        return Token()
    }

    public open func LT (i: Int32): Token {
        return Token()
    }

    public open func LA (i: Int32): Int32 {
        return 0
    }

    public open func getTokenSource (): TokenSource {
        return TokenSource()
    }

    public open func getText (): String {
        return ""
    }

    public open func getText (ctx: RuleContext): String {
        return ""
    }

    public open func getText (start: Token, stop: Token): String {
        return ""
    }

    public open func consume (): Unit {
        
    }

    protected open func sync (want: Int32): Unit {
        
    }

    protected open func fill (n: Int32): Int32 {
        return 0
    }

    protected open func add (t: Token): Unit {
        
    }

    public open func mark (): Int32 {
        return 0
    }

    public open func release (marker: Int32): Unit {
        
    }

    public open func indexFunc (): Int32 {
        return 0
    }

    public open func seek (index: Int32): Unit {
        
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func getSourceName (): String {
        return ""
    }

    public open func getText (interval: Interval): String {
        return ""
    }

    protected open func getBufferStartIndex (): Int32 {
        return 0
    }

    public init() {}
}


