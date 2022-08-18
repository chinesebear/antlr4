package default


public let INVALID_TYPE: Int32 = 0
public let EPSILON: Int32 = -2
public let MIN_USER_TOKEN_TYPE: Int32 = 1
public let EOF: Int32 = 0
public let DEFAULT_CHANNEL: Int32 = 0
public let HIDDEN_CHANNEL: Int32 = 1
public let MIN_USER_CHANNEL_VALUE: Int32 = 2

public interface Token {
    func getText (): String 

    func getType (): Int32 

    func getLine (): Int32 

    func getCharPositionInLine (): Int32 

    func getChannel (): Int32 

    func getTokenIndex (): Int32 

    func getStartIndex (): Int32 

    func getStopIndex (): Int32 

    func getTokenSource (): TokenSource 

    func getInputStream (): CharStream 

}


