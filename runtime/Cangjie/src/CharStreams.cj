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

    public func fromPath (path: Path): Option<CharStream> {
  //    return fromPath(path, StandardCharsets.UTF_8);

        return Option<CharStream>.None
    }

    public func fromPath (path: Path, charset: Charset): Option<CharStream> {
  //    long size = Files.size(path);
  //    try (final ReadableByteChannel channel = Files.newByteChannel(path);) {
  //        return fromChannel(channel, charset, DEFAULT_BUFFER_SIZE, CodingErrorAction.REPLACE, path.toString(), size);

        return Option<CharStream>.None
    }

    public func fromFileName (fileName: String): Option<CharStream> {
  //    return fromPath(Paths.get(fileName), StandardCharsets.UTF_8);

        return Option<CharStream>.None
    }

    public func fromFileName (fileName: String, charset: Charset): Option<CharStream> {
  //    return fromPath(Paths.get(fileName), charset);

        return Option<CharStream>.None
    }

    public func fromStream (`is`: InputStream): Option<CharStream> {
  //    return fromStream(is, StandardCharsets.UTF_8);

        return Option<CharStream>.None
    }

    public func fromStream (`is`: InputStream, charset: Charset): Option<CharStream> {
  //    return fromStream(is, charset, -1);

        return Option<CharStream>.None
    }

    public func fromStream (`is`: InputStream, charset: Charset, inputSize: Int64): Option<CharStream> {
  //    try (final ReadableByteChannel channel = Channels.newChannel(is);) {
  //        return fromChannel(channel, charset, DEFAULT_BUFFER_SIZE, CodingErrorAction.REPLACE, Option<IntStream>.UNKNOWN_SOURCE_NAME, inputSize);

        return Option<CharStream>.None
    }

    public func fromChannel (channel: ReadableByteChannel): Option<CharStream> {
  //    return fromChannel(channel, StandardCharsets.UTF_8);

        return Option<CharStream>.None
    }

    public func fromChannel (channel: ReadableByteChannel, charset: Charset): Option<CharStream> {
  //    return fromChannel(channel, DEFAULT_BUFFER_SIZE, CodingErrorAction.REPLACE, Option<IntStream>.UNKNOWN_SOURCE_NAME);

        return Option<CharStream>.None
    }

    public func fromReader (r: Reader): Option<CodePointCharStream> {
  //    return fromReader(r, Option<IntStream>.UNKNOWN_SOURCE_NAME);

        return Option<CodePointCharStream>.None
    }

    public func fromReader (r: Reader, sourceName: String): Option<CodePointCharStream> {
  //    try {
  //        CodePointBuffer.CodePointBufferBuilder codePointBufferBuilder = CodePointBuffer.builder(DEFAULT_BUFFER_SIZE);
  //        CharBuffer charBuffer = CharBuffer.allocate(DEFAULT_BUFFER_SIZE);
  //        while ((r.read(charBuffer)) != -1) {
  //            charBuffer.flip();
  //            codePointBufferBuilder.append(charBuffer);
  //            charBuffer.compact();
  //        return Option<CodePointCharStream>.fromBuffer(codePointBufferBuilder.build(), sourceName);
  //    } finally {
  //        r.close();

        return Option<CodePointCharStream>.None
    }

    public func fromString (s: String): Option<CodePointCharStream> {
  //    return fromString(s, Option<IntStream>.UNKNOWN_SOURCE_NAME);

        return Option<CodePointCharStream>.None
    }

    public func fromString (s: String, sourceName: String): Option<CodePointCharStream> {
  //    CodePointBuffer.CodePointBufferBuilder codePointBufferBuilder = CodePointBuffer.builder(s.length());
  //    CharBuffer cb = CharBuffer.allocate(s.length());
  //    cb.put(s);
  //    cb.flip();
  //    codePointBufferBuilder.append(cb);
  //    return Option<CodePointCharStream>.fromBuffer(codePointBufferBuilder.build(), sourceName);

        return Option<CodePointCharStream>.None
    }

    public func fromChannel (channel: ReadableByteChannel, bufferSize: Int32, decodingErrorAction: CodingErrorAction, sourceName: String): Option<CodePointCharStream> {
  //    return fromChannel(channel, StandardCharsets.UTF_8, bufferSize, decodingErrorAction, sourceName, -1);

        return Option<CodePointCharStream>.None
    }

    public func fromChannel (channel: ReadableByteChannel, charset: Charset, bufferSize: Int32, decodingErrorAction: CodingErrorAction, sourceName: String, inputSize: Int64): Option<CodePointCharStream> {
  //    try {
  //        ByteBuffer utf8BytesIn = ByteBuffer.allocate(bufferSize);
  //        CharBuffer utf16CodeUnitsOut = CharBuffer.allocate(bufferSize);
  //        if (inputSize == -1) {
  //            inputSize = bufferSize;
  //        } else if (inputSize > Integer.MAX_VALUE) {
  //            throw new IOException(String.format("inputSize %d larger than max %d", inputSize, Integer.MAX_VALUE));
  //        CodePointBuffer.CodePointBufferBuilder codePointBufferBuilder = CodePointBuffer.builder((int)inputSize);
  //        CharsetDecoder decoder = charset.newDecoder().onMalformedInput(decodingErrorAction).onUnmappableCharacter(decodingErrorAction);
  //        boolean endOfInput = false;
  //        while (!endOfInput) {
  //            int bytesRead = channel.read(utf8BytesIn);
  //            endOfInput = (bytesRead == -1);
  //            utf8BytesIn.flip();
  //            CoderResult result = decoder.decode(utf8BytesIn, utf16CodeUnitsOut, endOfInput);
  //            if (result.isError() && decodingErrorAction.equals(CodingErrorAction.REPORT)) {
  //                result.throwException();
  //            utf16CodeUnitsOut.flip();
  //            codePointBufferBuilder.append(utf16CodeUnitsOut);
  //            utf8BytesIn.compact();
  //            utf16CodeUnitsOut.compact();
  //        CoderResult flushResult = decoder.flush(utf16CodeUnitsOut);
  //        if (flushResult.isError() && decodingErrorAction.equals(CodingErrorAction.REPORT)) {
  //            flushResult.throwException();
  //        utf16CodeUnitsOut.flip();
  //        codePointBufferBuilder.append(utf16CodeUnitsOut);
  //        CodePointBuffer codePointBuffer = codePointBufferBuilder.build();
  //        return Option<CodePointCharStream>.fromBuffer(codePointBuffer, sourceName);
  //    } finally {
  //        channel.close();

        return Option<CodePointCharStream>.None
    }

}


