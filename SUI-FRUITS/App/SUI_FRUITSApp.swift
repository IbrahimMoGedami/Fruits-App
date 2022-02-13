//
//  SUI_FRUITSApp.swift
//  SUI-FRUITS
//
//  Created by Ibrahim Mo Gedami on 11/02/2022.
//

import SwiftUI

@main
struct SUI_FRUITSApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            //isAnimating ? 1.0 : 0.6
//            isOnboarding ? OnBoardingView() : ContentView()
            if isOnboarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
