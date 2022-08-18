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
        
    }

    protected open func sync (want: Int32): Unit {
        
    }

    protected open func fill (n: Int32): Int32 {
        return 0
    }

    protected open func nextChar (): Int32 {
        return 0
    }

    protected open func add (c: Int32): Unit {
        
    }

    public open func LA (i: Int32): Int32 {
        return 0
    }

    public open func mark (): Int32 {
        return 0
    }

    public open func release (marker: Int32): Unit {
        
    }

    public open func indexFunc (): Int32 {
        return 0
    }

    public open func seek (index: Int32): Unit {
        
    }

    public open func size (): Int32 {
        return 0
    }

    public open func getSourceName (): String {
        return ""
    }

    public open func getText (interval: Interval): String {
        return ""
    }

    protected open func getBufferStartIndex (): Int32 {
        return 0
    }

}


