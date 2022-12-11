//
//  TicketData.swift
//  MovieBooking
//
//  Created by Zlatko Iliev on 11/15/22.
//

import Foundation

struct TicketModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var title: String
    var subtitle: String
    var top: String
    var bottom: String
}

var tickets: [TicketModel] = [
    TicketModel(name: "thir", title: "Thor", subtitle: "Lova and Thunder", top: "thor-top", bottom: "thor-bottom"),
    TicketModel(name: "panther", title: "Black Panther", subtitle: "Wakanda Forever", top: "panther-top", bottom: "panther-bottom"),
    TicketModel(name: "scarlet", title: "Doctor Strange", subtitle: "in the Multiverse of Madness", top: "scarlet-top", bottom: "scarlet-bottom")
]
