//
//  NewItemView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/15/23.
//

import SwiftUI

struct NewItemView: View {
    
    @EnvironmentObject var listsManager : ListsManager
    
    @State private var name : String = ""
    @State private var selectedCategory : String = ""
    @State private var list : String = ""
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("New Item")
                        .padding(30)
                        .font(.system(size: 25))
                    Spacer()
                }
                
                VStack (alignment: .leading) {
                 
                    TextField("Name", text: $name)
                        .font(.system(size: 20))
                    
                    TextField("List", text: $list)
                        .font(.system(size: 20))
                    
                    Section {
                        Picker("Appearance", selection: $selectedCategory) {
                            //abstract these options so that the options are what the user inputs
                            Text("Low Priority").tag("Low Priority")
                            Text("Medium Priority").tag("Medium Priority")
                            Text("High Priority").tag("High Priority")
                        }
                    }
                    
                }
                .frame(width: 250, height: 500, alignment: .leading)
                .padding()
                
                //button to add item and nav link to take user back to main page
                    Button {
                        let newItem = ListItem(name: name, category: selectedCategory, list: list)
                        listsManager.allItems.append(newItem)
                    } label: {
                        NavigationLink(destination: ContentView()) {
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("AccentColor"))
                            
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct PlusView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
            .environmentObject(ListsManager())
    }
}
