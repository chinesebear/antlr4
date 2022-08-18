package default


open public class CommonTokenStream <: BufferedTokenStream {

    protected var channel: Int32 = 0
    
    public init (tokenSource: TokenSource){

    }

    public init (tokenSource: TokenSource, channel: Int32){

    }

    protected open override func adjustSeekIndex (i: Int32): Int32 {
        return 0
    }

    protected open override func LB (k: Int32): Token {
        return Token()
    }

    public open override func LT (k: Int32): Token {
        return Token()
    }

    public open func getNumberOfOnChannelTokens (): Int32 {
        return 0
    }

    public init() {}
}


