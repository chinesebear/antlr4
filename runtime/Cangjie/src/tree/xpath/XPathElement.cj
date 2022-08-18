package tree.xpath

// import org.antlr.v4.runtime.tree.ParseTree;
// import java.util.Collection;

import atn.*

public abstract class XPathElement {

    protected var nodeName: String = ""
    
    protected var invert: Bool = true
    
    public init (nodeName: String){

    }

    public func evaluate (t: ParseTree): Collection<ParseTree> 

    public func toString (): String {
        return ""
    }

    public init() {}
}


