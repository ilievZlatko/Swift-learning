//
//  Ticket.swift
//  MovieBooking
//
//  Created by Zlatko Iliev on 11/15/22.
//

import SwiftUI

struct Ticket: View {
    var body: some View {
        VStack(spacing: 0) {
            VStack(spacing: 4) {
                Text("Thor")
                    .fontWeight(.bold)
                
                Text("Love and Thunder")
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundColor(.white)
            .background(
                Image("thor-top")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            )
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: 10)
    }
}

struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket()
    }
}
