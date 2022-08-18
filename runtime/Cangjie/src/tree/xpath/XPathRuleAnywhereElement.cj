package default

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.Trees;
// import java.util.Collection;

open public class XPathRuleAnywhereElement <: XPathElement {

    protected var ruleIndex: Int32 = 0
    
    public init (ruleName: String, ruleIndex: Int32){

    }

    public open func evaluate (t: Option<ParseTree>): Collection<Option<ParseTree>> {
  //    return Trees.findAllRuleNodes(t, ruleIndex);

        return Collection<Option<ParseTree>>()
    }

    public init() {}
}


