package default

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

    public open func evaluate (t: Option<ParseTree>): Collection<Option<ParseTree>> {
  //    List<ParseTree> nodes = new ArrayList<ParseTree>();
  //    for (Tree c : Trees.getChildren(t)) {
  //        if (c instanceof TerminalNode) {
  //            TerminalNode tnode = (TerminalNode)c;
  //            if ((tnode.getSymbol().getType.BYTE == tokenType && !invert) || (tnode.getSymbol().getType.BYTE != tokenType && invert)) {
  //                nodes.add(tnode);
  //    return nodes;

        return Collection<Option<ParseTree>>()
    }

    public init() {}
}


