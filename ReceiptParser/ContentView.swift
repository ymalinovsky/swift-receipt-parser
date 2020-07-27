//
//  ContentView.swift
//  ReceiptParser
//
//  Created by Yan Malinovsky on 14.06.2020.
//  Copyright © 2020 Yan Malinovsky. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShown = false
    @State private var image: Image?
    
    var body: some View {
        VStack {
            
            ImagePickerView(image: $image)
            
            Button("Choose Photo") {
                self.isShown = true
            }.padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            
        }.sheet(isPresented: self.$isShown) {
            ImagePickerGetter(isShown: self.$isShown, image: self.$image)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
