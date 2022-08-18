package atn


public abstract class CodePointTransitions {

    public static func createWithCodePoint (target: ATNState, codePoint: Int32): Transition {
        return Transition()
    }

    public static func createWithCodePointRange (target: ATNState, codePointFrom: Int32, codePointTo: Int32): Transition {
        return Transition()
    }

    public init() {}
}


