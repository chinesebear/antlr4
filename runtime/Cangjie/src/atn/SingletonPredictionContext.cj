package default


open public class SingletonPredictionContext <: PredictionContext {

    public let parent: Option<PredictionContext> = Option<PredictionContext>.None
    
    public let returnState: Int32 = 0
    
    init (parent: Option<PredictionContext>, returnState: Int32){

    }

    public static func create (parent: Option<PredictionContext>, returnState: Int32): SingletonPredictionContext {
  //    if (returnState == EMPTY_RETURN_STATE && parent == null) {
  //        return EMPTY;
  //    return new SingletonPredictionContext(parent, returnState);

        return SingletonPredictionContext()
    }

    public open func size (): Int32 {
  //    return 1;

        return 0
    }

    public open func getParent (index: Int32): Option<PredictionContext> {
  //    assert index == 0;
  //    return parent;

        return Option<PredictionContext>.None
    }

    public open func getReturnState (index: Int32): Int32 {
  //    assert index == 0;
  //    return returnState;

        return 0
    }

    public open func equals (o: Object): Bool {
  //    if (this == o) {
  //        return true;
  //    } else if (!(o instanceof SingletonPredictionContext)) {
  //        return false;
  //    if (this.hashCode() != o.hashCode()) {
  //        return false;
  //    SingletonPredictionContext s = (SingletonPredictionContext)o;
  //    return returnState == s.returnState && (parent != null && parent.equals(s.parent));

        return true
    }

    public open override func toString (): String {
  //    String up = parent != null ? parent.toString() : "";
  //    if (up.length() == 0) {
  //        if (returnState == EMPTY_RETURN_STATE) {
  //            return "$";
  //        return String.valueOf(returnState);
  //    return String.valueOf(returnState) + " " + up;

        return ""
    }

    public init() {}
}


