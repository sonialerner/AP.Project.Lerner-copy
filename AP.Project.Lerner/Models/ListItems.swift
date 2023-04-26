
import Foundation

//struct ListItem to store all information about one list item in one place. This manages complexity.
struct ListItem: Identifiable {
    let id = UUID()
    var name : String
    var category : String
 }

