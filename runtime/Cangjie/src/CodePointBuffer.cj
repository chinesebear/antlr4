package default

// import java.nio.ByteBuffer;
// import java.nio.CharBuffer;
// import java.nio.IntBuffer;

open public class CodePointBuffer {

    private let `type`: Type = Type.BYTE
    
    private let byteBuffer: ByteBuffer = ByteBuffer()
    
    private let charBuffer: CharBuffer = CharBuffer()
    
    private let intBuffer: IntBuffer = IntBuffer()
    
    private init (`type`: Type, byteBuffer: ByteBuffer, charBuffer: CharBuffer, intBuffer: IntBuffer){

    }

    public static func withBytes (byteBuffer: ByteBuffer): CodePointBuffer {
  //    return new CodePointBuffer(Type.BYTE, byteBuffer, null, null);

        return CodePointBuffer()
    }

    public static func withChars (charBuffer: CharBuffer): CodePointBuffer {
  //    return new CodePointBuffer(Type.CHAR, null, charBuffer, null);

        return CodePointBuffer()
    }

    public static func withInts (intBuffer: IntBuffer): CodePointBuffer {
  //    return new CodePointBuffer(Type.INT, null, null, intBuffer);

        return CodePointBuffer()
    }

    public open func position (): Int32 {
  //    switch (type) {
  //    case BYTE: 
  //        return byteBuffer.position();
  //    
  //    case CHAR: 
  //        return charBuffer.position();
  //    
  //    case INT: 
  //        return intBuffer.position();
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return 0
    }

    public open func position (newPosition: Int32): Unit {
  //    switch (type) {
  //    case BYTE: 
  //        byteBuffer.position(newPosition);
  //        break;
  //    
  //    case CHAR: 
  //        charBuffer.position(newPosition);
  //        break;
  //    
  //    case INT: 
  //        intBuffer.position(newPosition);
  //        break;
  //    

        
    }

    public open func remaining (): Int32 {
  //    switch (type) {
  //    case BYTE: 
  //        return byteBuffer.remaining();
  //    
  //    case CHAR: 
  //        return charBuffer.remaining();
  //    
  //    case INT: 
  //        return intBuffer.remaining();
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return 0
    }

    public open func get (offset: Int32): Int32 {
  //    switch (type) {
  //    case BYTE: 
  //        return byteBuffer.get(offset);
  //    
  //    case CHAR: 
  //        return charBuffer.get(offset);
  //    
  //    case INT: 
  //        return intBuffer.get(offset);
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return 0
    }

    open func getType (): Type {
  //    return type;

        return Type.BYTE
    }

    open func arrayOffset (): Int32 {
  //    switch (type) {
  //    case BYTE: 
  //        return byteBuffer.arrayOffset();
  //    
  //    case CHAR: 
  //        return charBuffer.arrayOffset();
  //    
  //    case INT: 
  //        return intBuffer.arrayOffset();
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return 0
    }

    open func byteArray (): Array<Int8> {
  //    assert type == Type.BYTE;
  //    return byteBuffer.array();

        return Array<Int8>()
    }

    open func charArray (): Array<Char> {
  //    assert type == Type.CHAR;
  //    return charBuffer.array();

        return Array<Char>()
    }

    open func intArray (): Array<Int32> {
  //    assert type == Type.INT;
  //    return intBuffer.array();

        return Array<Int32>()
    }

    public static func builder (initialBufferSize: Int32): CodePointBufferBuilder {
  //    return new CodePointBufferBuilder(initialBufferSize);

        return CodePointBufferBuilder()
    }

    public init() {}
}

public enum Type {
    | BYTE
    | CHAR
    | INT
}


public class CodePointBufferBuilder {
    var class_out: CodePointBuffer
    public init(out: CodePointBuffer) {
        class_out = out
    }
    public init() {
        class_out = CodePointBuffer()
    }
    private var `type`: Type = Type.BYTE
    
    private var byteBuffer: ByteBuffer = ByteBuffer()
    
    private var charBuffer: CharBuffer = CharBuffer()
    
    private var intBuffer: IntBuffer = IntBuffer()
    
    private var prevHighSurrogate: Int32 = 0
    
    func getType (): Type {
  //    return type;

        return Type.BYTE
    }

    func getByteBuffer (): ByteBuffer {
  //    return byteBuffer;

        return ByteBuffer()
    }

