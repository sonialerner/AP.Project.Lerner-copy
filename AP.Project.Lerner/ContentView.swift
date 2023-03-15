//
//  ContentView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack (spacing: 20) {
                Text("To-do Lists")
                    .font(.system(size: 30))
                
                Spacer()
                
                //button
                Image(systemName: "gearshape")
                    .resizable()
                    .frame(width: 25, height: 25)
                
                //button
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            
            //click on specific lists rather than seeing all the lists
            Rectangle()
                .frame(height: 200)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(20)
                .shadow(radius: 2)

            
            ListItem()
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
