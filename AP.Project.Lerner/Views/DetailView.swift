//
//  DetailView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

struct DetailView: View {
    
    @EnvironmentObject var listsManager : ListsManager
    
    var listName : String
    
    var body: some View {
        VStack {
            HStack {
                //refactor with list name
                Text("ToDo List")
                    .font(.system(size: 25))
                    .padding(30)
                
                Spacer()
            }
            
            //for each loop here
            //ADD IN ARGUMENTS FOR LIST CARD SO IT WORKS
//            ListCard()
            ForEach(listsManager.allItems, id: \.id) {
                item in
                ListCard(itemName: item.name)
                    .environmentObject(listsManager)
            }
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(listName: "To do list")
            .environmentObject(ListsManager())
    }
}
