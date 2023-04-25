//
//  ListItem.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

struct ListCard: View {
    
    @EnvironmentObject var listsManager : ListsManager
    
    @State var isChecked = false
    @State var itemName : String
    
    var body: some View {
        HStack {
            Image(systemName: isChecked ? "checkmark.square" : "square" )
            //add strikethrough to text if isChecked = true
                .onTapGesture{
                    if isChecked == false {
                        isChecked = true
                    } else {
                        isChecked = false
                    }
                }
                .padding()
            
            //refactor placeholder name
                Text(itemName)
                    .frame(height: 50)
            
            Spacer()
        }
        
    }
    
    struct ListItem_Previews: PreviewProvider {
        static var previews: some View {
            ListCard(itemName: "")
        }
    }
}
