package tree.xpath

// import org.antlr.v4.runtime.ANTLRInputStream;
// import org.antlr.v4.runtime.CommonTokenStream;
// import org.antlr.v4.runtime.LexerNoViableAltException;
// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.tree.ParseTree;
from std import io.*
from std import collection.*
// import java.util.Collection;
// import java.util.Collections;

open public class XPath {

    public static let WILDCARD: String = "*"
    
    public static let NOT: String = "!"
    
    protected var path: String = ""
    
    protected var elements: Array<XPathElement> = Array<XPathElement>()
    
    protected var parser: Parser = Parser()
    
    public init (parser: Parser, path: String){

    }

    public open func split (path: String): Array<XPathElement> {
        return Array<XPathElement>()
    }

    protected open func getXPathElement (wordToken: Token, anywhere: Bool): XPathElement {
        return XPathElement()
    }

    public static func findAll (tree: ParseTree, xpath: String, parser: Parser): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public open func evaluate (t: ParseTree): Collection<ParseTree> {
        return Collection<ParseTree>()
    }

    public init() {}
}


