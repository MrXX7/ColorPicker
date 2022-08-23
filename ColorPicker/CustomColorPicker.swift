//
//  CustomColorPicker.swift
//  ColorPicker
//
//  Created by Oncu Can on 23.08.2022.
//

import SwiftUI

struct CustomColorPicker: View {
    @Binding var selectColor: Color
    private let colors: [Color] = [.red, .brown, .green, .blue, .orange, .black, .indigo, .gray, .yellow, .mint, .pink, .purple]
    
    var body: some View {
        ScrollView(.horizontal) {
            VStack{
                ForEach(colors, id: \.self) { color in
                    Circle()
                        .foregroundColor(color)
                        .frame(width: 40, height: 40)
                        .opacity(color == selectColor ? 0.5 : 1)
                        .scaleEffect(color == selectColor ? 1.1 : 1.0)
                        .onTapGesture {
                            selectColor = color
                        }
                }
                }
            .padding()
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding(.horizontal)
            }
        }
    }

struct CustomColorPicker_Previews: PreviewProvider {
    static var previews: some View {
        CustomColorPicker(selectColor: .constant(.blue))
    }
}
