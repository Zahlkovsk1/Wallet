
import Foundation

struct TransactionModel: Identifiable {
    var id: UUID =  UUID()
    let name: String
    let amount: String
    let date: String
    let paymentMethod: String
    
}
