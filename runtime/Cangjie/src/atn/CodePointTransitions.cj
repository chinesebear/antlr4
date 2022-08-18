package default


public abstract class CodePointTransitions {

    public static func createWithCodePoint (target: Option<ATNState>, codePoint: Int32): Option<Transition> {
  //    return createWithCodePointRange(target, codePoint, codePoint);

        return Option<Transition>.None
    }

    public static func createWithCodePointRange (target: Option<ATNState>, codePointFrom: Int32, codePointTo: Int32): Option<Transition> {
  //    return codePointFrom == codePointTo ? new AtomTransition(target, codePointFrom) : new RangeTransition(target, codePointFrom, codePointTo);

        return Option<Transition>.None
    }

    public init() {}
}


