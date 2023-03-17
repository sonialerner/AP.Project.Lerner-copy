//
//  ContentView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var listsManager = ListsManager()
    
    var allItems : [ListItem] = []
    
    var body: some View {
        NavigationView{
            VStack {
                HStack (spacing: 20) {
                    Text("To-do Lists")
                        .font(.system(size: 30))
                    
                    Spacer()
                    
                    //button
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 25, height: 25)
                    
                    NavigationLink{
                        NewItemView()
                            .environmentObject(ListsManager())
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                }
                
                //click on specific lists rather than seeing all the lists
                VStack{
                    HStack{
                        //categories here
                        Text("Placeholder")
                    }
                }
                .frame(width: 360, height: 220)
                .background(Color("AccentColor"))
                .cornerRadius(20)
                .shadow(radius: 2)
                
                List(0..<allItems.count, id: \.self) { index in
                    ListCard(listItem: allItems[index])
                }
                Spacer()
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
