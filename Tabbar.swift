//
//  Tabbar.swift
//  Weida
//
//  Created by robevans on 8/5/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct Tabbar: View {
    var body: some View {
              TabView {
                  ProgramView().tabItem{
                      Image(systemName: "play.circle.fill")
                      Text("Home")
                  }
                  FastEddies().tabItem {
                      Image(systemName: "hare")
                      Text("Fast Eddies")
                  }
                Stats().tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Stats")
                }
              }
          }
}

struct Tabbar_Previews: PreviewProvider {
    static var previews: some View {
        Tabbar()
    }
}
