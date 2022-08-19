package default

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
    
    protected var elements: Array<Option<XPathElement>> = Array<Option<XPathElement>>()
    
    protected var parser: Option<Parser> = Option<Parser>.None
    
    public init (parser: Option<Parser>, path: String){

    }

    public open func split (path: String): Array<Option<XPathElement>> {
  //    ANTLRInputStream in;
  //    try {
  //        in = new ANTLRInputStream(new StringReader(path));
  //    } catch (IOException ioe) {
  //        throw new IllegalArgumentException("Could not read path: " + path, ioe);
  //    XPathLexer lexer = new XPathLexer(in){
  //        
  //        @Override()
  //        public void recover(LexerNoViableAltException e) {
  //            throw e;
  //    };
  //    lexer.removeErrorListeners();
  //    lexer.addErrorListener(new XPathLexerErrorListener());
  //    CommonTokenStream tokenStream = new CommonTokenStream(lexer);
  //    try {
  //        tokenStream.fill();
  //    } catch (LexerNoViableAltException e) {
  //        int pos = lexer.getCharPositionInLine();
  //        String msg = "Invalid tokens or characters at index " + pos + " in path \'" + path + "\'";
  //        throw new IllegalArgumentException(msg, e);
  //    List<Token> tokens = tokenStream.getTokens();
  //    List<XPathElement> elements = new ArrayList<XPathElement>();
  //    int n = tokens.size();
  //    int i = 0;
  //    loop: while (i < n) {
  //        Token el = tokens.get(i);
  //        Token next = null;
  //        switch (el.getType.BYTE) {
  //        case XPathLexer.ROOT: 
  //        
  //        case XPathLexer.ANYWHERE: 
  //            boolean anywhere = el.getType.BYTE == XPathLexer.ANYWHERE;
  //            i++;
  //            next = tokens.get(i);
  //            boolean invert = next.getType.BYTE == XPathLexer.BANG;
  //            if (invert) {
  //                i++;
  //                next = tokens.get(i);
  //            XPathElement pathElement = getXPathElement(next, anywhere);
  //            pathElement.invert = invert;
  //            elements.add(pathElement);
  //            i++;
  //            break;
  //        
  //        case XPathLexer.TOKEN_REF: 
  //        
  //        case XPathLexer.RULE_REF: 
  //        
  //        case XPathLexer.WILDCARD: 
  //            elements.add(getXPathElement(el, false));
  //            i++;
  //            break;
  //        
  //        case Token.EOF: 
  //            break loop;
  //        
  //        default: 
  //            throw new IllegalArgumentException("Unknowth path element " + el);
  //        
  //    return elements.toArray(new Option<XPathElement>[0]);

        return Array<Option<XPathElement>>()
    }

    protected open func getXPathElement (wordToken: Option<Token>, anywhere: Bool): Option<XPathElement> {
  //    if (wordToken.getType.BYTE == Token.EOF) {
  //        throw new IllegalArgumentException("Missing path element at end of path");
  //    String word = wordToken.getText();
  //    int ttype = parser.getTokenType(word);
  //    int ruleIndex = parser.getRuleIndex(word);
  //    switch (wordToken.getType.BYTE) {
  //    case XPathLexer.WILDCARD: 
  //        return anywhere ? new XPathWildcardAnywhereElement() : new XPathWildcardElement();
  //    
  //    case XPathLexer.TOKEN_REF: 
  //    
  //    case XPathLexer.STRING: 
  //        if (ttype == Token.INVALID_TYPE) {
  //            throw new IllegalArgumentException(word + " at index " + wordToken.getStartIndex() + " isn\'t a valid token name");
  //        return anywhere ? new XPathTokenAnywhereElement(word, ttype) : new XPathTokenElement(word, ttype);
  //    
  //    default: 
  //        if (ruleIndex == -1) {
  //            throw new IllegalArgumentException(word + " at index " + wordToken.getStartIndex() + " isn\'t a valid rule name");
  //        return anywhere ? new XPathRuleAnywhereElement(word, ruleIndex) : new XPathRuleElement(word, ruleIndex);
  //    

        return Option<XPathElement>.None
    }

    public static func findAll (tree: Option<ParseTree>, xpath: String, parser: Option<Parser>): Collection<Option<ParseTree>> {
  //    XPath p = new XPath(parser, xpath);
  //    return p.evaluate(tree);

        return Collection<Option<ParseTree>>()
    }

    public open func evaluate (t: Option<ParseTree>): Collection<Option<ParseTree>> {
  //    ParserRuleContext dummyRoot = new ParserRuleContext();
  //    dummyRoot.children = Collections.singletonList(t);
  //    Collection<ParseTree> work = Collections.<ParseTree>singleton(dummyRoot);
  //    int i = 0;
  //    while (i < elements.length) {
  //        Collection<ParseTree> next = new LinkedHashSet<ParseTree>();
  //        for (ParseTree node : work) {
  //            if (node.getChildCount() > 0) {
  //                Collection<? extends ParseTree> matching = elements[i].evaluate(node);
  //                next.addAll(matching);
  //        i++;
  //        work = next;
  //    return work;

        return Collection<Option<ParseTree>>()
    }

    public init() {}
}


