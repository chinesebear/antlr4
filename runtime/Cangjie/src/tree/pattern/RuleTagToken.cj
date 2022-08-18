package default

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.TokenSource;

open public class RuleTagToken <: Token {

    private let ruleName: String = ""
    
    private let bypassTokenType: Int32 = 0
    
    private let label: String = ""
    
    public init (ruleName: String, bypassTokenType: Int32){

    }

    public init (ruleName: String, bypassTokenType: Int32, label: String){

    }

    public open func getRuleName (): String {
  //    return ruleName;

        return ""
    }

    public open func getLabel (): String {
  //    return label;

        return ""
    }

    public open func getChannel (): Int32 {
  //    return DEFAULT_CHANNEL;

        return 0
    }

    public open func getText (): String {
  //    if (label != null) {
  //        return "<" + label + ":" + ruleName + ">";
  //    return "<" + ruleName + ">";

        return ""
    }

    public open func getType (): Int32 {
  //    return bypassTokenType;

        return 0
    }

    public open func getLine (): Int32 {
  //    return 0;

        return 0
    }

    public open func getCharPositionInLine (): Int32 {
  //    return -1;

        return 0
    }

    public open func getTokenIndex (): Int32 {
  //    return -1;

        return 0
    }

    public open func getStartIndex (): Int32 {
  //    return -1;

        return 0
    }

    public open func getStopIndex (): Int32 {
  //    return -1;

        return 0
    }

    public open func getTokenSource (): Option<TokenSource> {
  //    return null;

        return Option<TokenSource>.None
    }

    public open func getInputStream (): Option<CharStream> {
  //    return null;

        return Option<CharStream>.None
    }

    public open func toString (): String {
  //    return ruleName + ":" + bypassTokenType;

        return ""
    }

    public init() {}
}


