package default


public interface Token {

    prop public static let INVALID_TYPE: Int32 {
        get() { 0 }
        set(value) { }
    }
    prop public static let EPSILON: Int32 {
        get() { -2 }
        set(value) { }
    }
    prop public static let MIN_USER_TOKEN_TYPE: Int32 {
        get() { 1 }
        set(value) { }
    }
    prop public static let EOF: Int32 {
        get() { 0 }
        set(value) { }
    }
    prop public static let DEFAULT_CHANNEL: Int32 {
        get() { 0 }
        set(value) { }
    }
    prop public static let HIDDEN_CHANNEL: Int32 {
        get() { 1 }
        set(value) { }
    }
    prop public static let MIN_USER_CHANNEL_VALUE: Int32 {
        get() { 2 }
        set(value) { }
    }
    func getText (): String 

    func getType (): Int32 

    func getLine (): Int32 

    func getCharPositionInLine (): Int32 

    func getChannel (): Int32 

    func getTokenIndex (): Int32 

    func getStartIndex (): Int32 

    func getStopIndex (): Int32 

    func getTokenSource (): Option<TokenSource> 

    func getInputStream (): Option<CharStream> 

}


