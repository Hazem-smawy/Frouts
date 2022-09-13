//
//  SourseLinkView.swift
//  Frouts
//
//  Created by hazem smawy on 9/7/22.
//

import SwiftUI

struct SourseLinkView: View {
    var body: some View {
        GroupBox(){
            HStack {
                Text("Content sourse")
                Spacer()
            Link("Wikipedia",destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
                    
            }
            .font(.footnote)
        }
    }
}

struct SourseLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourseLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
