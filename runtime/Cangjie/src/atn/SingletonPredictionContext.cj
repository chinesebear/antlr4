package atn


open public class SingletonPredictionContext <: PredictionContext {

    public let parent: PredictionContext = PredictionContext()
    
    public let returnState: Int32 = 0
    
    init (parent: PredictionContext, returnState: Int32){

    }

    public static func create (parent: PredictionContext, returnState: Int32): SingletonPredictionContext {
        return SingletonPredictionContext()
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

    public init() {}
}


