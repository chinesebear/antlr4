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
        
    }

    public open func reset (): Unit {
        
    }

    public open func consume (): Unit {
        
    }

    public open func LA (i: Int32): Int32 {
        return 0
    }

    public open func LT (i: Int32): Int32 {
        return 0
    }

    public open func indexFunc (): Int32 {
        return 0
    }

    public open func sizeFunc (): Int32 {
        return 0
    }

    public open func mark (): Int32 {
        return 0
    }

    public open func release (marker: Int32): Unit {
        
    }

    public open func seek (index: Int32): Unit {
        
    }

    public open func getText (interval: Interval): String {
        return ""
    }

    public open func getSourceName (): String {
        return ""
    }

    public open func toString (): String {
        return ""
    }

}


