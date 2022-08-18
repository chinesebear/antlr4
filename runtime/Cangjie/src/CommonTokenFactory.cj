package default

// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Pair;

open public class CommonTokenFactory <: TokenFactory<CommonToken> {

    public static let DEFAULT: Option<TokenFactory<CommonToken>> = Option<TokenFactory<CommonToken>>.None
    
    protected let copyText: Bool = true
    
    public init (copyText: Bool){

    }

    public init (){

    }

    public open func create (source: Pair<Option<TokenSource>, Option<CharStream>>, `type`: Int32, text: String, channel: Int32, start: Int32, stop: Int32, line: Int32, charPositionInLine: Int32): CommonToken {
  //    CommonToken t = new CommonToken(source, type, channel, start, stop);
  //    t.setLine(line);
  //    t.setCharPositionInLine(charPositionInLine);
  //    if (text != null) {
  //        t.setText(text);
  //    } else if (copyText && source.b != null) {
  //        t.setText(source.b.getText(Interval.of(start, stop)));
  //    return t;

        return CommonToken()
    }

    public open func create (`type`: Int32, text: String): CommonToken {
  //    return new CommonToken(type, text);

        return CommonToken()
    }

}


