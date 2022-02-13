//
//  SourceLinkView.swift
//  SUI-FRUITS
//
//  Created by Ibrahim Mo Gedami on 12/02/2022.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack{
                Text("Content Source")
                Spacer()
                Link("Wikipedia",
                     destination: URL(string: "https://wikipedia.com")!).buttonStyle(.plain)
                Image(systemName: "arrow.up.right.square")
                    
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
