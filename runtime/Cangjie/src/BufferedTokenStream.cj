package default

// import org.antlr.v4.runtime.misc.Interval;
from std import collection.*

open public class BufferedTokenStream <: TokenStream {

    protected var tokenSource: Option<TokenSource> = Option<TokenSource>.None
    
    protected var tokens: List<Option<Token>> = List<Option<Token>>()
    
    protected var p: Int32 = -1
    
    protected var fetchedEOF: Bool = true
    
    public init (tokenSource: Option<TokenSource>){

    }

    public open func getTokenSource (): Option<TokenSource> {
  //    return tokenSource;

        return Option<TokenSource>.None
    }

    public open func indexFunc (): Int32 {
  //    return p;

        return 0
    }

    public open func mark (): Int32 {
  //    return 0;

        return 0
    }

    public open func release (marker: Int32): Unit {

        
    }

    public open func reset (): Unit {
  //    seek(0);

        
    }

    public open func seek (index: Int32): Unit {
  //    lazyInit();
  //    p = adjustSeekIndex(index);

        
    }

    public open func size (): Int32 {
  //    return tokens.size();

        return 0
    }

    public open func consume (): Unit {
  //    boolean skipEofCheck;
  //    if (p >= 0) {
  //        if (fetchedEOF) {
  //            skipEofCheck = p < tokens.size() - 1;
  //        } else {
  //            skipEofCheck = p < tokens.size();
  //    } else {
  //        skipEofCheck = false;
  //    if (!skipEofCheck && LA(1) == EOF) {
  //        throw new IllegalStateException("cannot consume EOF");
  //    if (sync(p + 1)) {
  //        p = adjustSeekIndex(p + 1);

        
    }

    protected open func sync (i: Int32): Bool {
  //    assert i >= 0;
  //    int n = i - tokens.size() + 1;
  //    if (n > 0) {
  //        int fetched = fetch(n);
  //        return fetched >= n;
  //    return true;

        return true
    }

    protected open func fetch (n: Int32): Int32 {
  //    if (fetchedEOF) {
  //        return 0;
  //    for (int i = 0; i < n; i++) {
  //        Token t = tokenSource.nextToken();
  //        if (t instanceof WritableToken) {
  //            ((WritableToken)t).setTokenIndex(tokens.size());
  //        tokens.add(t);
  //        if (t.getType.BYTE == Token.EOF) {
  //            fetchedEOF = true;
  //            return i + 1;
  //    return n;

        return 0
    }

    public open func get (i: Int32): Option<Token> {
  //    if (i < 0 || i >= tokens.size()) {
  //        throw new IndexOutOfBoundsException("token index " + i + " out of range 0.." + (tokens.size() - 1));
  //    return tokens.get(i);

        return Option<Token>.None
    }

    public open func get (start: Int32, stop: Int32): List<Option<Token>> {
  //    if (start < 0 || stop < 0) return null;
  //    lazyInit();
  //    List<Token> subset = new ArrayList<Token>();
  //    if (stop >= tokens.size()) stop = tokens.size() - 1;
  //    for (int i = start; i <= stop; i++) {
  //        Token t = tokens.get(i);
  //        if (t.getType.BYTE == Token.EOF) break;
  //        subset.add(t);
  //    return subset;

        return List<Option<Token>>()
    }

    public open func LA (i: Int32): Int32 {
  //    return LT(i).getType.BYTE;

        return 0
    }

    protected open func LB (k: Int32): Option<Token> {
  //    if ((p - k) < 0) return null;
  //    return tokens.get(p - k);

        return Option<Token>.None
    }

    public open func LT (k: Int32): Option<Token> {
  //    lazyInit();
  //    if (k == 0) return null;
  //    if (k < 0) return LB(-k);
  //    int i = p + k - 1;
  //    sync(i);
  //    if (i >= tokens.size()) {
  //        return tokens.get(tokens.size() - 1);
  //    return tokens.get(i);

        return Option<Token>.None
    }

    protected open func adjustSeekIndex (i: Int32): Int32 {
  //    return i;

        return 0
    }

    protected open func lazyInit (): Unit {
  //    if (p == -1) {
  //        setup();

        
    }

    protected open func setup (): Unit {
  //    sync(0);
  //    p = adjustSeekIndex(0);

        
    }

    public open func setTokenSource (tokenSource: Option<TokenSource>): Unit {
  //    this.tokenSource = tokenSource;
  //    tokens.clear();
  //    p = -1;
  //    fetchedEOF = false;

        
    }

    public open func getTokens (): List<Option<Token>> {
  //    return tokens;

        return List<Option<Token>>()
    }

    public open func getTokens (start: Int32, stop: Int32): List<Option<Token>> {
  //    return getTokens(start, stop, null);

        return List<Option<Token>>()
    }

    public open func getTokens (start: Int32, stop: Int32, types: Set<Integer>): List<Option<Token>> {
  //    lazyInit();
  //    if (start < 0 || stop >= tokens.size() || stop < 0 || start >= tokens.size()) {
  //        throw new IndexOutOfBoundsException("start " + start + " or stop " + stop + " not in 0.." + (tokens.size() - 1));
  //    if (start > stop) return null;
  //    List<Token> filteredTokens = new ArrayList<Token>();
  //    for (int i = start; i <= stop; i++) {
  //        Token t = tokens.get(i);
  //        if (types == null || types.contains(t.getType.BYTE)) {
  //            filteredTokens.add(t);
  //    if (filteredTokens.isEmpty()) {
  //        filteredTokens = null;
  //    return filteredTokens;

        return List<Option<Token>>()
    }

