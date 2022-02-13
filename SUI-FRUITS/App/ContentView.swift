//
//  ContentView.swift
//  SUI-FRUITS
//
//  Created by Ibrahim Mo Gedami on 11/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSetting : Bool = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach (fruits.shuffled()){ item in
                    NavigationLink(destination: FruitsDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }){
                        Image(systemName: "slider.horizontal.3")
                            
                    }//:Button
                    .buttonStyle(.plain)
                    .sheet(isPresented: $isShowingSetting){
                        SettingsView()
                    }
            )
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 11")
    }
}
