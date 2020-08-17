//
//  Stats.swift
//  Weida
//
//  Created by robevans on 8/10/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI
import UIKit

struct Stats: View {


    @State private var showButton = false
    @State var show = false
    @State var showFoo = false
    @State var showCard = false
    @State var viewState = CGSize.zero //storing a value of CGSize with xy position with value 0
    @State var bottomState = CGSize.zero
    @State var showFull = false

    //core data
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: StatItem.getStatItems()) var statItems:FetchedResults<StatItem>


    var body: some View {
        ZStack {
            NavigationView {
                Form{
                    //Back Row Section
                            Section(header: Text("Back Row")){

                                ForEach(self.statItems)
                                {StatItem in
                                    if StatItem.lift! == "Back Row"{
                                        StatItemView(lift: StatItem.lift!, createdAt: "\(StatItem.formattedDate)", weight: StatItem.weight ?? "0")
                                    }
                                }
                                .onDelete {indexSet in
                                    let deleteItem = self.statItems[indexSet.first!]
                                    self.managedObjectContext.delete(deleteItem)

                                    do {
                                        try self.managedObjectContext.save()
                                    }catch {
                                        print(error) //update this error.
                                    }
                                }
                    //            used to dismiss keyboard
                                    .onTapGesture {
                                        self.hideKeyboard()
                                }
                            }
                            .font(.headline)
                    //Back Row Section
                            Section(header: Text("Bench Press")){

                                ForEach(self.statItems)
                                {StatItem in
                                    if StatItem.lift! == "Bench Press"{
                                        StatItemView(lift: StatItem.lift!, createdAt: "\(StatItem.formattedDate)", weight: StatItem.weight ?? "0")
                                    }
                                }
                                .onDelete {indexSet in
                                    let deleteItem = self.statItems[indexSet.first!]
                                    self.managedObjectContext.delete(deleteItem)

                                    do {
                                        try self.managedObjectContext.save()
                                    }catch {
                                        print(error) //update this error.
                                    }
                                }
                    //            used to dismiss keyboard
                                    .onTapGesture {
                                        self.hideKeyboard()
                                }
                            }
                            .font(.headline)
                    //Deadlift Section
                    Section(header: Text("Deadlift")){

                                ForEach(self.statItems)
                                {StatItem in
                                    if StatItem.lift! == "Deadlift"{
                                        StatItemView(lift: StatItem.lift!, createdAt: "\(StatItem.formattedDate)", weight: StatItem.weight ?? "0")
                                    }
                                }
                                .onDelete {indexSet in
                                    let deleteItem = self.statItems[indexSet.first!]
                                    self.managedObjectContext.delete(deleteItem)

                                    do {
                                        try self.managedObjectContext.save()
                                    }catch {
                                        print(error) //update this error.
                                    }
                                }
                    //            used to dismiss keyboard
                                    .onTapGesture {
                                        self.hideKeyboard()
                                }
                            }
                            .font(.headline)
                    //Deadlift Section
                    Section(header: Text("Squat")){

                                ForEach(self.statItems)
                                {StatItem in
                                    if StatItem.lift! == "Squat"{
                                        StatItemView(lift: StatItem.lift!, createdAt: "\(StatItem.formattedDate)", weight: StatItem.weight ?? "0")
                                    }
                                }
                                .onDelete {indexSet in
                                    let deleteItem = self.statItems[indexSet.first!]
                                    self.managedObjectContext.delete(deleteItem)

                                    do {
                                        try self.managedObjectContext.save()
                                    }catch {
                                        print(error) //update this error.
                                    }
                                }
                    //            used to dismiss keyboard
                                    .onTapGesture {
                                        self.hideKeyboard()
                                }
                            }
                            .font(.headline)
                    //Strict Press Section
                    Section(header: Text("Strict Press")){

                                ForEach(self.statItems)
                                {StatItem in
                                    if StatItem.lift! == "Strict Press"{
                                        StatItemView(lift: StatItem.lift!, createdAt: "\(StatItem.formattedDate)", weight: StatItem.weight ?? "0")
                                    }
                                }
                                .onDelete {indexSet in
                                    let deleteItem = self.statItems[indexSet.first!]
                                    self.managedObjectContext.delete(deleteItem)

                                    do {
                                        try self.managedObjectContext.save()
                                    }catch {
                                        print(error) //update this error.
                                    }
                                }
                    //            used to dismiss keyboard
                                    .onTapGesture {
                                        self.hideKeyboard()
                                }
                            }
                            .font(.headline)

                }
                .navigationBarTitle(Text("1 Rep Max"))
                    //button to add additional lifts
                    .navigationBarItems(leading: Button(action:{ self.showFoo.toggle() } ) {
                        Image(systemName: "plus.app")
                            //.renderingMode(.original)
                            .foregroundColor(.primary)
                            .font(.system(size: 16, weight: .medium))
                            .frame(width: 36, height: 36)
                            .background(Color("background3"))
                            .clipShape(Circle())
                            .shadow(color: Color("secondary").opacity(0.1), radius: 1, x: 0, y: 1)
                            .shadow(color: Color("secondary").opacity(0.2), radius: 10, x: 0, y: 10)
                    }
                    .sheet(isPresented: $showFoo) {
                        AddLiftView()
                            .environment(\.managedObjectContext, self.managedObjectContext) //this is the persistent store needed to add data.
                    }, trailing: EditButton())
            }
            //this shows the bottom card.  Right now where it's at I can't delete data and messes up adding stats.  Need to fix this.
            //            .onTapGesture {
            //                self.showCard.toggle()
            //                print("show bottom card")
            //            }
            //            .gesture(
            //                DragGesture().onChanged {
            //                    value in self.viewState = value.translation
            //                    self.show = true
            //                }
            //                .onEnded { value in
            //                    self.viewState = .zero
            //                    self.show = false
            //                }
            //            )
            //
            //            //            Text("\(bottomState.height)").offset(y: -300)
            //
            //            //bottom card
            //            BottomCardView(show: $showCard)
            //                .offset(x: 0, y: showCard ? 360 : 900)
            //                .offset(y: bottomState.height)
            //                .blur(radius: show ? 20 : 0)
            //                .animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8))
            //                .gesture(
            //                    DragGesture().onChanged { value in
            //                        self.bottomState = value.translation
            //                        if self.showFull {
            //                            self.bottomState.height += -300
            //                        }
            //                        if self.bottomState.height < -300 {
            //                            self.bottomState.height = -300
            //                        }
            //                    }
            //                    .onEnded { value in
            //                        if self.bottomState.height > 50 {
            //                            self.showCard = false
            //                        }
            //                        if (self.bottomState.height < -100 && !self.showFull) || (self.bottomState.height < -250 && self.showFull) {
            //                            self.bottomState.height = -300
            //                            self.showFull = true
            //                        } else {
            //                            self.bottomState = .zero
            //                            self.showFull = false
            //                        }
            //                    }
            //            )
        }
    }
}


struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats()
    }
}


//swiftui does not have a modifier to dismiss keyboard.  This seems the best way universally on the internet. https://www.hackingwithswift.com/quick-start/swiftui/how-to-dismiss-the-keyboard-for-a-textfield

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct BottomCardView: View {
    @Binding var show: Bool

    var body: some View {
        VStack (spacing: 20){
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)

            HStack(spacing: 20.0) {

                VStack(alignment: .leading, spacing: 8.0) {
                    Text("Hey").fontWeight(.bold)
                    Text("Something will go here")
                        .font(.footnote)
                        .foregroundColor(.gray)
                        .lineSpacing(4)
                }
                .padding(20)
                .background(Color("background3"))
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 10)
            }

            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(BlurView(style: .systemThinMaterial))
        .cornerRadius(30)
        .shadow(radius: 20)
    }
}
