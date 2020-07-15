//
//  MainView.swift
//  Rotation
//
//  Created by Bart Bruijnesteijn on 28/06/2020.
//  Copyright © 2020 Bart Bruijnesteijn. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            NavigationLink("Content", destination: ContentView())
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
