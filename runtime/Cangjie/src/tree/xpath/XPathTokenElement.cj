package tree.xpath

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.TerminalNode;
// import org.antlr.v4.runtime.tree.Tree;
// import org.antlr.v4.runtime.tree.Trees;
from std import collection.*
// import java.util.Collection;

open public class XPathTokenElement <: XPathElement {

    protected var tokenType: Int32 = 0
    
    public init (tokenName: String, tokenType: Int32){

    }

    public open override func evaluate (t: ParseTree): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public init() {}
}


