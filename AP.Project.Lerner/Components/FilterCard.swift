//
//  FilterCard.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 4/22/23.
//

import SwiftUI

struct FilterCard: View {
    
    @State var category : String
    @State var isDisplayed = true
    
    var body: some View {
                Toggle(category, isOn: $isDisplayed)
                    .tint(Color("AccentColor"))
                    .padding()

    }
}

struct FilterCard_Previews: PreviewProvider {
    static var previews: some View {
        FilterCard(category: "")
    }
}
