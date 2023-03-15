//
//  NewItemView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/15/23.
//

import SwiftUI

struct NewItemView: View {
    
    @State private var name : String = ""
    @State private var selectedTheme : String = ""

    
    var body: some View {
        VStack{
            HStack{
                Text("New Item")
                    .padding()
                    .font(.system(size: 25))
                Spacer()
            }
            .padding(.bottom, 50)
            
            VStack (alignment: .leading) {
                //abstract these cards
                TextField("Name", text: $name)
                    .font(.system(size: 20))
                Section {
                                    Picker("Appearance", selection: $selectedTheme) {
                                        Text("option")
                                        }
                                    }
                Text("Name")
                    .font(.system(size: 20))
                Text("Name")
                    .font(.system(size: 20))
                Text("Name")
                    .font(.system(size: 20))
            }
            .frame(width: 250, height: 500, alignment: .leading)
            .padding()

            //button to add item and nav link to take user back to main page
            ZStack{
                Rectangle()
                    .foregroundColor(Color("AccentColor"))
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
            }
                
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct PlusView_Previews: PreviewProvider {
    static var previews: some View {
        NewItemView()
    }
}
