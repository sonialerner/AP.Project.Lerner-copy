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

    
    func filteredList(_ items: [ListItem], _ targetCategory: String) -> [ListItem] {

        var list : [ListItem] = []

        for item in items {
            if item.category == targetCategory {
                list.append(item)
            }
        }
        return list

    }

}

