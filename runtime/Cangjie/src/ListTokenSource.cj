package default

// import org.antlr.v4.runtime.misc.Pair;
from std import collection.*

open public class ListTokenSource <: TokenSource {

    protected let tokens: List< Token> = List< Token>()
    
    private let sourceName: String = ""
    
    protected var i: Int32 = 0
    
    protected var eofToken: Token = Token()
    
    private var factory: TokenFactory<T> = TokenFactory<T>()
    
    public init (tokens: List< Token>){

    }

    public init (tokens: List< Token>, sourceName: String){

    }

    public open func getCharPositionInLine (): Int32 {
        return 0
    }

    public open func nextToken (): Token {
        return Token()
    }

    public open func getLine (): Int32 {
        return 0
    }

    public open func getInputStream (): CharStream {
        return CharStream()
    }

    public open func getSourceName (): String {
        return ""
    }

    public open func setTokenFactory (factory: TokenFactory<T>): Unit {
        
    }

    public open func getTokenFactory (): TokenFactory<T> {
        return TokenFactory<T>()
    }

    public init() {}
}


