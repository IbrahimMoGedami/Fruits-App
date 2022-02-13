//
//  FruitsDetailView.swift
//  SUI-FRUITS
//
//  Created by Ibrahim Mo Gedami on 12/02/2022.
//

import SwiftUI

struct FruitsDetailView: View {
    
    var fruit : Fruit
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                // VStack P
                VStack(alignment: .center, spacing: 20){
                    // HEADER
                    FruitsHeaderView(fruit: fruit)
                    // VStack C
                    VStack(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about " + fruit.title.uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    } //: VStack C
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }//: VSTACK P
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            //: SCROLL
            .edgesIgnoringSafeArea(.top)
        }
        //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}


struct FruitsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsDetailView(fruit: fruitsData[0])
            .previewDevice("iPhone 11")
    }
}
