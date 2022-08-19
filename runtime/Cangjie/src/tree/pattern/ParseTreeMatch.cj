package default

from std import collection.*
// import org.antlr.v4.runtime.tree.ParseTree;
// import java.util.Collections;

open public class ParseTreeMatch {

    private let tree: Option<ParseTree> = Option<ParseTree>.None
    
    private let pattern: ParseTreePattern = ParseTreePattern()
    
    private let labels: MultiMap<String, Option<ParseTree>> = MultiMap<String, Option<ParseTree>>()
    
    private let mismatchedNode: Option<ParseTree> = Option<ParseTree>.None
    
    public init (tree: Option<ParseTree>, pattern: ParseTreePattern, labels: MultiMap<String, Option<ParseTree>>, mismatchedNode: Option<ParseTree>){

    }

    public open func get (label: String): Option<ParseTree> {
  //    List<ParseTree> parseTrees = labels.get(label);
  //    if (parseTrees == null || parseTrees.size() == 0) {
  //        return null;
  //    return parseTrees.get(parseTrees.size() - 1);

        return Option<ParseTree>.None
    }

    public open func getAll (label: String): List<Option<ParseTree>> {
  //    List<ParseTree> nodes = labels.get(label);
  //    if (nodes == null) {
  //        return Collections.emptyList();
  //    return nodes;

        return List<Option<ParseTree>>()
    }

    public open func getLabels (): MultiMap<String, Option<ParseTree>> {
  //    return labels;

        return MultiMap<String, Option<ParseTree>>()
    }

    public open func getMismatchedNode (): Option<ParseTree> {
  //    return mismatchedNode;

        return Option<ParseTree>.None
    }

    public open func succeeded (): Bool {
  //    return mismatchedNode == null;

        return true
    }

    public open func getPattern (): ParseTreePattern {
  //    return pattern;

        return ParseTreePattern()
    }

    public open func getTree (): Option<ParseTree> {
  //    return tree;

        return Option<ParseTree>.None
    }

    public open func toString (): String {
  //    return String.format("Match %s; found %d labels", succeeded() ? "succeeded" : "failed", getLabels().size());

        return ""
    }

    public init() {}
}


