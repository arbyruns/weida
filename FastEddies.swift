//
//  FastEddies.swift
//  Weida
//
//  Created by robevans on 8/5/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct FastEddies: View {

    @State var show = false
    @State var viewState = CGSize.zero //storing a value of CGSize with xy position with value 0
    @State var showCard = false
    @State var isDragging = false
    //listens to changes in stopwatchmanager class



    var body: some View {
        ZStack{
            Color("background3")
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            VStack {
                GeometryReader { geometry in
                    HStack {
                        Text("Fast Eddies")
                            .font(.system(size: geometry.size.width/10, weight: .bold))
                            .foregroundColor(Color("background1"))
                        Spacer()
                        Image("Weida")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 65, height: 65)
                            .clipShape(Circle())
                    }
                }
                    .frame(maxWidth: 375, maxHeight: 100) //375 (geometry.size.width/10) - 32(padding) = 343(screen size)
                    .padding(.horizontal, 16)
                    .offset(x: viewState.width/15, y: viewState.height/15)
                Text("• 25 Situps \n• 25 fluter kicks - 4 count\n• 25 Situps\n• 25 Leg Raised\n• 25 Situps\n• 25 Holly Dolly's - 4 count\n• 25 Situps\n• 25 Crunches\n• 25 Situps\n• 25 Crazy Ivan's\n• 25 Situps\n• 25 Bicycleers - 4 count")
                Spacer()
                Text("10 Minutes is ok\n 8 minutes is good")
                    .font(.caption)
            }
            .multilineTextAlignment(.center)
            .padding(.top, 10)
            .padding(.bottom, 10)
            .frame(height: 477)
            .frame(maxWidth: .infinity)
            .background(Color (#colorLiteral(red: 0.5741485357, green: 0.5741624236, blue: 0.574154973, alpha: 1))
            .offset(x: viewState.width/25, y: viewState.height/25)
                , alignment: .bottom)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .scaleEffect(isDragging ? 0.9 : 1)
                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
                .rotation3DEffect(Angle(degrees: 7), axis: (x: viewState.width, y: viewState.height, z: 0))
                .gesture(
                    DragGesture().onChanged { value in
                        self.viewState = value.translation
                        self.isDragging = true
                    }
                    .onEnded { value in
                        self.viewState = .zero
                        self.isDragging = false
                    }
            )
        }
    }
}

struct FastEddies_Previews: PreviewProvider {
    static var previews: some View {
        //        FastEddies()
        FastEddies().environment(\.colorScheme, .dark)
    }
}
