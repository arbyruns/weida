//
//  Tabbar.swift
//  Weida
//
//  Created by robevans on 8/5/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI


struct Tabbar: View {
    @State var tap = false
    @State var press = false

    var body: some View {
        TabView {
            ProgramViewV2().tabItem{
                Image(systemName: "house.fill")
                    .font(.system(size: 24, weight: .light))
                Text("Home")
            }
            Stats().tabItem {
                Image(systemName: "square.and.pencil")
                    .font(.system(size: 24, weight: .light))
                Text("Stats")
            }
            FastEddies().tabItem {
                Image(systemName: "bolt")
                    .font(.system(size: 24, weight: .light))
                Text("Fast Eddies")
            }
        }
    }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
