package default

// import org.antlr.v4.runtime.misc.Interval;
from std import io.*
// import java.nio.charset.Charset;
// import java.nio.charset.StandardCharsets;
from std import collection.*

open public class UnbufferedCharStream <: CharStream {

    protected var data: Array<Int32> = Array<Int32>()
    
    protected var n: Int32 = 0
    
    protected var p: Int32 = 0
    
    protected var numMarkers: Int32 = 0
    
    protected var lastChar: Int32 = -1
    
    protected var lastCharBufferStart: Int32 = 0
    
    protected var currentCharIndex: Int32 = 0
    
    protected var input: Reader = Reader()
    
    public var name: String = ""
    
    public init (){

    }

    public init (bufferSize: Int32){

    }

    public init (input: InputStream){

    }

    public init (input: Reader){

    }

    public init (input: InputStream, bufferSize: Int32){

    }

    public init (input: InputStream, bufferSize: Int32, charset: Charset){

    }

    public init (input: Reader, bufferSize: Int32){

    }

    public open func consume (): Unit {
  //    if (LA(1) == IntStream.EOF) {
  //        throw new IllegalStateException("cannot consume EOF");
  //    lastChar = data[p];
  //    if (p == n - 1 && numMarkers == 0) {
  //        n = 0;
  //        p = -1;
  //        lastCharBufferStart = lastChar;
  //    p++;
  //    currentCharIndex++;
  //    sync(1);

        
    }

    protected open func sync (want: Int32): Unit {
  //    int need = (p + want - 1) - n + 1;
  //    if (need > 0) {
  //        fill(need);

        
    }

    protected open func fill (n: Int32): Int32 {
  //    for (int i = 0; i < n; i++) {
  //        if (this.n > 0 && data[this.n - 1] == IntStream.EOF) {
  //            return i;
  //        try {
  //            int c = nextChar();
  //            if (c > Character.MAX_VALUE || c == IntStream.EOF) {
  //                add(c);
  //            } else {
  //                char ch = (char)c;
  //                if (Character.isLowSurrogate(ch)) {
  //                    throw new RuntimeException("Invalid UTF-16 (low surrogate with no preceding high surrogate)");
  //                } else if (Character.isHighSurrogate(ch)) {
  //                    int lowSurrogate = nextChar();
  //                    if (lowSurrogate > Character.MAX_VALUE) {
  //                        throw new RuntimeException("Invalid UTF-16 (high surrogate followed by code point > U+FFFF");
  //                    } else if (lowSurrogate == IntStream.EOF) {
  //                        throw new RuntimeException("Invalid UTF-16 (dangling high surrogate at end of file)");
  //                    } else {
  //                        char lowSurrogateChar = (char)lowSurrogate;
  //                        if (Character.isLowSurrogate(lowSurrogateChar)) {
  //                            add(Character.toCodePoint(ch, lowSurrogateChar));
  //                        } else {
  //                            throw new RuntimeException("Invalid UTF-16 (dangling high surrogate");
  //                } else {
  //                    add(c);
  //        } catch (IOException ioe) {
  //            throw new RuntimeException(ioe);
  //    return n;

        return 0
    }

    protected open func nextChar (): Int32 {
  //    return input.read();

        return 0
    }

    protected open func add (c: Int32): Unit {
  //    if (n >= data.length) {
  //        data = Arrays.copyOf(data, data.length * 2);
  //    data[n++] = c;

        
    }

    public open func LA (i: Int32): Int32 {
  //    if (i == -1) return lastChar;
  //    sync(i);
  //    int index = p + i - 1;
  //    if (index < 0) throw new IndexOutOfBoundsException();
  //    if (index >= n) return Option<IntStream>.EOF;
  //    return data[index];

        return 0
    }

    public open func mark (): Int32 {
  //    if (numMarkers == 0) {
  //        lastCharBufferStart = lastChar;
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
  //    if (numMarkers == 0 && p > 0) {
  //        System.arraycopy(data, p, data, 0, n - p);
  //        n = n - p;
  //        p = 0;
  //        lastCharBufferStart = lastChar;

        
    }

    public open func indexFunc (): Int32 {
  //    return currentCharIndex;

        return 0
    }

    public open func seek (index: Int32): Unit {
  //    if (index == currentCharIndex) {
  //        return;
  //    if (index > currentCharIndex) {
  //        sync(index - currentCharIndex);
  //        index = Math.min(index, getBufferStartIndex() + n - 1);
  //    int i = index - getBufferStartIndex();
  //    if (i < 0) {
  //        throw new IllegalArgumentException("cannot seek to negative index " + index);
  //    } else if (i >= n) {
  //        throw new UnsupportedOperationException("seek to index outside buffer: " + index + " not in " + getBufferStartIndex() + ".." + (getBufferStartIndex() + n));
  //    p = i;
  //    currentCharIndex = index;
  //    if (p == 0) {
  //        lastChar = lastCharBufferStart;
  //    } else {
  //        lastChar = data[p - 1];

        
    }

    public open func sizeFunc (): Int32 {
  //    throw new UnsupportedOperationException("Unbuffered stream cannot know its size");

        return 0
    }

    public open func getSourceName (): String {
  //    if (name == null || name.isEmpty()) {
  //        return UNKNOWN_SOURCE_NAME;
  //    return name;

        return ""
    }

    public open func getText (interval: Interval): String {
  //    if (interval.a < 0 || interval.b < interval.a - 1) {
  //        throw new IllegalArgumentException("invalid interval");
  //    int bufferStartIndex = getBufferStartIndex();
  //    if (n > 0 && data[n - 1] == Character.MAX_VALUE) {
  //        if (interval.a + interval.length() > bufferStartIndex + n) {
  //            throw new IllegalArgumentException("the interval extends past the end of the stream");
  //    if (interval.a < bufferStartIndex || interval.b >= bufferStartIndex + n) {
  //        throw new UnsupportedOperationException("interval " + interval + " outside buffer: " + bufferStartIndex + ".." + (bufferStartIndex + n - 1));
  //    int i = interval.a - bufferStartIndex;
  //    return new String(data, i, interval.length());

        return ""
    }

    protected open func getBufferStartIndex (): Int32 {
  //    return currentCharIndex - p;

        return 0
    }

}


