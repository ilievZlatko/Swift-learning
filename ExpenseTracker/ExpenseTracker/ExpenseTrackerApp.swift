//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Zlatko Iliev on 25.07.22.
//

import SwiftUI

@main
struct ExpenseTrackerApp: App {
    @StateObject var transactionListVM = TransactionListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(transactionListVM)
        }
    }
}
