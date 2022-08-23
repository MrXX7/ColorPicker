//
//  ContentView.swift
//  ColorPicker
//
//  Created by Oncu Can on 23.08.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var selectColor: Color = .blue
    var body: some View {
        VStack {
            HStack {
            CustomColorPicker(selectColor: $selectColor)
            Spacer()
            Circle()
                .frame(width: 250, height: 250)
                .foregroundColor(selectColor)
                .overlay{
                    Text(selectColor.description)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
            Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

