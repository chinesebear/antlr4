package tree

// import org.antlr.v4.runtime.RuleContext;
import atn.*

public interface RuleNode <: ParseTree {

    func getRuleContext (): RuleContext 

}


