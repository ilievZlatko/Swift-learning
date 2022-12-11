//
//  HomeHeader.swift
//  TeslaApp
//
//  Created by Zlatko Iliev on 12.11.22.
//

import SwiftUI

struct HomeHeader: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Model 3".uppercased())
                    .font(.caption2)
                    .fontWeight(.medium)
                    .padding(.vertical, 4)
                    .padding(.horizontal, 8)
                    .background(Color("Red"))
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
                
                Text("Mach Five")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            Spacer()
            HStack {
                Button {
                    // action
                } label: {
                    GeneralButton(icon: "lock.fill")
                }
                
                Button {
                    // action
                } label: {
                    GeneralButton(icon: "gear")
                }
            }
        }
    }
}

struct HomeHeader_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeader()
            .preferredColorScheme(.dark)
    }
}
