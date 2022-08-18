package default

// import org.antlr.v4.runtime.misc.Interval;
from std import collection.*

open public class BufferedTokenStream <: TokenStream {

    protected var tokenSource: TokenSource = TokenSource()
    
    protected var tokens: List<Token> = List<Token>()
    
    protected var p: Int32 = -1
    
    protected var fetchedEOF: Bool = true
    
    public init (tokenSource: TokenSource){

    }

    public open func getTokenSource (): TokenSource {
        return TokenSource()
    }

    public open func indexFunc (): Int32 {
        return 0
    }

    public open func mark (): Int32 {
        return 0
    }

    public open func release (marker: Int32): Unit {
        
    }

    public open func reset (): Unit {
        
    }

    public open func seek (index: Int32): Unit {
        
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func consume (): Unit {
        
    }

    protected open func sync (i: Int32): Bool {
        return true
    }

    protected open func fetch (n: Int32): Int32 {
        return 0
    }

    public open func get (i: Int32): Token {
        return Token()
    }

    public open func get (start: Int32, stop: Int32): List<Token> {
        return List<Token>()
    }

    public open func LA (i: Int32): Int32 {
        return 0
    }

    protected open func LB (k: Int32): Token {
        return Token()
    }

    public open func LT (k: Int32): Token {
        return Token()
    }

    protected open func adjustSeekIndex (i: Int32): Int32 {
        return 0
    }

    protected open func lazyInit (): Unit {
        
    }

    protected open func setup (): Unit {
        
    }

    public open func setTokenSource (tokenSource: TokenSource): Unit {
        
    }

    public open func getTokens (): List<Token> {
        return List<Token>()
    }

    public open func getTokens (start: Int32, stop: Int32): List<Token> {
        return List<Token>()
    }

    public open func getTokens (start: Int32, stop: Int32, types: Set<Integer>): List<Token> {
        return List<Token>()
    }

    public open func getTokens (start: Int32, stop: Int32, ttype: Int32): List<Token> {
        return List<Token>()
    }

    protected open func nextTokenOnChannel (i: Int32, channel: Int32): Int32 {
        return 0
    }

    protected open func previousTokenOnChannel (i: Int32, channel: Int32): Int32 {
        return 0
    }

    public open func getHiddenTokensToRight (tokenIndex: Int32, channel: Int32): List<Token> {
        return List<Token>()
    }

    public open func getHiddenTokensToRight (tokenIndex: Int32): List<Token> {
        return List<Token>()
    }

    public open func getHiddenTokensToLeft (tokenIndex: Int32, channel: Int32): List<Token> {
        return List<Token>()
    }

    public open func getHiddenTokensToLeft (tokenIndex: Int32): List<Token> {
        return List<Token>()
    }

    protected open func filterForChannel (`from`: Int32, to: Int32, channel: Int32): List<Token> {
        return List<Token>()
    }

    public open func getSourceName (): String {
        return ""
    }

    public open func getText (): String {
        return ""
    }

    public open func getText (interval: Interval): String {
        return ""
    }

    public open func getText (ctx: RuleContext): String {
        return ""
    }

    public open func getText (start: Token, stop: Token): String {
        return ""
    }

    public open func fill (): Unit {
        
    }

    public init() {}
}


