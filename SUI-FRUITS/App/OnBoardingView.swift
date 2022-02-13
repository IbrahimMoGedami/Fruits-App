//
//  OnBoardingView.swift
//  SUI-FRUITS
//
//  Created by Ibrahim Mo Gedami on 12/02/2022.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
      TabView {
          ForEach(fruits[0..<fruits.count -  3]) { item in
          FruitCardView(fruit: item)
        }
      }
      .tabViewStyle(PageTabViewStyle())
      .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
