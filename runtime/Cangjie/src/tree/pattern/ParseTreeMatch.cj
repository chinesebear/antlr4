package tree.pattern

from std import collection.*
// import org.antlr.v4.runtime.tree.ParseTree;
// import java.util.Collections;

open public class ParseTreeMatch {

    private let tree: ParseTree = ParseTree()
    
    private let pattern: ParseTreePattern = ParseTreePattern()
    
    private let labels: MultiMap<String, ParseTree> = MultiMap<String, ParseTree>()
    
    private let mismatchedNode: ParseTree = ParseTree()
    
    public init (tree: ParseTree, pattern: ParseTreePattern, labels: MultiMap<String, ParseTree>, mismatchedNode: ParseTree){

    }

    public open func get (label: String): ParseTree {
        return ParseTree()
    }

    public open func getAll (label: String): List<ParseTree> {
        return List<ParseTree>()
    }

    public open func getLabels (): MultiMap<String, ParseTree> {
        return MultiMap<String, ParseTree>()
    }

    public open func getMismatchedNode (): ParseTree {
        return ParseTree()
    }

    public open func succeeded (): Bool {
        return true
    }

    public open func getPattern (): ParseTreePattern {
        return ParseTreePattern()
    }

    public open func getTree (): ParseTree {
        return ParseTree()
    }

    public open func toString (): String {
        return ""
    }

    public init() {}
}


