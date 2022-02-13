//
//  SettingsLabelView.swift
//  SUI-FRUITS
//
//  Created by Ibrahim Mo Gedami on 13/02/2022.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var lblText : String
    var lblImage : String
    
    var body: some View {
        HStack{
            Text(lblText.uppercased())
            .fontWeight(.bold)
            Spacer()
            Image(systemName: lblImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(lblText: "Fruits", lblImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
