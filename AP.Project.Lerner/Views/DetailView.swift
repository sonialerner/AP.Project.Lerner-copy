//
//  DetailView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

struct DetailView: View {
    
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
                .padding(.horizontal)
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
