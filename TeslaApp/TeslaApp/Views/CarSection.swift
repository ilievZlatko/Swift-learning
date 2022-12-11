//
//  CarSection.swift
//  TeslaApp
//
//  Created by Zlatko Iliev on 12.11.22.
//

import SwiftUI

struct CarSection: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack(alignment: .center) {
                HStack {
                    Image(systemName: "battery.75")
                    Text("237 miles".uppercased())
                }
                .font(.system(size: 14, weight: .semibold, design: .rounded))
                .foregroundColor(Color("Green"))
                
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Parked")
                        .fontWeight(.semibold)
                    Text("Last updated 5 min ago")
                        .font(.caption2)
                        .foregroundColor(Color.gray)
                }
            }
            Image("Car")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct CarSection_Previews: PreviewProvider {
    static var previews: some View {
        CarSection()
            .preferredColorScheme(.dark)
    }
}