    func getCharBuffer (): CharBuffer {
  //    return charBuffer;

        return CharBuffer()
    }

    func getIntBuffer (): IntBuffer {
  //    return intBuffer;

        return IntBuffer()
    }

    public func build (): CodePointBuffer {
  //    switch (type) {
  //    case BYTE: 
  //        byteBuffer.flip();
  //        break;
  //    
  //    case CHAR: 
  //        charBuffer.flip();
  //        break;
  //    
  //    case INT: 
  //        intBuffer.flip();
  //        break;
  //    
  //    return new CodePointBuffer(type, byteBuffer, charBuffer, intBuffer);

        return CodePointBuffer()
    }

    private static func roundUpToNextPowerOfTwo (i: Int32): Int32 {
  //    int nextPowerOfTwo = 32 - Integer.numberOfLeadingZeros(i - 1);
  //    return (int)Math.pow(2, nextPowerOfTwo);

        return 0
    }

    public func ensureRemaining (remainingNeeded: Int32): Unit {
  //    switch (type) {
  //    case BYTE: 
  //        if (byteBuffer.remaining() < remainingNeeded) {
  //            int newCapacity = roundUpToNextPowerOfTwo(byteBuffer.capacity() + remainingNeeded);
  //            ByteBuffer newBuffer = ByteBuffer.allocate(newCapacity);
  //            byteBuffer.flip();
  //            newBuffer.put(byteBuffer);
  //            byteBuffer = newBuffer;
  //        break;
  //    
  //    case CHAR: 
  //        if (charBuffer.remaining() < remainingNeeded) {
  //            int newCapacity = roundUpToNextPowerOfTwo(charBuffer.capacity() + remainingNeeded);
  //            CharBuffer newBuffer = CharBuffer.allocate(newCapacity);
  //            charBuffer.flip();
  //            newBuffer.put(charBuffer);
  //            charBuffer = newBuffer;
  //        break;
  //    
  //    case INT: 
  //        if (intBuffer.remaining() < remainingNeeded) {
  //            int newCapacity = roundUpToNextPowerOfTwo(intBuffer.capacity() + remainingNeeded);
  //            IntBuffer newBuffer = IntBuffer.allocate(newCapacity);
  //            intBuffer.flip();
  //            newBuffer.put(intBuffer);
  //            intBuffer = newBuffer;
  //        break;
  //    

        
    }

    public func append (utf16In: CharBuffer): Unit {
  //    ensureRemaining(utf16In.remaining());
  //    if (utf16In.hasArray()) {
  //        appendArray(utf16In);
  //    } else {
  //        throw new UnsupportedOperationException("TODO");

        
    }

    private func appendArray (utf16In: CharBuffer): Unit {
  //    assert utf16In.hasArray();
  //    switch (type) {
  //    case BYTE: 
  //        appendArrayByte(utf16In);
  //        break;
  //    
  //    case CHAR: 
  //        appendArrayChar(utf16In);
  //        break;
  //    
  //    case INT: 
  //        appendArrayInt(utf16In);
  //        break;
  //    

        
    }

    private func appendArrayByte (utf16In: CharBuffer): Unit {
  //    assert prevHighSurrogate == -1;
  //    char[] in = utf16In.array();
  //    int inOffset = utf16In.arrayOffset() + utf16In.position();
  //    int inLimit = utf16In.arrayOffset() + utf16In.limit();
  //    byte[] outByte = byteBuffer.array();
  //    int outOffset = byteBuffer.arrayOffset() + byteBuffer.position();
  //    while (inOffset < inLimit) {
  //        char c = in[inOffset];
  //        if (c <= 255) {
  //            outByte[outOffset] = (byte)(c & 255);
  //        } else {
  //            utf16In.position(inOffset - utf16In.arrayOffset());
  //            byteBuffer.position(outOffset - byteBuffer.arrayOffset());
  //            if (!Character.isHighSurrogate(c)) {
  //                byteToCharBuffer(utf16In.remaining());
  //                appendArrayChar(utf16In);
  //                return;
  //            } else {
  //                byteToIntBuffer(utf16In.remaining());
  //                appendArrayInt(utf16In);
  //                return;
  //        inOffset++;
  //        outOffset++;
  //    utf16In.position(inOffset - utf16In.arrayOffset());
  //    byteBuffer.position(outOffset - byteBuffer.arrayOffset());

        
    }

