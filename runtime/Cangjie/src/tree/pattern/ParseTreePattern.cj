package tree.pattern

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.xpath.XPath;
from std import collection.*
// import java.util.Collection;

open public class ParseTreePattern {

    private let patternRuleIndex: Int32 = 0
    
    private let pattern: String = ""
    
    private let patternTree: ParseTree = ParseTree()
    
    private let matcher: ParseTreePatternMatcher = ParseTreePatternMatcher()
    
    public init (matcher: ParseTreePatternMatcher, pattern: String, patternRuleIndex: Int32, patternTree: ParseTree){

    }

    public open func `match` (tree: ParseTree): ParseTreeMatch {
        return ParseTreeMatch()
    }

    public open func matches (tree: ParseTree): Bool {
        return true
    }

    public open func findAll (tree: ParseTree, xpath: String): List<ParseTreeMatch> {
        return List<ParseTreeMatch>()
    }

    public open func getMatcher (): ParseTreePatternMatcher {
        return ParseTreePatternMatcher()
    }

    public open func getPattern (): String {
        return ""
    }

    public open func getPatternRuleIndex (): Int32 {
        return 0
    }

    public open func getPatternTree (): ParseTree {
        return ParseTree()
    }

    public init() {}
}


