package tree


public abstract class AbstractParseTreeVisitor<T> <: ParseTreeVisitor<T> {

    public func visit (tree: ParseTree): T {
        return T()
    }

    public func visitChildren (node: RuleNode): T {
        return T()
    }

    public func visitTerminal (node: TerminalNode): T {
        return T()
    }

    public func visitErrorNode (node: ErrorNode): T {
        return T()
    }

    protected func defaultResult (): T {
        return T()
    }

    protected func aggregateResult (aggregate: T, nextResult: T): T {
        return T()
    }

    protected func shouldVisitNextChild (node: RuleNode, currentResult: T): Bool {
        return true
    }

    public init() {}
}


