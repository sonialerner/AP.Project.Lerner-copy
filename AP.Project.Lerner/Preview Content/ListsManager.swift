//
//  ListsManager.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import Foundation

class ListsManager : ObservableObject {
    
    @Published var allItems : [ListItem] = []
    
    
    
    // isChecked {
    //    remove from list
    // }
    
    func addListItem(_ itemName: String, designatedList: String) {
        //        throws error because designatedList is a let constant
        //        designatedList.append(itemName)
    }
    
    //   target category = whatever category they clicked on on the home page
    func filteredList(_ items: [ListItem], _ targetCategory: String) -> [ListItem] {
        
        var list : [ListItem] = []
        
        for item in items {
            if item.category == targetCategory {
                list.append(item)
            }
        }
        return list
        
    }
    //
    //    func isChecked(itemToBeChecked: ListItem) -> Bool {
    //        if itemToBeChecked.isChecked == false{
    //            return true
    //        } else {
    //            return false
    //        }
    //    }
    //}
    //
}
