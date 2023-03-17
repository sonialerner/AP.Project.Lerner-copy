//
//  ListItem.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

struct ListCard: View {
    
        var listItem : ListItem
    
    var body: some View {
        HStack {
            //option 1: refactor so "square" gets changed to a func in ListsManager and that function returns either "square" or "checkmark.square"
            Image(systemName: "square")
            //option 2: this line becomes: listItem.isCompleted() ? "checkmark.square" : "square" and then func isCompleted() gets created in ListsManager
            
            //option 2 is probably more readable
                .padding()
            
            //refactor placeholder name
            Text(listItem.name)
                .frame(height: 50)
            
            Spacer()
        }
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListCard(listItem: ListItem(name: "", category: ""))
    }
}
