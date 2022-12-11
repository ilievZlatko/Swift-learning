//
//  ContentView.swift
//  TeslaApp
//
//  Created by Zlatko Iliev on 12.11.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ScrollView {
                VStack(spacing: 20) {
                    HomeHeader()
                        .padding(.top)
                    CustomDivider()
                    CarSection()
                    CustomDivider()
                    CategoryHeader(title: "Quick Shortcuts", showEdit: true)
                    CustomDivider()
                    CategoryHeader(title: "Recent Actions")
                }
                .padding()
            }
            VoiceCommandButton()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
