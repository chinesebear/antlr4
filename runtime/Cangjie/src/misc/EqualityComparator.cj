package default


public interface EqualityComparator<T> {

    func hashCodeFunc (obj: T): Int32 

    func equals (a: T, b: T): Bool 

}


