
import Foundation
import SwiftUI

//controller file stores functionality and logic behind the program
class ListsManager : ObservableObject {
    
    //establishes allItems to be an empty array of ListItems
    @Published var allItems : [ListItem] = []
    
    //initializes allItems
    init(){
        allItems = []
    }

    //func filteredList filters a list of ListItems to only return items falling under a certain category as designated by the user
    func filteredList(_ items: [ListItem], _ targetCategory: String) -> [ListItem] {
        
        if targetCategory == "All Items" {
            return items
        }

        var list : [ListItem] = []
        
        for item in items {
            if item.category == targetCategory {
                list.append(item)
            }
        }
        return list

    }

}

