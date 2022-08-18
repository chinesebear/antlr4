package tree.xpath

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.Trees;
// import java.util.Collection;
import atn.*

open public class XPathTokenAnywhereElement <: XPathElement {

    protected var tokenType: Int32 = 0
    
    public init (tokenName: String, tokenType: Int32){

    }

    public open override func evaluate (t: ParseTree): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public init() {}
}


