package default


open public class EmptyPredictionContext <: SingletonPredictionContext {

    public init (){

    }

    public open func isEmpty (): Bool {
  //    return true;

        return true
    }

    public open override func size (): Int32 {
  //    return 1;

        return 0
    }

    public open override func getParent (index: Int32): Option<PredictionContext> {
  //    return null;

        return Option<PredictionContext>.None
    }

    public open override func getReturnState (index: Int32): Int32 {
  //    return returnState;

        return 0
    }

    public open override func equals (o: Object): Bool {
  //    return this == o;

        return true
    }

    public open override func toString (): String {
  //    return "$";

        return ""
    }

}


