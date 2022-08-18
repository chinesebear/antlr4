package tree.xpath

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

    public open override func evaluate (t: ParseTree): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public init() {}
}


