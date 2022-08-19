package default


public interface ParseTreeVisitor<T> {

    func visit (tree: Option<ParseTree>): T 

    func visitChildren (node: Option<RuleNode>): T 

    func visitTerminal (node: Option<TerminalNode>): T 

    func visitErrorNode (node: Option<ErrorNode>): T 

}


