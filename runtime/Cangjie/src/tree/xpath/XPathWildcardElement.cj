package default

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.Tree;
// import org.antlr.v4.runtime.tree.Trees;
from std import collection.*
// import java.util.Collection;

open public class XPathWildcardElement <: XPathElement {

    public init (){

    }

    public open func evaluate (t: Option<ParseTree>): Collection<Option<ParseTree>> {
  //    if (invert) return new ArrayList<Option<ParseTree>>();
  //    List<ParseTree> kids = new ArrayList<ParseTree>();
  //    for (Tree c : Trees.getChildren(t)) {
  //        kids.add((ParseTree)c);
  //    return kids;

        return Collection<Option<ParseTree>>()
    }

}


