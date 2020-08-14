//
//  StatItemView.swift
//  Weida
//
//  Created by robevans on 8/11/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct StatItemView: View {

    var lift:String = ""
    var createdAt:String = ""
    var weight:String = ""

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                    Text(lift)
                        .font(.headline)
                    Text(createdAt)
                        .font(.caption)
            }
            Spacer()
            Divider()
            Text("\(weight) lbs")
                .font(.headline)
        }
        .frame(height: 35)
    }
}


struct StatItemView_Previews: PreviewProvider {
    static var previews: some View {
        StatItemView(lift: "Bench", createdAt: "Today", weight: "125")
    }
}

