//
//  SettingsView.swift
//  Weida
//
//  Created by robevans on 8/6/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        //            UIApplication.shared.open(URL(string:"https://www.apple.com")!)

        NavigationView {
                List {
                    ForEach(settingData) { setting in
                        Settingslistview(setting: setting)
                    }
                    NavigationLink(destination: Text("About")){
                        Text("About")
                    }
                }
                .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct Settingslistview: View {
    var setting: Setting

    var body: some View {
        HStack {
            Button(action: {
                UIApplication.shared.open(URL(string:self.setting.site)!)
            }) {
                HStack(spacing: 16) {
                    setting.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 36, height: 36)
                    Text(setting.title)
                }
            }
            Spacer()
            Image(systemName: "chevron.right")
                .font(.system(size: 14, weight: .medium))
                //                .font(.caption)
                .foregroundColor(Color(#colorLiteral(red: 0.7673492432, green: 0.7673417926, blue: 0.7748472095, alpha: 1)))
        }
    }
}

struct Setting: Identifiable {
    var id = UUID()
    var title: String
    var site: String
    var image: Image
}

var settingData = [
    Setting(title: "Site", site:"https://derekweida.com", image: Image(uiImage: #imageLiteral(resourceName: "Weida-no-bg"))),
    Setting(title: "Instagram", site:"https://www.instagram.com/derekweida/", image: Image(uiImage: #imageLiteral(resourceName: "instagram"))),
    Setting(title: "Facebook", site:"https://www.facebook.com/derekweida/", image: Image(uiImage: #imageLiteral(resourceName: "f_logo_RGB-White_250"))),
]
