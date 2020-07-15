//
//  ContentView.swift
//  Rotation
//
//  Created by Bart Bruijnesteijn on 28/06/2020.
//  Copyright © 2020 Bart Bruijnesteijn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Group {
            Text("Hello, World!")
        }
        .onAppear {
            DispatchQueue.main.async {
            AppDelegate.orientationLock = UIInterfaceOrientationMask.landscapeLeft
            UIDevice.current.setValue(UIInterfaceOrientation.landscapeLeft.rawValue, forKey: "orientation")
            UINavigationController.attemptRotationToDeviceOrientation()
            }
        }
        .onDisappear {
            DispatchQueue.main.async {
                AppDelegate.orientationLock = UIInterfaceOrientationMask.portrait
                UIDevice.current.setValue(UIInterfaceOrientation.portrait.rawValue, forKey: "orientation")
                UINavigationController.attemptRotationToDeviceOrientation()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
