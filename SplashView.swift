//
//  SplashView.swift
//  Weida
//
//  Created by robevans on 8/6/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct SplashView: View {
    @State var isActive = false
    var body: some View {
        VStack {
            if self.isActive {
                Tabbar()
            } else {
                Image("Weida-no-bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .opacity(0.4)
                    .frame(width: 125, height: 125)
                    //.background(Color.white)
                    .clipShape(Circle())
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.2605174184, green: 0.2605243921, blue: 0.260520637, alpha: 1)))
        .animation(.easeInOut)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