    private func appendArrayChar (utf16In: CharBuffer): Unit {
  //    assert prevHighSurrogate == -1;
  //    char[] in = utf16In.array();
  //    int inOffset = utf16In.arrayOffset() + utf16In.position();
  //    int inLimit = utf16In.arrayOffset() + utf16In.limit();
  //    char[] outChar = charBuffer.array();
  //    int outOffset = charBuffer.arrayOffset() + charBuffer.position();
  //    while (inOffset < inLimit) {
  //        char c = in[inOffset];
  //        if (!Character.isHighSurrogate(c)) {
  //            outChar[outOffset] = c;
  //        } else {
  //            utf16In.position(inOffset - utf16In.arrayOffset());
  //            charBuffer.position(outOffset - charBuffer.arrayOffset());
  //            charToIntBuffer(utf16In.remaining());
  //            appendArrayInt(utf16In);
  //            return;
  //        inOffset++;
  //        outOffset++;
  //    utf16In.position(inOffset - utf16In.arrayOffset());
  //    charBuffer.position(outOffset - charBuffer.arrayOffset());

        
    }

    private func appendArrayInt (utf16In: CharBuffer): Unit {
  //    char[] in = utf16In.array();
  //    int inOffset = utf16In.arrayOffset() + utf16In.position();
  //    int inLimit = utf16In.arrayOffset() + utf16In.limit();
  //    int[] outInt = intBuffer.array();
  //    int outOffset = intBuffer.arrayOffset() + intBuffer.position();
  //    while (inOffset < inLimit) {
  //        char c = in[inOffset];
  //        inOffset++;
  //        if (prevHighSurrogate != -1) {
  //            if (Character.isLowSurrogate(c)) {
  //                outInt[outOffset] = Character.toCodePoint((char)prevHighSurrogate, c);
  //                outOffset++;
  //                prevHighSurrogate = -1;
  //            } else {
  //                outInt[outOffset] = prevHighSurrogate;
  //                outOffset++;
  //                if (Character.isHighSurrogate(c)) {
  //                    prevHighSurrogate = c & 65535;
  //                } else {
  //                    outInt[outOffset] = c & 65535;
  //                    outOffset++;
  //                    prevHighSurrogate = -1;
  //        } else if (Character.isHighSurrogate(c)) {
  //            prevHighSurrogate = c & 65535;
  //        } else {
  //            outInt[outOffset] = c & 65535;
  //            outOffset++;
  //    if (prevHighSurrogate != -1) {
  //        outInt[outOffset] = prevHighSurrogate & 65535;
  //        outOffset++;
  //    utf16In.position(inOffset - utf16In.arrayOffset());
  //    intBuffer.position(outOffset - intBuffer.arrayOffset());

        
    }

    private func byteToCharBuffer (toAppend: Int32): Unit {
  //    byteBuffer.flip();
  //    CharBuffer newBuffer = CharBuffer.allocate(Math.max(byteBuffer.remaining() + toAppend, byteBuffer.capacity() / 2));
  //    while (byteBuffer.hasRemaining()) {
  //        newBuffer.put((char)(byteBuffer.get() & 255));
  //    type = Type.CHAR;
  //    byteBuffer = null;
  //    charBuffer = newBuffer;

        
    }

    private func byteToIntBuffer (toAppend: Int32): Unit {
  //    byteBuffer.flip();
  //    IntBuffer newBuffer = IntBuffer.allocate(Math.max(byteBuffer.remaining() + toAppend, byteBuffer.capacity() / 4));
  //    while (byteBuffer.hasRemaining()) {
  //        newBuffer.put(byteBuffer.get() & 255);
  //    type = Type.INT;
  //    byteBuffer = null;
  //    intBuffer = newBuffer;

        
    }

    private func charToIntBuffer (toAppend: Int32): Unit {
  //    charBuffer.flip();
  //    IntBuffer newBuffer = IntBuffer.allocate(Math.max(charBuffer.remaining() + toAppend, charBuffer.capacity() / 2));
  //    while (charBuffer.hasRemaining()) {
  //        newBuffer.put(charBuffer.get() & 65535);
  //    type = Type.INT;
  //    charBuffer = null;
  //    intBuffer = newBuffer;

        
    }

}



