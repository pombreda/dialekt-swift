// A base class providing common functionality for expressions.
class AbstractExpression: ExpressionProtocol {
    var _firstToken: Token?
    var _lastToken: Token?

    // Fetch the first token from the source that is part of this expression.
    func firstToken() -> Token? {
        return _firstToken
    }

    // Fetch the last token from the source that is part of this expression.
    func lastToken() -> Token? {
        return _lastToken
    }

    // Set the delimiting tokens for this expression.
    func setTokens(firstToken: Token, lastToken: Token) {
        _firstToken = firstToken
        _lastToken = lastToken
    }

    // Required to conform to NodeProtocol
    func accept(visitor: VisitorProtocol) -> Any {
        assert(false, "This method must be overriden by the subclass.")
//        return nil
    }

    // Required to conform to ExpressionProtocol
//    typealias ReturnType = ExpressionResults
//    func accept(visitor: ExpressionVisitorProtocol) -> ExpressionResult? {
    func accept(visitor: ExpressionVisitorProtocol) -> ExpressionResult {
        assert(false, "This method must be overriden by the subclass.")
//        return nil
    }
}
