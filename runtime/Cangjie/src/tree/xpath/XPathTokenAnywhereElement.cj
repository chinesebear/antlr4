package default

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.Trees;
// import java.util.Collection;

open public class XPathTokenAnywhereElement <: XPathElement {

    protected var tokenType: Int32 = 0
    
    public init (tokenName: String, tokenType: Int32){

    }

    public open func evaluate (t: Option<ParseTree>): Collection<Option<ParseTree>> {
  //    return Trees.findAllTokenNodes(t, tokenType);

        return Collection<Option<ParseTree>>()
    }

    public init() {}
}


