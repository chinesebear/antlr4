package tree.pattern

// import org.antlr.v4.runtime.CommonToken;
// import org.antlr.v4.runtime.Token;
import atn.*

open public class TokenTagToken <: CommonToken {

    private let tokenName: String = ""
    
    private let label: String = ""
    
    public init (tokenName: String, `type`: Int32){

    }

    public init (tokenName: String, `type`: Int32, label: String){

    }

    public open func getTokenName (): String {
        return ""
    }

    public open func getLabel (): String {
        return ""
    }

    public open override func getText (): String {
        return ""
    }

    public open override func toString (): String {
        return ""
    }

    public init() {}
}


