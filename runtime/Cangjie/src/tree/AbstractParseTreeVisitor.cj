package default


public abstract class AbstractParseTreeVisitor<T> <: ParseTreeVisitor<T> {

    public open func visit (tree: Option<ParseTree>): T {
  //    return tree.accept(this);

        return T()
    }

    public open func visitChildren (node: Option<RuleNode>): T {
  //    T result = defaultResult();
  //    int n = node.getChildCount();
  //    for (int i = 0; i < n; i++) {
  //        if (!shouldVisitNextChild(node, result)) {
  //            break;
  //        ParseTree c = node.getChild(i);
  //        T childResult = c.accept(this);
  //        result = aggregateResult(result, childResult);
  //    return result;

        return T()
    }

    public open func visitTerminal (node: Option<TerminalNode>): T {
  //    return defaultResult();

        return T()
    }

    public open func visitErrorNode (node: Option<ErrorNode>): T {
  //    return defaultResult();

        return T()
    }

    protected open func defaultResult (): T {
  //    return null;

        return T()
    }

    protected open func aggregateResult (aggregate: T, nextResult: T): T {
  //    return nextResult;

        return T()
    }

    protected open func shouldVisitNextChild (node: Option<RuleNode>, currentResult: T): Bool {
  //    return true;

        return true
    }

    public init() {}
}


