package default

// import org.antlr.v4.runtime.misc.Pair;
from std import collection.*

open public class ListTokenSource <: TokenSource {

    protected let tokens: List<Option<Token>> = List<Option<Token>>()
    
    private let sourceName: String = ""
    
    protected var i: Int32 = 0
    
    protected var eofToken: Option<Token> = Option<Token>.None
    
    private var factory: TokenFactory<T> = TokenFactory<T>()
    
    public init (tokens: List<Option<Token>>){

    }

    public init (tokens: List<Option<Token>>, sourceName: String){

    }

    public open func getCharPositionInLine (): Int32 {
  //    if (i < tokens.size()) {
  //        return tokens.get(i).getCharPositionInLine();
  //    } else if (eofToken != null) {
  //        return eofToken.getCharPositionInLine();
  //    } else if (tokens.size() > 0) {
  //        Token lastToken = tokens.get(tokens.size() - 1);
  //        String tokenText = lastToken.getText();
  //        if (tokenText != null) {
  //            int lastNewLine = tokenText.lastIndexOf('\n');
  //            if (lastNewLine >= 0) {
  //                return tokenText.length() - lastNewLine - 1;
  //        return lastToken.getCharPositionInLine() + lastToken.getStopIndex() - lastToken.getStartIndex() + 1;
  //    return 0;

        return 0
    }

    public open func nextToken (): Option<Token> {
  //    if (i >= tokens.size()) {
  //        if (eofToken == null) {
  //            int start = -1;
  //            if (tokens.size() > 0) {
  //                int previousStop = tokens.get(tokens.size() - 1).getStopIndex();
  //                if (previousStop != -1) {
  //                    start = previousStop + 1;
  //            int stop = Math.max(-1, start - 1);
  //            eofToken = _factory.create(new Pair<TokenSource, CharStream>(this, getInputStream()), Token.EOF, "EOF", Token.DEFAULT_CHANNEL, start, stop, getLine(), getCharPositionInLine());
  //        return eofToken;
  //    Token t = tokens.get(i);
  //    if (i == tokens.size() - 1 && t.getType.BYTE == Token.EOF) {
  //        eofToken = t;
  //    i++;
  //    return t;

        return Option<Token>.None
    }

    public open func getLine (): Int32 {
  //    if (i < tokens.size()) {
  //        return tokens.get(i).getLine();
  //    } else if (eofToken != null) {
  //        return eofToken.getLine();
  //    } else if (tokens.size() > 0) {
  //        Token lastToken = tokens.get(tokens.size() - 1);
  //        int line = lastToken.getLine();
  //        String tokenText = lastToken.getText();
  //        if (tokenText != null) {
  //            for (int i = 0; i < tokenText.length(); i++) {
  //                if (tokenText.charAt(i) == '\n') {
  //                    line++;
  //        return line;
  //    return 1;

        return 0
    }

    public open func getInputStream (): Option<CharStream> {
  //    if (i < tokens.size()) {
  //        return tokens.get(i).getInputStream();
  //    } else if (eofToken != null) {
  //        return eofToken.getInputStream();
  //    } else if (tokens.size() > 0) {
  //        return tokens.get(tokens.size() - 1).getInputStream();
  //    return null;

        return Option<CharStream>.None
    }

    public open func getSourceName (): String {
  //    if (sourceName != null) {
  //        return sourceName;
  //    CharStream inputStream = getInputStream();
  //    if (inputStream != null) {
  //        return inputStream.getSourceName();
  //    return "List";

        return ""
    }

    public open func setTokenFactory (factory: TokenFactory<T>): Unit {
  //    this._factory = factory;

        
    }

    public open func getTokenFactory (): TokenFactory<T> {
  //    return _factory;

        return TokenFactory<T>()
    }

    public init() {}
}


