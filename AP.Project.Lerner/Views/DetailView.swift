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
                Text("ToDo List")
                    .font(.system(size: 25))
                    .padding(30)
                
                Spacer()
            }
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
