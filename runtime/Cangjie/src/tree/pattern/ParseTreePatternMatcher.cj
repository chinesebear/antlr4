package tree.pattern

// import org.antlr.v4.runtime.ANTLRInputStream;
// import org.antlr.v4.runtime.BailErrorStrategy;
// import org.antlr.v4.runtime.CommonTokenStream;
// import org.antlr.v4.runtime.Lexer;
from std import collection.*
// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.ParserInterpreter;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.RecognitionException;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.misc.ParseCancellationException;
// import org.antlr.v4.runtime.tree.ParseTree;
// import org.antlr.v4.runtime.tree.RuleNode;
// import org.antlr.v4.runtime.tree.TerminalNode;

open public class ParseTreePatternMatcher {

    private let lexer: Lexer = Lexer()
    
    private let parser: Parser = Parser()
    
    protected var start: String = "<"
    
    protected var stop: String = ">"
    
    protected var escape: String = "\\"
    
    public open func setDelimiters (start: String, stop: String, escapeLeft: String): Unit {
        
    }

    public open func matches (tree: ParseTree, pattern: String, patternRuleIndex: Int32): Bool {
        return true
    }

    public open func matches (tree: ParseTree, pattern: ParseTreePattern): Bool {
        return true
    }

    public open func `match` (tree: ParseTree, pattern: String, patternRuleIndex: Int32): ParseTreeMatch {
        return ParseTreeMatch()
    }

    public open func `match` (tree: ParseTree, pattern: ParseTreePattern): ParseTreeMatch {
        return ParseTreeMatch()
    }

    public open func compile (pattern: String, patternRuleIndex: Int32): ParseTreePattern {
        return ParseTreePattern()
    }

    public open func getLexer (): Lexer {
        return Lexer()
    }

    public open func getParser (): Parser {
        return Parser()
    }

    protected open func matchImpl (tree: ParseTree, patternTree: ParseTree, labels: MultiMap<String, ParseTree>): ParseTree {
        return ParseTree()
    }

    protected open func getRuleTagToken (t: ParseTree): RuleTagToken {
        return RuleTagToken()
    }

    public open func tokenize (pattern: String): List< Token> {
        return List< Token>()
    }

    public open func split (pattern: String): List<Chunk> {
        return List<Chunk>()
    }

    public init() {}
}

class ParseTreePatternMatcherCannotInvokeStartRule <: RuntimeException {
    var class_out: ParseTreePatternMatcher
    public init(out: ParseTreePatternMatcher) {
        class_out = out
    }
    public init() {
        class_out = ParseTreePatternMatcher()
    }
}


class ParseTreePatternMatcherStartRuleDoesNotConsumeFullPattern <: RuntimeException {
    var class_out: ParseTreePatternMatcher
    public init(out: ParseTreePatternMatcher) {
        class_out = out
    }
    public init() {
        class_out = ParseTreePatternMatcher()
    }
}



