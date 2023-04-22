//
//  SettingsView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

//stop coding this. go make your mvp.

struct FilterView: View {
    
    @EnvironmentObject var listsManager : ListsManager
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Filter Preferences")
                    .font(.system(size: 30))
                    .padding()
                Spacer()
            }

            Text("Displayed Lists")
                .padding()
                .font(.system(size: 23))
            Spacer()
            
            List{
                ForEach(listsManager.allItems) {
                    item in
                    ListCard(itemName: item.name)
                        .environmentObject(listsManager)
                }
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
            .environmentObject(ListsManager())
    }
}
