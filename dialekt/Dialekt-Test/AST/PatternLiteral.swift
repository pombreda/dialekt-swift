// Represents a literal (exact-match) portion of a pattern expression.
class PatternLiteral: PatternChildProtocol {
    let _string: String
    
    init(string: String) {
        _string = string
    }
    
    // Fetch the string to be matched.
    func string() -> String {
        return _string
    }

    // Pass this node to the appropriate method on the given visitor.
    func accept(visitor: VisitorProtocol) -> Any {
        return visitor.visitPatternLiteral(self)
    }
    
    // Pass this node to the appropriate method on the given visitor.
    func accept(visitor: PatternChildVisitorProtocol) -> String {
        return visitor.visitPatternLiteral(self)
    }
}