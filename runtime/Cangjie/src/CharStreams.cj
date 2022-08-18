package default

from std import io.*
// import java.nio.ByteBuffer;
// import java.nio.CharBuffer;
// import java.nio.channels.Channels;
// import java.nio.channels.ReadableByteChannel;
// import java.nio.charset.Charset;
// import java.nio.charset.CharsetDecoder;
// import java.nio.charset.CoderResult;
// import java.nio.charset.CodingErrorAction;
// import java.nio.charset.StandardCharsets;
// import java.nio.file.Files;
// import java.nio.file.Path;
// import java.nio.file.Paths;

public class CharStreams {

    private static let DEFAULT_BUFFER_SIZE: Int32 = 4096
    
    private init (){

    }

    public static func fromPath (path: Path): CharStream {
        return CharStream()
    }

    public static func fromPath (path: Path, charset: Charset): CharStream {
        return CharStream()
    }

    public static func fromFileName (fileName: String): CharStream {
        return CharStream()
    }

    public static func fromFileName (fileName: String, charset: Charset): CharStream {
        return CharStream()
    }

    public static func fromStream (`is`: InputStream): CharStream {
        return CharStream()
    }

    public static func fromStream (`is`: InputStream, charset: Charset): CharStream {
        return CharStream()
    }

    public static func fromStream (`is`: InputStream, charset: Charset, inputSize: Int64): CharStream {
        return CharStream()
    }

    public static func fromChannel (channel: ReadableByteChannel): CharStream {
        return CharStream()
    }

    public static func fromChannel (channel: ReadableByteChannel, charset: Charset): CharStream {
        return CharStream()
    }

    public static func fromReader (r: Reader): CodePointCharStream {
        return CodePointCharStream()
    }

    public static func fromReader (r: Reader, sourceName: String): CodePointCharStream {
        return CodePointCharStream()
    }

    public static func fromString (s: String): CodePointCharStream {
        return CodePointCharStream()
    }

    public static func fromString (s: String, sourceName: String): CodePointCharStream {
        return CodePointCharStream()
    }

    public static func fromChannel (channel: ReadableByteChannel, bufferSize: Int32, decodingErrorAction: CodingErrorAction, sourceName: String): CodePointCharStream {
        return CodePointCharStream()
    }

    public static func fromChannel (channel: ReadableByteChannel, charset: Charset, bufferSize: Int32, decodingErrorAction: CodingErrorAction, sourceName: String, inputSize: Int64): CodePointCharStream {
        return CodePointCharStream()
    }

}


