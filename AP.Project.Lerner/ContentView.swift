//
//  ContentView.swift
//  AP.Project.Lerner
//
//

import SwiftUI

struct ContentView: View {
    
    //communicating controller with content view
    @StateObject var listsManager = ListsManager()
    
    //bool to show/not show popover view
    @State private var showingPopover = false
    
    //variables regarding a new item that may be added
    @State private var name : String = ""
    @State private var selectedCategory : String = ""
    
    //variable controlling what item category is displayed
    @State var displayedList : String = ""
        
    var body: some View {
        NavigationView{
            VStack {
                
                HStack (spacing: 20) {
                    Text("To-do Lists")
                        .font(.system(size: 30))
                    Spacer()
                    
                    //part of button code via https://www.hackingwithswift.com/quick-start/swiftui/how-to-show-a-popover-view
                    Button() {
                            showingPopover = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.black)
                    }
                        .popover(isPresented: $showingPopover) {
                            
                            VStack{
                                Image(systemName: "minus")
                                    .frame(width: 100, height: 10)
                                    .padding()

                                Spacer()
                                
                                Text("Displayed Items:")
                                    .font(.headline)
                                    .padding()
                                
                                Picker("Displayed Items", selection: $displayedList) {
                                    Text("All Items").tag("All")
                                    Text("Low Priority").tag("Low")
                                    Text("Medium Priority").tag("Medium")
                                    Text("High Priority").tag("High")
                                }
                                
                                Spacer()
                            }
                        
                        }
                    
                }
                
                    List{
                        ForEach(listsManager.filteredList(listsManager.allItems, displayedList)) {
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
                        
                        Text("Priority level:")
                            .frame(alignment: .leading)
                            .padding(.horizontal)
                        
                        Section {
                            Picker("Priority", selection: $selectedCategory) {
                                Text("Low").tag("Low Priority")
                                Text("Medium").tag("Medium Priority")
                                Text("High").tag("High Priority")
                            }
                                .pickerStyle(.segmented)
                        }

                    }
                    
                    Button {
                        let newItem = ListItem(name: name, category: selectedCategory)
                        listsManager.allItems.append(newItem)
                        self.name = ""
                        self.selectedCategory = ""
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
                .frame(maxWidth: .infinity, maxHeight: 90)
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
