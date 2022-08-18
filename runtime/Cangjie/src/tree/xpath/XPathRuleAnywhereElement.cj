package tree.xpath

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.Trees;
// import java.util.Collection;
import atn.*

open public class XPathRuleAnywhereElement <: XPathElement {

    protected var ruleIndex: Int32 = 0
    
    public init (ruleName: String, ruleIndex: Int32){

    }

    public open override func evaluate (t: ParseTree): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public init() {}
}


