package default

// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Pair;

open public class CommonTokenFactory <: TokenFactory<CommonToken> {

    public static let DEFAULT: TokenFactory<CommonToken> = TokenFactory<CommonToken>()
    
    protected let copyText: Bool = true
    
    public init (copyText: Bool){

    }

    public init (){

    }

    public open func create (source: Pair<TokenSource, CharStream>, `type`: Int32, text: String, channel: Int32, start: Int32, stop: Int32, line: Int32, charPositionInLine: Int32): CommonToken {
        return CommonToken()
    }

    public open func create (`type`: Int32, text: String): CommonToken {
        return CommonToken()
    }

}


