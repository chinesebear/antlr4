package default

// import org.antlr.v4.runtime.misc.Interval;
// import java.nio.charset.StandardCharsets;

public abstract class CodePointCharStream <: CharStream {

    protected let size: Int32 = 0
    
    protected let name: String = ""
    
    protected var position: Int32 = 0
    
    private init (position: Int32, remaining: Int32, name: String){

    }

    func getInternalStorage (): Object 

    public static func fromBuffer (codePointBuffer: CodePointBuffer): CodePointCharStream {
        return CodePointCharStream()
    }

    public static func fromBuffer (codePointBuffer: CodePointBuffer, name: String): CodePointCharStream {
        return CodePointCharStream()
    }

    public func consume (): Unit {
        
    }

    public func indexFunc (): Int32 {
        return 0
    }

    public func sizeFunc (): Int32 {
        return 0
    }

    public func mark (): Int32 {
        return 0
    }

    public func release (marker: Int32): Unit {
        
    }

    public func seek (index: Int32): Unit {
        
    }

    public func getSourceName (): String {
        return ""
    }

    public func toString (): String {
        return ""
    }

    public init() {}
}

class CodePointCharStreamCodePoint8BitCharStream <: CodePointCharStream {
    var class_out: CodePointCharStream
    public init(out: CodePointCharStream) {
        class_out = out
    }
    public init() {
        class_out = CodePointCharStream()
    }
    private let byteArray: Array<Int8> = Array<Int8>()
    
    public func getText (interval: Interval): String {
        return ""
    }

    public func LA (i: Int32): Int32 {
        return 0
    }

    func getInternalStorage (): Object {
        return Object()
    }

}


class CodePointCharStreamCodePoint16BitCharStream <: CodePointCharStream {
    var class_out: CodePointCharStream
    public init(out: CodePointCharStream) {
        class_out = out
    }
    public init() {
        class_out = CodePointCharStream()
    }
    private let charArray: Array<Char> = Array<Char>()
    
    public func getText (interval: Interval): String {
        return ""
    }

    public func LA (i: Int32): Int32 {
        return 0
    }

    func getInternalStorage (): Object {
        return Object()
    }

}


class CodePointCharStreamCodePoint32BitCharStream <: CodePointCharStream {
    var class_out: CodePointCharStream
    public init(out: CodePointCharStream) {
        class_out = out
    }
    public init() {
        class_out = CodePointCharStream()
    }
    private let intArray: Array<Int32> = Array<Int32>()
    
    public func getText (interval: Interval): String {
        return ""
    }

    public func LA (i: Int32): Int32 {
        return 0
    }

    func getInternalStorage (): Object {
        return Object()
    }

}



