package default

from std import collection.*

open public class PredictionContextCache {

    protected let cache: Map<Option<PredictionContext>, Option<PredictionContext>> = Map<Option<PredictionContext>, Option<PredictionContext>>()
    
    public open func add (ctx: Option<PredictionContext>): Option<PredictionContext> {
  //    if (ctx == Option<PredictionContext>.EMPTY) return Option<PredictionContext>.EMPTY;
  //    PredictionContext existing = cache.get(ctx);
  //    if (existing != null) {
  //        return existing;
  //    cache.put(ctx, ctx);
  //    return ctx;

        return Option<PredictionContext>.None
    }

    public open func get (ctx: Option<PredictionContext>): Option<PredictionContext> {
  //    return cache.get(ctx);

        return Option<PredictionContext>.None
    }

    public open func size (): Int32 {
  //    return cache.size();

        return 0
    }

    public init() {}
}


