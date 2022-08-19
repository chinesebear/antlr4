package default

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

    private let lexer: Option<Lexer> = Option<Lexer>.None
    
    private let parser: Option<Parser> = Option<Parser>.None
    
    protected var start: String = "<"
    
    protected var stop: String = ">"
    
    protected var escape: String = "\\"
    
    public open func setDelimiters (start: String, stop: String, escapeLeft: String): Unit {
  //    if (start == null || start.isEmpty()) {
  //        throw new IllegalArgumentException("start cannot be null or empty");
  //    if (stop == null || stop.isEmpty()) {
  //        throw new IllegalArgumentException("stop cannot be null or empty");
  //    this.start = start;
  //    this.stop = stop;
  //    this.escape = escapeLeft;

        
    }

    public open func matches (tree: Option<ParseTree>, pattern: String, patternRuleIndex: Int32): Bool {
  //    ParseTreePattern p = compile(pattern, patternRuleIndex);
  //    return matches(tree, p);

        return true
    }

    public open func matches (tree: Option<ParseTree>, pattern: ParseTreePattern): Bool {
  //    MultiMap<String, ParseTree> labels = new MultiMap<String, ParseTree>();
  //    ParseTree mismatchedNode = matchImpl(tree, pattern.getPatternTree(), labels);
  //    return mismatchedNode == null;

        return true
    }

    public open func `match` (tree: Option<ParseTree>, pattern: String, patternRuleIndex: Int32): ParseTreeMatch {
  //    ParseTreePattern p = compile(pattern, patternRuleIndex);
  //    return match(tree, p);

        return ParseTreeMatch()
    }

    public open func `match` (tree: Option<ParseTree>, pattern: ParseTreePattern): ParseTreeMatch {
  //    MultiMap<String, ParseTree> labels = new MultiMap<String, ParseTree>();
  //    ParseTree mismatchedNode = matchImpl(tree, pattern.getPatternTree(), labels);
  //    return new ParseTreeMatch(tree, pattern, labels, mismatchedNode);

        return ParseTreeMatch()
    }

    public open func compile (pattern: String, patternRuleIndex: Int32): ParseTreePattern {
  //    List<? extends Token> tokenList = tokenize(pattern);
  //    ListTokenSource tokenSrc = new ListTokenSource(tokenList);
  //    CommonTokenStream tokens = new CommonTokenStream(tokenSrc);
  //    ParserInterpreter parserInterp = new ParserInterpreter(parser.getGrammarFileName(), parser.getVocabulary(), Arrays.asList(parser.getRuleNames()), parser.getATNWithBypassAlts(), tokens);
  //    ParseTree tree = null;
  //    try {
  //        parserInterp.setErrorHandler(new BailErrorStrategy());
  //        tree = parserInterp.parse(patternRuleIndex);
  //    } catch (ParseCancellationException e) {
  //        throw (RecognitionException)e.getCause();
  //    } catch (RecognitionException re) {
  //        throw re;
  //    } catch (Exception e) {
  //        throw new ParseTreePatternMatcherCannotInvokeStartRule(e);
  //    if (tokens.LA(1) != Token.EOF) {
  //        throw new ParseTreePatternMatcherStartRuleDoesNotConsumeFullPattern();
  //    return new ParseTreePattern(this, pattern, patternRuleIndex, tree);

        return ParseTreePattern()
    }

    public open func getLexer (): Option<Lexer> {
  //    return lexer;

        return Option<Lexer>.None
    }

    public open func getParser (): Option<Parser> {
  //    return parser;

        return Option<Parser>.None
    }

    protected open func matchImpl (tree: Option<ParseTree>, patternTree: Option<ParseTree>, labels: MultiMap<String, Option<ParseTree>>): Option<ParseTree> {
  //    if (tree == null) {
  //        throw new IllegalArgumentException("tree cannot be null");
  //    if (patternTree == null) {
  //        throw new IllegalArgumentException("patternTree cannot be null");
  //    if (tree instanceof TerminalNode && patternTree instanceof TerminalNode) {
  //        TerminalNode t1 = (TerminalNode)tree;
  //        TerminalNode t2 = (TerminalNode)patternTree;
  //        ParseTree mismatchedNode = null;
  //        if (t1.getSymbol().getType.BYTE == t2.getSymbol().getType.BYTE) {
  //            if (t2.getSymbol() instanceof TokenTagToken) {
  //                TokenTagToken tokenTagToken = (TokenTagToken)t2.getSymbol();
  //                labels.map(tokenTagToken.getTokenName(), tree);
  //                if (tokenTagToken.getLabel() != null) {
  //                    labels.map(tokenTagToken.getLabel(), tree);
  //            } else if (t1.getText().equals(t2.getText())) {
  //            } else {
  //                if (mismatchedNode == null) {
  //                    mismatchedNode = t1;
  //        } else {
  //            if (mismatchedNode == null) {
  //                mismatchedNode = t1;
  //        return mismatchedNode;
  //    if (tree instanceof ParserRuleContext && patternTree instanceof ParserRuleContext) {
  //        ParserRuleContext r1 = (ParserRuleContext)tree;
  //        ParserRuleContext r2 = (ParserRuleContext)patternTree;
  //        ParseTree mismatchedNode = null;
  //        RuleTagToken ruleTagToken = getRuleTagToken(r2);
  //        if (ruleTagToken != null) {
  //            ParseTreeMatch m = null;
  //            if (r1.getRuleContext().getRuleIndex() == r2.getRuleContext().getRuleIndex()) {
  //                labels.map(ruleTagToken.getRuleName(), tree);
  //                if (ruleTagToken.getLabel() != null) {
  //                    labels.map(ruleTagToken.getLabel(), tree);
  //            } else {
  //                if (mismatchedNode == null) {
  //                    mismatchedNode = r1;
  //            return mismatchedNode;
  //        if (r1.getChildCount() != r2.getChildCount()) {
  //            if (mismatchedNode == null) {
  //                mismatchedNode = r1;
  //            return mismatchedNode;
  //        int n = r1.getChildCount();
  //        for (int i = 0; i < n; i++) {
  //            ParseTree childMatch = matchImpl(r1.getChild(i), patternTree.getChild(i), labels);
  //            if (childMatch != null) {
  //                return childMatch;
  //        return mismatchedNode;
  //    return tree;

        return Option<ParseTree>.None
    }

    protected open func getRuleTagToken (t: Option<ParseTree>): RuleTagToken {
  //    if (t instanceof RuleNode) {
  //        RuleNode r = (RuleNode)t;
  //        if (r.getChildCount() == 1 && r.getChild(0) instanceof TerminalNode) {
  //            TerminalNode c = (TerminalNode)r.getChild(0);
  //            if (c.getSymbol() instanceof RuleTagToken) {
  //                return (RuleTagToken)c.getSymbol();
  //    return null;

        return RuleTagToken()
    }

    public open func tokenize (pattern: String): List<Option<Token>> {
  //    List<Chunk> chunks = split(pattern);
  //    List<Token> tokens = new ArrayList<Token>();
  //    for (Chunk chunk : chunks) {
  //        if (chunk instanceof TagChunk) {
  //            TagChunk tagChunk = (TagChunk)chunk;
  //            if (Character.isUpperCase(tagChunk.getTag().charAt(0))) {
  //                Integer ttype = parser.getTokenType(tagChunk.getTag());
  //                if (ttype == Token.INVALID_TYPE) {
  //                    throw new IllegalArgumentException("Unknown token " + tagChunk.getTag() + " in pattern: " + pattern);
  //                TokenTagToken t = new TokenTagToken(tagChunk.getTag(), ttype, tagChunk.getLabel());
  //                tokens.add(t);
  //            } else if (Character.isLowerCase(tagChunk.getTag().charAt(0))) {
  //                int ruleIndex = parser.getRuleIndex(tagChunk.getTag());
  //                if (ruleIndex == -1) {
  //                    throw new IllegalArgumentException("Unknown rule " + tagChunk.getTag() + " in pattern: " + pattern);
  //                int ruleImaginaryTokenType = parser.getATNWithBypassAlts().ruleToTokenType[ruleIndex];
  //                tokens.add(new RuleTagToken(tagChunk.getTag(), ruleImaginaryTokenType, tagChunk.getLabel()));
  //            } else {
  //                throw new IllegalArgumentException("invalid tag: " + tagChunk.getTag() + " in pattern: " + pattern);
  //        } else {
  //            TextChunk textChunk = (TextChunk)chunk;
  //            ANTLRInputStream in = new ANTLRInputStream(textChunk.getText());
  //            lexer.setInputStream(in);
  //            Token t = lexer.nextToken();
  //            while (t.getType.BYTE != Token.EOF) {
  //                tokens.add(t);
  //                t = lexer.nextToken();
  //    return tokens;

        return List<Option<Token>>()
    }

    public open func split (pattern: String): List<Option<Chunk>> {
  //    int p = 0;
  //    int n = pattern.length();
  //    List<Chunk> chunks = new ArrayList<Chunk>();
  //    StringBuilder buf = new StringBuilder();
  //    List<Integer> starts = new ArrayList<Integer>();
  //    List<Integer> stops = new ArrayList<Integer>();
  //    while (p < n) {
  //        if (p == pattern.indexOf(escape + start, p)) {
  //            p += escape.length() + start.length();
  //        } else if (p == pattern.indexOf(escape + stop, p)) {
  //            p += escape.length() + stop.length();
  //        } else if (p == pattern.indexOf(start, p)) {
  //            starts.add(p);
  //            p += start.length();
  //        } else if (p == pattern.indexOf(stop, p)) {
  //            stops.add(p);
  //            p += stop.length();
  //        } else {
  //            p++;
  //    if (starts.size() > stops.size()) {
  //        throw new IllegalArgumentException("unterminated tag in pattern: " + pattern);
  //    if (starts.size() < stops.size()) {
  //        throw new IllegalArgumentException("missing start tag in pattern: " + pattern);
  //    int ntags = starts.size();
  //    for (int i = 0; i < ntags; i++) {
  //        if (starts.get(i) >= stops.get(i)) {
  //            throw new IllegalArgumentException("tag delimiters out of order in pattern: " + pattern);
  //    if (ntags == 0) {
  //        String text = pattern.substring(0, n);
  //        chunks.add(new TextChunk(text));
  //    if (ntags > 0 && starts.get(0) > 0) {
  //        String text = pattern.substring(0, starts.get(0));
  //        chunks.add(new TextChunk(text));
  //    for (int i = 0; i < ntags; i++) {
  //        String tag = pattern.substring(starts.get(i) + start.length(), stops.get(i));
  //        String ruleOrToken = tag;
  //        String label = null;
  //        int colon = tag.indexOf(':');
  //        if (colon >= 0) {
  //            label = tag.substring(0, colon);
  //            ruleOrToken = tag.substring(colon + 1, tag.length());
  //        chunks.add(new TagChunk(label, ruleOrToken));
  //        if (i + 1 < ntags) {
  //            String text = pattern.substring(stops.get(i) + stop.length(), starts.get(i + 1));
  //            chunks.add(new TextChunk(text));
  //    if (ntags > 0) {
  //        int afterLastTag = stops.get(ntags - 1) + stop.length();
  //        if (afterLastTag < n) {
  //            String text = pattern.substring(afterLastTag, n);
  //            chunks.add(new TextChunk(text));
  //    for (int i = 0; i < chunks.size(); i++) {
  //        Chunk c = chunks.get(i);
  //        if (c instanceof TextChunk) {
  //            TextChunk tc = (TextChunk)c;
  //            String unescaped = tc.getText().replace(escape, "");
  //            if (unescaped.length() < tc.getText().length()) {
  //                chunks.set(i, new TextChunk(unescaped));
  //    return chunks;

        return List<Option<Chunk>>()
    }

    public init() {}
}

public class ParseTreePatternMatcherCannotInvokeStartRule <: RuntimeException {
    var class_out: ParseTreePatternMatcher
    public init(out: ParseTreePatternMatcher) {
        class_out = out
    }
    public init() {
        class_out = ParseTreePatternMatcher()
    }
}


public class ParseTreePatternMatcherStartRuleDoesNotConsumeFullPattern <: RuntimeException {
    var class_out: ParseTreePatternMatcher
    public init(out: ParseTreePatternMatcher) {
        class_out = out
    }
    public init() {
        class_out = ParseTreePatternMatcher()
    }
}



