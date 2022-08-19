package default

// import org.antlr.v4.runtime.misc.Interval;
from std import collection.*

open public class UnbufferedTokenStream<T> <: TokenStream {

    protected var tokenSource: Option<TokenSource> = Option<TokenSource>.None
    
    protected var tokens: Array<Option<Token>> = Array<Option<Token>>()
    
    protected var n: Int32 = 0
    
    protected var p: Int32 = 0
    
    protected var numMarkers: Int32 = 0
    
    protected var lastToken: Option<Token> = Option<Token>.None
    
    protected var lastTokenBufferStart: Option<Token> = Option<Token>.None
    
    protected var currentTokenIndex: Int32 = 0
    
    public init (tokenSource: Option<TokenSource>){

    }

    public init (tokenSource: Option<TokenSource>, bufferSize: Int32){

    }

    public open func get (i: Int32): Option<Token> {
  //    int bufferStartIndex = getBufferStartIndex();
  //    if (i < bufferStartIndex || i >= bufferStartIndex + n) {
  //        throw new IndexOutOfBoundsException("get(" + i + ") outside buffer: " + bufferStartIndex + ".." + (bufferStartIndex + n));
  //    return tokens[i - bufferStartIndex];

        return Option<Token>.None
    }

    public open func LT (i: Int32): Option<Token> {
  //    if (i == -1) {
  //        return lastToken;
  //    sync(i);
  //    int index = p + i - 1;
  //    if (index < 0) {
  //        throw new IndexOutOfBoundsException("LT(" + i + ") gives negative index");
  //    if (index >= n) {
  //        assert n > 0 && tokens[n - 1].getType.BYTE == Token.EOF;
  //        return tokens[n - 1];
  //    return tokens[index];

        return Option<Token>.None
    }

    public open func LA (i: Int32): Int32 {
  //    return LT(i).getType.BYTE;

        return 0
    }

    public open func getTokenSource (): Option<TokenSource> {
  //    return tokenSource;

        return Option<TokenSource>.None
    }

    public open func getText (): String {
  //    return "";

        return ""
    }

    public open func getText (ctx: RuleContext): String {
  //    return getText(ctx.getSourceInterval());

        return ""
    }

    public open func getText (start: Option<Token>, stop: Option<Token>): String {
  //    return getText(Interval.of(start.getTokenIndex(), stop.getTokenIndex()));

        return ""
    }

    public open func consume (): Unit {
  //    if (LA(1) == Token.EOF) {
  //        throw new IllegalStateException("cannot consume EOF");
  //    lastToken = tokens[p];
  //    if (p == n - 1 && numMarkers == 0) {
  //        n = 0;
  //        p = -1;
  //        lastTokenBufferStart = lastToken;
  //    p++;
  //    currentTokenIndex++;
  //    sync(1);

        
    }

    protected open func sync (want: Int32): Unit {
  //    int need = (p + want - 1) - n + 1;
  //    if (need > 0) {
  //        fill(need);

        
    }

    protected open func fill (n: Int32): Int32 {
  //    for (int i = 0; i < n; i++) {
  //        if (this.n > 0 && tokens[this.n - 1].getType.BYTE == Token.EOF) {
  //            return i;
  //        Token t = tokenSource.nextToken();
  //        add(t);
  //    return n;

        return 0
    }

    protected open func add (t: Option<Token>): Unit {
  //    if (n >= tokens.length) {
  //        tokens = Arrays.copyOf(tokens, tokens.length * 2);
  //    if (t instanceof WritableToken) {
  //        ((WritableToken)t).setTokenIndex(getBufferStartIndex() + n);
  //    tokens[n++] = t;

        
    }

    public open func mark (): Int32 {
  //    if (numMarkers == 0) {
  //        lastTokenBufferStart = lastToken;
  //    int mark = -numMarkers - 1;
  //    numMarkers++;
  //    return mark;

        return 0
    }

    public open func release (marker: Int32): Unit {
  //    int expectedMark = -numMarkers;
  //    if (marker != expectedMark) {
  //        throw new IllegalStateException("release() called with an invalid marker.");
  //    numMarkers--;
  //    if (numMarkers == 0) {
  //        if (p > 0) {
  //            System.arraycopy(tokens, p, tokens, 0, n - p);
  //            n = n - p;
  //            p = 0;
  //        lastTokenBufferStart = lastToken;

        
    }

    public open func indexFunc (): Int32 {
  //    return currentTokenIndex;

        return 0
    }

    public open func seek (index: Int32): Unit {
  //    if (index == currentTokenIndex) {
  //        return;
  //    if (index > currentTokenIndex) {
  //        sync(index - currentTokenIndex);
  //        index = Math.min(index, getBufferStartIndex() + n - 1);
  //    int bufferStartIndex = getBufferStartIndex();
  //    int i = index - bufferStartIndex;
  //    if (i < 0) {
  //        throw new IllegalArgumentException("cannot seek to negative index " + index);
  //    } else if (i >= n) {
  //        throw new UnsupportedOperationException("seek to index outside buffer: " + index + " not in " + bufferStartIndex + ".." + (bufferStartIndex + n));
  //    p = i;
  //    currentTokenIndex = index;
  //    if (p == 0) {
  //        lastToken = lastTokenBufferStart;
  //    } else {
  //        lastToken = tokens[p - 1];

        
    }

    public open func sizeFunc (): Int32 {
  //    throw new UnsupportedOperationException("Unbuffered stream cannot know its size");

        return 0
    }

    public open func getSourceName (): String {
  //    return tokenSource.getSourceName();

        return ""
    }

    public open func getText (interval: Interval): String {
  //    int bufferStartIndex = getBufferStartIndex();
  //    int bufferStopIndex = bufferStartIndex + tokens.length - 1;
  //    int start = interval.a;
  //    int stop = interval.b;
  //    if (start < bufferStartIndex || stop > bufferStopIndex) {
  //        throw new UnsupportedOperationException("interval " + interval + " not in token buffer window: " + bufferStartIndex + ".." + bufferStopIndex);
  //    int a = start - bufferStartIndex;
  //    int b = stop - bufferStartIndex;
  //    StringBuilder buf = new StringBuilder();
  //    for (int i = a; i <= b; i++) {
  //        Token t = tokens[i];
  //        buf.append(t.getText());
  //    return buf.toString();

        return ""
    }

    protected open func getBufferStartIndex (): Int32 {
  //    return currentTokenIndex - p;

        return 0
    }

    public init() {}
}


