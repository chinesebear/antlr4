package default

// import org.antlr.v4.runtime.misc.Interval;

public interface TokenStream <: IntStream {

    func LT (k: Int32): Option<Token> 

    func get (index: Int32): Option<Token> 

    func getTokenSource (): Option<TokenSource> 

    func getText (interval: Interval): String 

    func getText (): String 

    func getText (ctx: RuleContext): String 

    func getText (start: Option<Token>, stop: Option<Token>): String 

}


