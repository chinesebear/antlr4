package default

// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Pair;
from std import io.*

open public class CommonToken <: WritableToken & Serializable {

    protected static let EMPTY_SOURCE: Pair<TokenSource, CharStream> = Pair<TokenSource, CharStream>()
    
    protected var `type`: Int32 = 0
    
    protected var line: Int32 = 0
    
    protected var charPositionInLine: Int32 = -1
    
    protected var channel: Int32 = 0
    
    protected var source: Pair<TokenSource, CharStream> = Pair<TokenSource, CharStream>()
    
    protected var text: String = ""
    
    protected var index: Int32 = -1
    
    protected var start: Int32 = 0
    
    protected var stop: Int32 = 0
    
    public init (`type`: Int32){

    }

    public init (source: Pair<TokenSource, CharStream>, `type`: Int32, channel: Int32, start: Int32, stop: Int32){

    }

    public init (`type`: Int32, text: String){

    }

    public init (oldToken: Token){

    }

    public open func getType (): Int32 {
        return 0
    }

    public open func setLine (line: Int32): Unit {
        
    }

    public open func getText (): String {
        return ""
    }

    public open func setText (text: String): Unit {
        
    }

    public open func getLine (): Int32 {
        return 0
    }

    public open func getCharPositionInLine (): Int32 {
        return 0
    }

    public open func setCharPositionInLine (charPositionInLine: Int32): Unit {
        
    }

    public open func getChannel (): Int32 {
        return 0
    }

    public open func setChannel (channel: Int32): Unit {
        
    }

    public open func setType (`type`: Int32): Unit {
        
    }

    public open func getStartIndex (): Int32 {
        return 0
    }

    public open func setStartIndex (start: Int32): Unit {
        
    }

    public open func getStopIndex (): Int32 {
        return 0
    }

    public open func setStopIndex (stop: Int32): Unit {
        
    }

    public open func getTokenIndex (): Int32 {
        return 0
    }

    public open func setTokenIndex (index: Int32): Unit {
        
    }

    public open func getTokenSource (): TokenSource {
        return TokenSource()
    }

    public open func getInputStream (): CharStream {
        return CharStream()
    }

    public open func toString (): String {
        return ""
    }

    public open func toString (r: Recognizer<T, T>): String {
        return ""
    }

    public init() {}
}


