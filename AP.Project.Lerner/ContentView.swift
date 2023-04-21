//
//  ContentView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var listsManager = ListsManager()
    
    @State var listItems : [ListItem] = []
    
    @State private var name : String = ""
    @State private var selectedCategory : String = ""
//    @State private var list : String = ""
    @State var numClicks = 0
        
    var body: some View {
        NavigationView{
            VStack {
                HStack (spacing: 20) {
                    Text("To-do Lists")
                        .font(.system(size: 30))
                    Spacer()
                    
                    //button
                    NavigationLink{
                        FilterView()
                            .environmentObject(ListsManager())
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                    
//                    NavigationLink{
//                        NewItemView()
//                            .environmentObject(ListsManager())
//                    } label: {
//                        Image(systemName: "plus")
//                            .resizable()
//                            .frame(width: 25, height: 25)
//                            .foregroundColor(.black)
//                    }
                }

                
                //click on specific lists rather than seeing all the lists
//                VStack{
                    //                    HStack{
                    //                        //categories here
                    //                        NavigationLink(destination: DetailView(listName: "To do List").environmentObject(listsManager)) {
                    //                            Text("Placeholder")
                    //                                .foregroundColor(.black)
                    //                        }
                    //                    }
                    //                }
                    //                .frame(width: 360, height: 220)
                    //                .background(Color("AccentColor"))
                    //                .cornerRadius(20)
                    //                .shadow(radius: 2)
                    
                    //                Text(listsManager.allItems[0])
                                
                    List{
                        ForEach(listsManager.allItems) {
                            item in
                            ListCard(itemName: item.name)
                                .environmentObject(listsManager)
                        }
                    }
                    .padding(.horizontal)
                    Spacer()
                
                HStack{
                    VStack{
                        TextField("Add New Item", text: $name)
                            .font(.system(size: 20))
                            .padding(.horizontal)
                        
                        TextField("Category", text: $selectedCategory)
                            .padding(.horizontal, 25)
                    }
                    
                    Button {
                        let newItem = ListItem(name: name)
                        listsManager.allItems.append(newItem)
//                        numClicks += 1
                        self.name = ""
                    } label: {
                        ZStack{
                            Rectangle()
                                .foregroundColor(Color("AccentColor"))
                                .frame(maxWidth: 50, maxHeight: 50)
                                .cornerRadius(6)
                            
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.black)
                        }
                    }
                }
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .padding()
                .background(Color(hue: 0.00, saturation: 0.00, brightness: 0.95))
                .cornerRadius(4)
                
            }
            .padding()
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