    public open func getTokens (start: Int32, stop: Int32, ttype: Int32): List<Option<Token>> {
  //    HashSet<Integer> s = new HashSet<Integer>(ttype);
  //    s.add(ttype);
  //    return getTokens(start, stop, s);

        return List<Option<Token>>()
    }

    protected open func nextTokenOnChannel (i: Int32, channel: Int32): Int32 {
  //    sync(i);
  //    if (i >= size()) {
  //        return size() - 1;
  //    Token token = tokens.get(i);
  //    while (token.getChannel() != channel) {
  //        if (token.getType.BYTE == Token.EOF) {
  //            return i;
  //        i++;
  //        sync(i);
  //        token = tokens.get(i);
  //    return i;

        return 0
    }

    protected open func previousTokenOnChannel (i: Int32, channel: Int32): Int32 {
  //    sync(i);
  //    if (i >= size()) {
  //        return size() - 1;
  //    while (i >= 0) {
  //        Token token = tokens.get(i);
  //        if (token.getType.BYTE == Token.EOF || token.getChannel() == channel) {
  //            return i;
  //        i--;
  //    return i;

        return 0
    }

    public open func getHiddenTokensToRight (tokenIndex: Int32, channel: Int32): List<Option<Token>> {
  //    lazyInit();
  //    if (tokenIndex < 0 || tokenIndex >= tokens.size()) {
  //        throw new IndexOutOfBoundsException(tokenIndex + " not in 0.." + (tokens.size() - 1));
  //    int nextOnChannel = nextTokenOnChannel(tokenIndex + 1, Lexer.DEFAULT_TOKEN_CHANNEL);
  //    int to;
  //    int from = tokenIndex + 1;
  //    if (nextOnChannel == -1) to = size() - 1; else to = nextOnChannel;
  //    return filterForChannel(from, to, channel);

        return List<Option<Token>>()
    }

    public open func getHiddenTokensToRight (tokenIndex: Int32): List<Option<Token>> {
  //    return getHiddenTokensToRight(tokenIndex, -1);

        return List<Option<Token>>()
    }

    public open func getHiddenTokensToLeft (tokenIndex: Int32, channel: Int32): List<Option<Token>> {
  //    lazyInit();
  //    if (tokenIndex < 0 || tokenIndex >= tokens.size()) {
  //        throw new IndexOutOfBoundsException(tokenIndex + " not in 0.." + (tokens.size() - 1));
  //    if (tokenIndex == 0) {
  //        return null;
  //    int prevOnChannel = previousTokenOnChannel(tokenIndex - 1, Lexer.DEFAULT_TOKEN_CHANNEL);
  //    if (prevOnChannel == tokenIndex - 1) return null;
  //    int from = prevOnChannel + 1;
  //    int to = tokenIndex - 1;
  //    return filterForChannel(from, to, channel);

        return List<Option<Token>>()
    }

    public open func getHiddenTokensToLeft (tokenIndex: Int32): List<Option<Token>> {
  //    return getHiddenTokensToLeft(tokenIndex, -1);

        return List<Option<Token>>()
    }

    protected open func filterForChannel (`from`: Int32, to: Int32, channel: Int32): List<Option<Token>> {
  //    List<Token> hidden = new ArrayList<Token>();
  //    for (int i = from; i <= to; i++) {
  //        Token t = tokens.get(i);
  //        if (channel == -1) {
  //            if (t.getChannel() != Lexer.DEFAULT_TOKEN_CHANNEL) hidden.add(t);
  //        } else {
  //            if (t.getChannel() == channel) hidden.add(t);
  //    if (hidden.size() == 0) return null;
  //    return hidden;

        return List<Option<Token>>()
    }

    public open func getSourceName (): String {
  //    return tokenSource.getSourceName();

        return ""
    }

    public open func getText (): String {
  //    return getText(Interval.of(0, size() - 1));

        return ""
    }

    public open func getText (interval: Interval): String {
  //    int start = interval.a;
  //    int stop = interval.b;
  //    if (start < 0 || stop < 0) return "";
  //    fill();
  //    if (stop >= tokens.size()) stop = tokens.size() - 1;
  //    StringBuilder buf = new StringBuilder();
  //    for (int i = start; i <= stop; i++) {
  //        Token t = tokens.get(i);
  //        if (t.getType.BYTE == Token.EOF) break;
  //        buf.append(t.getText());
  //    return buf.toString();

        return ""
    }

    public open func getText (ctx: RuleContext): String {
  //    return getText(ctx.getSourceInterval());

        return ""
    }

    public open func getText (start: Option<Token>, stop: Option<Token>): String {
  //    if (start != null && stop != null) {
  //        return getText(Interval.of(start.getTokenIndex(), stop.getTokenIndex()));
  //    return "";

        return ""
    }

    public open func fill (): Unit {
  //    lazyInit();
  //    final int blockSize = 1000;
  //    while (true) {
  //        int fetched = fetch(blockSize);
  //        if (fetched < blockSize) {
  //            return;

        
    }

    public init() {}
}


