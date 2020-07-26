//
//  ContentView.swift
//  ReceiptParser
//
//  Created by Yan Malinovsky on 14.06.2020.
//  Copyright © 2020 Yan Malinovsky. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showImagePicker: Bool = false
    @State private var image: Image? = nil
    
    var body: some View {
        VStack {
            
            image?.resizable().scaledToFit()
            
            Button("Choose Photo") {
                self.showImagePicker = true
            }.padding()
                .background(Color.green)
                .foregroundColor(Color.white)
                .cornerRadius(10)
            
        }.sheet(isPresented: self.$showImagePicker) {
            ImagePickerView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
