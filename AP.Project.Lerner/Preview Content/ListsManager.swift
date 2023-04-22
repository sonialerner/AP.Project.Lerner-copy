//
//  ListsManager.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import Foundation
import SwiftUI

class ListsManager : ObservableObject {
    
    @Published var allItems : [ListItem] = []
    
    init(){
        allItems = []
    }
    
    // isChecked {
    //    remove from list
    // }
    
    func addListItem(_ itemName: String, designatedList: [ListItem]) {
        //        throws error because designatedList is a let constant
        //        designatedList.append(itemName)
    }
    
    //   target category = whatever category they clicked on on the filtration page
    func filteredList(_ items: [ListItem], _ targetCategory: String) -> [ListItem] {

        var list : [ListItem] = []

        for item in items {
            if item.category == targetCategory {
                list.append(item)
            }
        }
        return list

    }
    
    func filterCategories( _ items: [ListItem]) -> [String] {
        
        var categories : [String] = []
        
        for item in 0...items.count - 1 {
            for cat in 0...categories.count - 1 {
                if item.category == cat {
                    continue
                } else {
                    categories.append(item.category)
                }
            }
        }
        
        return categories
    }
    
}

