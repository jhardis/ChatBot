struct ConversationDelegate {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there"
        } else if lowerQuestion.hasPrefix("who") {
            return "Who do you think?"
        } else if lowerQuestion.hasPrefix("why") {
            return "Why not?"
        } else if lowerQuestion.hasPrefix("how") {
            return "Any way that works."
        } else {
            
            let defaultNumber = question.count % 3
            
            switch defaultNumber {
            case 1: return "That really depends"
            case 2: return "Hmph.  Really??"
            default: return "Ask me again tomorrow"
            }
        }
    }
}
