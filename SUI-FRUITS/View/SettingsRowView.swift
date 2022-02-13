//
//  SettingsRowView.swift
//  SUI-FRUITS
//
//  Created by Ibrahim Mo Gedami on 12/02/2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name : String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content ?? "")
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                        .buttonStyle(.plain)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                  }else {
                    EmptyView()
                }
            }
        }
        
    }//:Body
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Jone / Jane")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass",
                        linkDestination: "swiftuimasterclass.com")
          .preferredColorScheme(.dark)
          .previewLayout(.fixed(width: 375, height: 60))
          .padding()
        
    }
}
