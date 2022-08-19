package default

// import org.antlr.v4.runtime.misc.IntegerStack;
from std import collection.*
// import java.util.Deque;

open public class IterativeParseTreeWalker <: ParseTreeWalker {

    public open override func walk (listener: Option<ParseTreeListener>, t: Option<ParseTree>): Unit {
  //    final Deque<ParseTree> nodeStack = new ArrayDeque<ParseTree>();
  //    final IntegerStack indexStack = new IntegerStack();
  //    ParseTree currentNode = t;
  //    int currentIndex = 0;
  //    while (currentNode != null) {
  //        if (currentNode instanceof ErrorNode) {
  //            listener.visitErrorNode((ErrorNode)currentNode);
  //        } else if (currentNode instanceof TerminalNode) {
  //            listener.visitTerminal((TerminalNode)currentNode);
  //        } else {
  //            final RuleNode r = (RuleNode)currentNode;
  //            enterRule(listener, r);
  //        if (currentNode.getChildCount() > 0) {
  //            nodeStack.push(currentNode);
  //            indexStack.push(currentIndex);
  //            currentIndex = 0;
  //            currentNode = currentNode.getChild(0);
  //            continue;
  //        do {
  //            if (currentNode instanceof RuleNode) {
  //                exitRule(listener, (RuleNode)currentNode);
  //            if (nodeStack.isEmpty()) {
  //                currentNode = null;
  //                currentIndex = 0;
  //                break;
  //            currentNode = nodeStack.peek().getChild(++currentIndex);
  //            if (currentNode != null) {
  //                break;
  //            currentNode = nodeStack.pop();
  //            currentIndex = indexStack.pop();
  //        }         while (currentNode != null);

        
    }

    public init() {}
}


