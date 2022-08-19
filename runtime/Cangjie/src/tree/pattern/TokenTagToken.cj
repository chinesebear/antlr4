package default

// import org.antlr.v4.runtime.CommonToken;
// import org.antlr.v4.runtime.Token;

open public class TokenTagToken <: CommonToken {

    private let tokenName: String = ""
    
    private let label: String = ""
    
    public init (tokenName: String, `type`: Int32){

    }

    public init (tokenName: String, `type`: Int32, label: String){

    }

    public open func getTokenName (): String {
  //    return tokenName;

        return ""
    }

    public open func getLabel (): String {
  //    return label;

        return ""
    }

    public open override func getText (): String {
  //    if (label != null) {
  //        return "<" + label + ":" + tokenName + ">";
  //    return "<" + tokenName + ">";

        return ""
    }

    public open override func toString (): String {
  //    return tokenName + ":" + type;

        return ""
    }

    public init() {}
}


