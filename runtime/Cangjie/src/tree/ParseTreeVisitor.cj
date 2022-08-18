package tree


public interface ParseTreeVisitor<T> {

    func visit (tree: ParseTree): T 

    func visitChildren (node: RuleNode): T 

    func visitTerminal (node: TerminalNode): T 

    func visitErrorNode (node: ErrorNode): T 

}


