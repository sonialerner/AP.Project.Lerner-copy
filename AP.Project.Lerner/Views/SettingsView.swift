//
//  SettingsView.swift
//  AP.Project.Lerner
//
//  Created by Sonia Lerner24 on 3/13/23.
//

import SwiftUI

//stop coding this. go make your mvp. 

struct SettingsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Settings")
                    .font(.system(size:25))
                    .padding()
                Spacer()
            }
            
            Text("Themes")
            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
