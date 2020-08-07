//
//  StopWatchManager.swift
//  Weida
//
//  Created by robevans on 8/5/20.
//  Copyright © 2020 robevans. All rights reserved.
//

import SwiftUI

enum stopWatchMode {
    case running
    case stopped
    case paused
}

class StopWatchManager: ObservableObject {

//    Published tells fasteddie of updates
    @Published var secondsElapsed = 0.0
    @Published var mode: stopWatchMode = .stopped

    var timer = Timer()

    func start() {
        mode = .running
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.secondsElapsed = self.secondsElapsed + 0.1
        }
    }
    func pause() {
        timer.invalidate()
        mode = .stopped
    }
    func stop() {
        timer.invalidate()
        secondsElapsed = 0
        mode = .stopped
    }
}
