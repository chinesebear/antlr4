package default

// import org.antlr.v4.runtime.TokenStream;
// import org.antlr.v4.runtime.misc.Interval;

public interface SyntaxTree <: Tree {

    func getSourceInterval (): Interval 

}


