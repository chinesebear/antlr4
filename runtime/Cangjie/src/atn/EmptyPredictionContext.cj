package atn


open public class EmptyPredictionContext <: SingletonPredictionContext {

    public init (){

    }

    public open override func isEmpty (): Bool {
        return true
    }

    public open override func sizeFunc (): Int32 {
        return 0
    }

    public open override func getParent (index: Int32): PredictionContext {
        return PredictionContext()
    }

    public open override func getReturnState (index: Int32): Int32 {
        return 0
    }

    public open override func equals (o: Object): Bool {
        return true
    }

    public open override func toString (): String {
        return ""
    }

}


