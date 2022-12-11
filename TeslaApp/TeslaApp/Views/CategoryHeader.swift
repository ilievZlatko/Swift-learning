//
//  CategoryView.swift
//  TeslaApp
//
//  Created by Zlatko Iliev on 12.11.22.
//

import SwiftUI

struct CategoryHeader: View {
    var title: String
    var showEdit: Bool = false
    
    var body: some View {
        HStack(alignment: .center) {
            Text(title)
                .font(.title2)
                .fontWeight(.semibold)
            Spacer()
            
            if showEdit {
                Button {
                    // action
                } label: {
                    Text("Edit")
                        .foregroundColor(.gray)
                        .fontWeight(.medium)
                }
            }
        }
    }
}

struct CategoryHeader_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHeader(title: "Quick Shortcuts", showEdit: true)
            .preferredColorScheme(.dark)
    }
}
