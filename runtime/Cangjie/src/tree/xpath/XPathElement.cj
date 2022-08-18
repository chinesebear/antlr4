package default

// import org.antlr.v4.runtime.tree.ParseTree;
// import java.util.Collection;

public abstract class XPathElement {

    protected var nodeName: String = ""
    
    protected var invert: Bool = true
    
    public init (nodeName: String){

    }

    public func evaluate (t: Option<ParseTree>): Collection<Option<ParseTree>> 

    public open func toString (): String {
  //    String inv = invert ? "!" : "";
  //    return getClass().getSimpleName() + "[" + inv + nodeName + "]";

        return ""
    }

    public init() {}
}


