package tree

// import org.antlr.v4.runtime.TokenStream;
// import org.antlr.v4.runtime.misc.Interval;
import atn.*

public interface SyntaxTree <: Tree {

    func getSourceInterval (): Interval 

}


