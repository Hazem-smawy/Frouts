//
//  LableView.swift
//  Frouts
//
//  Created by hazem smawy on 9/7/22.
//

import SwiftUI

struct LableView: View {
    var labelText:String
    var labelImage:String
    var body: some View {
        HStack {
            Text(labelText.uppercased())
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct LableView_Previews: PreviewProvider {
    static var previews: some View {
        LableView(labelText: "fruits", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
