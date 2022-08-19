package default

// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.xpath.XPath;
from std import collection.*
// import java.util.Collection;

open public class ParseTreePattern {

    private let patternRuleIndex: Int32 = 0
    
    private let pattern: String = ""
    
    private let patternTree: Option<ParseTree> = Option<ParseTree>.None
    
    private let matcher: ParseTreePatternMatcher = ParseTreePatternMatcher()
    
    public init (matcher: ParseTreePatternMatcher, pattern: String, patternRuleIndex: Int32, patternTree: Option<ParseTree>){

    }

    public open func `match` (tree: Option<ParseTree>): ParseTreeMatch {
  //    return matcher.match(tree, this);

        return ParseTreeMatch()
    }

    public open func matches (tree: Option<ParseTree>): Bool {
  //    return matcher.match(tree, this).succeeded();

        return true
    }

    public open func findAll (tree: Option<ParseTree>, xpath: String): List<ParseTreeMatch> {
  //    Collection<ParseTree> subtrees = XPath.findAll(tree, xpath, matcher.getParser());
  //    List<ParseTreeMatch> matches = new ArrayList<ParseTreeMatch>();
  //    for (ParseTree t : subtrees) {
  //        ParseTreeMatch match = match(t);
  //        if (match.succeeded()) {
  //            matches.add(match);
  //    return matches;

        return List<ParseTreeMatch>()
    }

    public open func getMatcher (): ParseTreePatternMatcher {
  //    return matcher;

        return ParseTreePatternMatcher()
    }

    public open func getPattern (): String {
  //    return pattern;

        return ""
    }

    public open func getPatternRuleIndex (): Int32 {
  //    return patternRuleIndex;

        return 0
    }

    public open func getPatternTree (): Option<ParseTree> {
  //    return patternTree;

        return Option<ParseTree>.None
    }

    public init() {}
}


