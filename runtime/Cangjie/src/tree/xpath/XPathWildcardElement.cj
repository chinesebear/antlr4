package tree.xpath

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.Tree;
// import org.antlr.v4.runtime.tree.Trees;
from std import collection.*
// import java.util.Collection;

open public class XPathWildcardElement <: XPathElement {

    public init (){

    }

    public open override func evaluate (t: ParseTree): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

}


