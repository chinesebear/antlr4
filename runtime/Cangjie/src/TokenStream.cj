package default

// import org.antlr.v4.runtime.misc.Interval;

public interface TokenStream <: IntStream {

    func LT (k: Int32): Token 

    func get (index: Int32): Token 

    func getTokenSource (): TokenSource 

    func getText (interval: Interval): String 

    func getText (): String 

    func getText (ctx: RuleContext): String 

    func getText (start: Token, stop: Token): String 

}


