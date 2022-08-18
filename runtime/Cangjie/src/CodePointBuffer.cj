package default

// import java.nio.ByteBuffer;
// import java.nio.CharBuffer;
// import java.nio.IntBuffer;

open public class CodePointBuffer {

    private let `type`: Type = Type()
    
    private let byteBuffer: ByteBuffer = ByteBuffer()
    
    private let charBuffer: CharBuffer = CharBuffer()
    
    private let intBuffer: IntBuffer = IntBuffer()
    
    private init (`type`: Type, byteBuffer: ByteBuffer, charBuffer: CharBuffer, intBuffer: IntBuffer){

    }

    public static func withBytes (byteBuffer: ByteBuffer): CodePointBuffer {
        return CodePointBuffer()
    }

    public static func withChars (charBuffer: CharBuffer): CodePointBuffer {
        return CodePointBuffer()
    }

    public static func withInts (intBuffer: IntBuffer): CodePointBuffer {
        return CodePointBuffer()
    }

    public open func positionFunc (): Int32 {
        return 0
    }

    public open func positionFunc (newPosition: Int32): Unit {
        
    }

    public open func remaining (): Int32 {
        return 0
    }

    public open func get (offset: Int32): Int32 {
        return 0
    }

    open func getType (): Type {
        return Type()
    }

    open func arrayOffset (): Int32 {
        return 0
    }

    open func byteArrayFunc (): Array<Int8> {
        return Array<Int8>()
    }

    open func charArrayFunc (): Array<Char> {
        return Array<Char>()
    }

    open func intArrayFunc (): Array<Int32> {
        return Array<Int32>()
    }

    public static func builder (initialBufferSize: Int32): Builder {
        return Builder()
    }

    public init() {}
}

public enum Type {
    | BYTE
    | CHAR
    | INT
}


class CodePointBufferBuilder {
    var class_out: CodePointBuffer
    public init(out: CodePointBuffer) {
        class_out = out
    }
    public init() {
        class_out = CodePointBuffer()
    }
    private var `type`: Type = Type()
    
    private var byteBuffer: ByteBuffer = ByteBuffer()
    
    private var charBuffer: CharBuffer = CharBuffer()
    
    private var intBuffer: IntBuffer = IntBuffer()
    
    private var prevHighSurrogate: Int32 = 0
    
    func getType (): Type {
        return Type()
    }

    func getByteBuffer (): ByteBuffer {
        return ByteBuffer()
    }

    func getCharBuffer (): CharBuffer {
        return CharBuffer()
    }

    func getIntBuffer (): IntBuffer {
        return IntBuffer()
    }

    public func build (): CodePointBuffer {
        return CodePointBuffer()
    }

    private static func roundUpToNextPowerOfTwo (i: Int32): Int32 {
        return 0
    }

    public func ensureRemaining (remainingNeeded: Int32): Unit {
        
    }

    public func append (utf16In: CharBuffer): Unit {
        
    }

    private func appendArray (utf16In: CharBuffer): Unit {
        
    }

    private func appendArrayByte (utf16In: CharBuffer): Unit {
        
    }

    private func appendArrayChar (utf16In: CharBuffer): Unit {
        
    }

    private func appendArrayInt (utf16In: CharBuffer): Unit {
        
    }

    private func byteToCharBuffer (toAppend: Int32): Unit {
        
    }

    private func byteToIntBuffer (toAppend: Int32): Unit {
        
    }

    private func charToIntBuffer (toAppend: Int32): Unit {
        
    }

}



