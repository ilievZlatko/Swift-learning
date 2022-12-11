//
//  TicketView.swift
//  MovieBooking
//
//  Created by Zlatko Iliev on 11/15/22.
//

import SwiftUI

struct TicketView: View {
    @State var animate = false
    
    var body: some View {
        ZStack {
//            CircleBackground(color: Color("greenCircle"))
//                .blur(radius: animate ? 30 : 100)
//                .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
//                .task {
//                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
//                        animate.toggle()
//                    }
//                }
//            
//            CircleBackground(color: Color("pinkCircle"))
//                .blur(radius: animate ? 30 : 100)
//                .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
            
            VStack(spacing: 30) {
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundColor(.white)
                    .bold()
                
                Text("Once you buy a movie ticket simply scan the barcode to access to your movie.")
                    .frame(maxWidth: 246)
                    .font(.body)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

struct TicketView_Previews: PreviewProvider {
    static var previews: some View {
        TicketView()
    }
}
