//
//  CategoryView.swift
//  TeslaApp
//
//  Created by Zlatko Iliev on 14.11.22.
//

import SwiftUI

struct CategoryView: View {
    var title: String
    var showEdit: Bool = false
    
    var body: some View {
        VStack {
            CategoryHeader(title: title, showEdit: showEdit)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(title: "Quick Shortcuts", showEdit: true)
            .preferredColorScheme(.dark)
    }
}
