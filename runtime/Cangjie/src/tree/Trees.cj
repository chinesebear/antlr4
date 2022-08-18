package tree

// import org.antlr.v4.runtime.CommonToken;
// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.misc.Interval;
// import org.antlr.v4.runtime.misc.Predicate;
// import org.antlr.v4.runtime.misc.Utils;
from std import collection.*
// import java.util.Collection;
// import java.util.Collections;

open public class Trees {

    public static func toStringTree (t: Tree): String {
        return ""
    }

    public static func toStringTree (t: Tree, recog: Parser): String {
        return ""
    }

    public static func toStringTree (t: Tree, ruleNames: List<String>): String {
        return ""
    }

    public static func getNodeText (t: Tree, recog: Parser): String {
        return ""
    }

    public static func getNodeText (t: Tree, ruleNames: List<String>): String {
        return ""
    }

    public static func getChildren (t: Tree): List<Tree> {
        return List<Tree>()
    }

    public static func getAncestors (t: Tree): List< Tree> {
        return List< Tree>()
    }

    public static func isAncestorOf (t: Tree, u: Tree): Bool {
        return true
    }

    public static func findAllTokenNodes (t: ParseTree, ttype: Int32): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public static func findAllRuleNodes (t: ParseTree, ruleIndex: Int32): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public static func findAllNodes (t: ParseTree, index: Int32, findTokens: Bool): List<ParseTree> {
        return List<ParseTree>()
    }

    public static func findAllNodes (t: ParseTree, index: Int32, findTokens: Bool, nodes: List< ParseTree>): Unit {
        
    }

    public static func getDescendants (t: ParseTree): List<ParseTree> {
        return List<ParseTree>()
    }

    public static func descendants (t: ParseTree): List<ParseTree> {
        return List<ParseTree>()
    }

    public static func getRootOfSubtreeEnclosingRegion (t: ParseTree, startTokenIndex: Int32, stopTokenIndex: Int32): ParserRuleContext {
        return ParserRuleContext()
    }

    public static func stripChildrenOutOfRange (t: ParserRuleContext, root: ParserRuleContext, startIndex: Int32, stopIndex: Int32): Unit {
        
    }

    public static func findNodeSuchThat (t: Tree, pred: Predicate<Tree>): Tree {
        return Tree()
    }

    private init (){

    }

}


