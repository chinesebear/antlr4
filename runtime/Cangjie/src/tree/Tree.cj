package default

// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;

public interface Tree {

    func getParent (): Option<Tree> 

    func getPayload (): Object 

    func getChild (i: Int32): Option<Tree> 

    func getChildCount (): Int32 

    func toStringTree (): String 

}


