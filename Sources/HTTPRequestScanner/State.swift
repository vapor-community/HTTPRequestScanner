internal enum State {
    case waiting
    case method
    case statusCode
    case path
    case headerKey
    case headerValue
    case body
    case complete
}
