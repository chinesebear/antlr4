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

    public func fromBuffer (codePointBuffer: CodePointBuffer): Option<CodePointCharStream> {
  //    return fromBuffer(codePointBuffer, UNKNOWN_SOURCE_NAME);

        return Option<CodePointCharStream>.None
    }

    public func fromBuffer (codePointBuffer: CodePointBuffer, name: String): Option<CodePointCharStream> {
  //    switch (codePointBuffer.getType.BYTE) {
  //    case BYTE: 
  //        return new CodePointCharStreamCodePoint8BitCharStream(codePointBuffer.position(), codePointBuffer.remaining(), name, codePointBuffer.byteArray(), codePointBuffer.arrayOffset());
  //    
  //    case CHAR: 
  //        return new CodePointCharStreamCodePoint16BitCharStream(codePointBuffer.position(), codePointBuffer.remaining(), name, codePointBuffer.charArray(), codePointBuffer.arrayOffset());
  //    
  //    case INT: 
  //        return new CodePointCharStreamCodePoint32BitCharStream(codePointBuffer.position(), codePointBuffer.remaining(), name, codePointBuffer.intArray(), codePointBuffer.arrayOffset());
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return Option<CodePointCharStream>.None
    }

    public open func consume (): Unit {
  //    if (size - position == 0) {
  //        assert LA(1) == IntStream.EOF;
  //        throw new IllegalStateException("cannot consume EOF");
  //    position = position + 1;

        
    }

    public open func indexFunc (): Int32 {
  //    return position;

        return 0
    }

    public open func sizeFunc (): Int32 {
  //    return size;

        return 0
    }

    public open func mark (): Int32 {
  //    return -1;

        return 0
    }

    public open func release (marker: Int32): Unit {

        
    }

    public open func seek (index: Int32): Unit {
  //    position = index;

        
    }

    public open func getSourceName (): String {
  //    if (name == null || name.isEmpty()) {
  //        return UNKNOWN_SOURCE_NAME;
  //    return name;

        return ""
    }

    public open func toString (): String {
  //    return getText(Interval.of(0, size - 1));

        return ""
    }

    public init() {}
}

public class CodePointCharStreamCodePoint8BitCharStream <: CodePointCharStream {
    var class_out: Option<CodePointCharStream>
    public init(out: Option<CodePointCharStream>) {
        class_out = out
    }
    public init() {
        class_out = Option<CodePointCharStream>.None
    }
    private let byteArray: Array<Int8> = Array<Int8>()
    
    public func getText (interval: Interval): String {
  //    int startIdx = Math.min(interval.a, size);
  //    int len = Math.min(interval.b - interval.a + 1, size - startIdx);
  //    return new String(byteArray, startIdx, len, StandardCharsets.ISO_8859_1);

        return ""
    }

    public func LA (i: Int32): Int32 {
  //    int offset;
  //    switch (Integer.signum(i)) {
  //    case -1: 
  //        offset = position + i;
  //        if (offset < 0) {
  //            return Option<IntStream>.EOF;
  //        return byteArray[offset] & 255;
  //    
  //    case 0: 
  //        return 0;
  //    
  //    case 1: 
  //        offset = position + i - 1;
  //        if (offset >= size) {
  //            return Option<IntStream>.EOF;
  //        return byteArray[offset] & 255;
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return 0
    }

    func getInternalStorage (): Object {
  //    return byteArray;

        return Object()
    }

}


public class CodePointCharStreamCodePoint16BitCharStream <: CodePointCharStream {
    var class_out: Option<CodePointCharStream>
    public init(out: Option<CodePointCharStream>) {
        class_out = out
    }
    public init() {
        class_out = Option<CodePointCharStream>.None
    }
    private let charArray: Array<Char> = Array<Char>()
    
    public func getText (interval: Interval): String {
  //    int startIdx = Math.min(interval.a, size);
  //    int len = Math.min(interval.b - interval.a + 1, size - startIdx);
  //    return new String(charArray, startIdx, len);

        return ""
    }

    public func LA (i: Int32): Int32 {
  //    int offset;
  //    switch (Integer.signum(i)) {
  //    case -1: 
  //        offset = position + i;
  //        if (offset < 0) {
  //            return Option<IntStream>.EOF;
  //        return charArray[offset] & 65535;
  //    
  //    case 0: 
  //        return 0;
  //    
  //    case 1: 
  //        offset = position + i - 1;
  //        if (offset >= size) {
  //            return Option<IntStream>.EOF;
  //        return charArray[offset] & 65535;
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return 0
    }

    func getInternalStorage (): Object {
  //    return charArray;

        return Object()
    }

}


public class CodePointCharStreamCodePoint32BitCharStream <: CodePointCharStream {
    var class_out: Option<CodePointCharStream>
    public init(out: Option<CodePointCharStream>) {
        class_out = out
    }
    public init() {
        class_out = Option<CodePointCharStream>.None
    }
    private let intArray: Array<Int32> = Array<Int32>()
    
    public func getText (interval: Interval): String {
  //    int startIdx = Math.min(interval.a, size);
  //    int len = Math.min(interval.b - interval.a + 1, size - startIdx);
  //    return new String(intArray, startIdx, len);

        return ""
    }

    public func LA (i: Int32): Int32 {
  //    int offset;
  //    switch (Integer.signum(i)) {
  //    case -1: 
  //        offset = position + i;
  //        if (offset < 0) {
  //            return Option<IntStream>.EOF;
  //        return intArray[offset];
  //    
  //    case 0: 
  //        return 0;
  //    
  //    case 1: 
  //        offset = position + i - 1;
  //        if (offset >= size) {
  //            return Option<IntStream>.EOF;
  //        return intArray[offset];
  //    
  //    throw new UnsupportedOperationException("Not reached");

        return 0
    }

    func getInternalStorage (): Object {
  //    return intArray;

        return Object()
    }

}



