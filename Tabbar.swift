//
//  Tabbar.swift
//  Weida
//
//  Created by robevans on 8/5/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct AnimatableSFImage: AnimatableModifier {
    var size: CGFloat

    var animatableData: CGFloat {
        get { size }
        set { size = newValue }
    }

    func body(content: Self.Content) -> some View {
        content
            .font(.system(size: size))
    }
}

// helper extension
extension Image {
    func animatingSF(size: CGFloat) -> some View {
        self.modifier(AnimatableSFImage(size: size))
    }
}

struct Tabbar: View {

    @State var enlargeIt1 = false
    @State var enlargeIt2 = true

    var body: some View {
        TabView {
            ProgramViewV2().tabItem{
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            .animation(.easeOut)
            Stats().tabItem {
                Image(systemName: "square.and.pencil")
                Text("Stats")
            }
            FastEddies().tabItem {
                Image(systemName: "hare")
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
