package default

// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.Tree;
// import org.antlr.v4.runtime.tree.Trees;
from std import collection.*
// import java.util.Collection;

open public class XPathRuleElement <: XPathElement {

    protected var ruleIndex: Int32 = 0
    
    public init (ruleName: String, ruleIndex: Int32){

    }

    public open func evaluate (t: Option<ParseTree>): Collection<Option<ParseTree>> {
  //    List<ParseTree> nodes = new ArrayList<ParseTree>();
  //    for (Tree c : Trees.getChildren(t)) {
  //        if (c instanceof ParserRuleContext) {
  //            ParserRuleContext ctx = (ParserRuleContext)c;
  //            if ((ctx.getRuleIndex() == ruleIndex && !invert) || (ctx.getRuleIndex() != ruleIndex && invert)) {
  //                nodes.add(ctx);
  //    return nodes;

        return Collection<Option<ParseTree>>()
    }

    public init() {}
}


