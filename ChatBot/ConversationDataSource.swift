import Foundation
class ConversationDataSource {
    
    // Array to store questions and answers
    var messages = [Message]()
    
    /// The number of Messages in the conversation
    var messageCount = 0
    
    /// Add a new question to the conversation
    func add(question: String) {
        let message = Message(date: Date(), text: question, type: .question)
        messages.append(message)
        print("Asked to add question: \(question)")
        messageCount += 1
    }
    
    /// Add a new answer to the conversation
    func add(answer: String) {
        let message = Message(date: Date(), text: answer, type: .answer)
        messages.append(message)
        print("Asked to add answer: \(answer)")
        messageCount += 1
    }
    
    /// The Message at a specific point in the conversation
    func messageAt(index: Int) -> Message {
        print("Asking for message at index \(index)")
        return messages[index]
    }
}
