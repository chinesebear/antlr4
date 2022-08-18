package default


open public class CommonTokenStream <: BufferedTokenStream {

    protected var channel: Int32 = 0
    
    public init (tokenSource: Option<TokenSource>){

    }

    public init (tokenSource: Option<TokenSource>, channel: Int32){

    }

    protected open override func adjustSeekIndex (i: Int32): Int32 {
  //    return nextTokenOnChannel(i, channel);

        return 0
    }

    protected open override func LB (k: Int32): Option<Token> {
  //    if (k == 0 || (p - k) < 0) return null;
  //    int i = p;
  //    int n = 1;
  //    while (n <= k && i > 0) {
  //        i = previousTokenOnChannel(i - 1, channel);
  //        n++;
  //    if (i < 0) return null;
  //    return tokens.get(i);

        return Option<Token>.None
    }

    public open override func LT (k: Int32): Option<Token> {
  //    lazyInit();
  //    if (k == 0) return null;
  //    if (k < 0) return LB(-k);
  //    int i = p;
  //    int n = 1;
  //    while (n < k) {
  //        if (sync(i + 1)) {
  //            i = nextTokenOnChannel(i + 1, channel);
  //        n++;
  //    return tokens.get(i);

        return Option<Token>.None
    }

    public open func getNumberOfOnChannelTokens (): Int32 {
  //    int n = 0;
  //    fill();
  //    for (int i = 0; i < tokens.size(); i++) {
  //        Token t = tokens.get(i);
  //        if (t.getChannel() == channel) n++;
  //        if (t.getType.BYTE == Token.EOF) break;
  //    return n;

        return 0
    }

    public init() {}
}


