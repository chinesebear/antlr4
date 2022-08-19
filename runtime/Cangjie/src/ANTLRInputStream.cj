package default

// import org.antlr.v4.runtime.misc.Interval;
from std import io.*
from std import collection.*

//@Deprecated
open public class ANTLRInputStream <: CharStream {

    public static let READ_BUFFER_SIZE: Int32 = 1024
    
    public static let INITIAL_BUFFER_SIZE: Int32 = 1024
    
    protected var data: Array<Char> = Array<Char>()
    
    protected var n: Int32 = 0
    
    protected var p: Int32 = 0
    
    public var name: String = ""
    
    public init (){

    }

    public init (input: String){

    }

    public init (data: Array<Char>, numberOfActualCharsInArray: Int32){

    }

    public init (r: Reader){

    }

    public init (r: Reader, initialSize: Int32){

    }

    public init (r: Reader, initialSize: Int32, readChunkSize: Int32){

    }

    public init (input: InputStream){

    }

    public init (input: InputStream, initialSize: Int32){

    }

    public init (input: InputStream, initialSize: Int32, readChunkSize: Int32){

    }

    public open func load (r: Reader, size: Int32, readChunkSize: Int32): Unit {
  //    if (r == null) {
  //        return;
  //    if (size <= 0) {
  //        size = INITIAL_BUFFER_SIZE;
  //    if (readChunkSize <= 0) {
  //        readChunkSize = READ_BUFFER_SIZE;
  //    try {
  //        data = new char[size];
  //        int numRead = 0;
  //        int p = 0;
  //        do {
  //            if (p + readChunkSize > data.length) {
  //                data = Arrays.copyOf(data, data.length * 2);
  //            numRead = r.read(data, p, readChunkSize);
  //            p += numRead;
  //        }         while (numRead != -1);
  //        n = p + 1;
  //    } finally {
  //        r.close();

        
    }

    public open func reset (): Unit {
  //    p = 0;

        
    }

    public open func consume (): Unit {
  //    if (p >= n) {
  //        assert LA(1) == IntStream.EOF;
  //        throw new IllegalStateException("cannot consume EOF");
  //    if (p < n) {
  //        p++;

        
    }

    public open func LA (i: Int32): Int32 {
  //    if (i == 0) {
  //        return 0;
  //    if (i < 0) {
  //        i++;
  //        if ((p + i - 1) < 0) {
  //            return Option<IntStream>.EOF;
  //    if ((p + i - 1) >= n) {
  //        return Option<IntStream>.EOF;
  //    return data[p + i - 1];

        return 0
    }

    public open func LT (i: Int32): Int32 {
  //    return LA(i);

        return 0
    }

    public open func index (): Int32 {
  //    return p;

        return 0
    }

    public open func size (): Int32 {
  //    return n;

        return 0
    }

    public open func mark (): Int32 {
  //    return -1;

        return 0
    }

    public open func release (marker: Int32): Unit {

        
    }

    public open func seek (index: Int32): Unit {
  //    if (index <= p) {
  //        p = index;
  //        return;
  //    index = Math.min(index, n);
  //    while (p < index) {
  //        consume();

        
    }

    public open func getText (interval: Interval): String {
  //    int start = interval.a;
  //    int stop = interval.b;
  //    if (stop >= n) stop = n - 1;
  //    int count = stop - start + 1;
  //    if (start >= n) return "";
  //    return new String(data, start, count);

        return ""
    }

    public open func getSourceName (): String {
  //    if (name == null || name.isEmpty()) {
  //        return UNKNOWN_SOURCE_NAME;
  //    return name;

        return ""
    }

    public open func toString (): String {
  //    return new String(data);

        return ""
    }

}


