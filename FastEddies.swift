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
    //listens to changes in stopwatchmanager class
    @ObservedObject var stopWatchManager = StopWatchManager()



    var body: some View {
        VStack (spacing: 16){
            VStack(spacing: 16) {
                Text("• 25 Situps \n• 25 fluter kicks - 4 count\n• 25 Situps\n• 25 Leg Raised\n• 25 Situps\n• 25 Holly Dolly's - 4 count\n• 25 Situps\n• 25 Crunches\n• 25 Situps\n• 25 Crazy Ivan's\n• 25 Situps\n• 25 Bicycleers - 4 count")
                    .padding(.top, 30)
                    .foregroundColor(Color("background1"))
                Text("Sub 10 is good").font(.caption)
                    .foregroundColor(Color("background1"))
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            .background(Color("card6"))
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color("card6").opacity(0.4), radius: 10, x: 0, y: 20)
            .padding(.horizontal, 30)
            .overlay(
                Image("Weida")
                    .resizable()
//                    .aspectRatio(contentMode: .fill)
            .frame(width: 75, height: 75)
                    .clipShape(Circle())
                    .offset(y: -150)
            )
                //Begins drag effect
                .offset(x: viewState.width, y: viewState.height)
                .animation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: 0.6))
                .gesture(
                    DragGesture().onChanged { value in
                        self.viewState = value.translation
                    }
                    .onEnded(){value in
                        self.viewState = .zero
                    }
            )
        }
    }
}

struct FastEddies_Previews: PreviewProvider {
    static var previews: some View {
        FastEddies()
//        FastEddies().environment(\.colorScheme, .dark)
    }
}

struct TimerButton: View {

    let label: String
    let buttonColor: Color

    var body: some View {
        Text(label)
            .foregroundColor(.white)
//            .padding(.vertical, 20)
//            .padding(.horizontal, 90)
            .background(buttonColor)
            .cornerRadius(10)
    }
}
