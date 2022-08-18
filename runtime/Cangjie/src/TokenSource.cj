package default


public interface TokenSource {

    func nextToken (): Option<Token> 

    func getLine (): Int32 

    func getCharPositionInLine (): Int32 

    func getInputStream (): Option<CharStream> 

    func getSourceName (): String 

    func setTokenFactory (factory: TokenFactory<T>): Unit 

    func getTokenFactory (): TokenFactory<T> 

}


