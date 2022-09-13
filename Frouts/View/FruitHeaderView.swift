//
//  FuitHeaderView.swift
//  Frouts
//
//  Created by hazem smawy on 9/7/22.
//

import SwiftUI

struct FruitHeaderView: View {
    @State private var isAnimatingImage:Bool = false
    var fruit:Fruit
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaleEffect()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height:440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

struct FuitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
