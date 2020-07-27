//
//  ImagePickerView.swift
//  ReceiptParser
//
//  Created by Yan Malinovsky on 27.07.2020.
//  Copyright © 2020 Yan Malinovsky. All rights reserved.
//

import SwiftUI

struct ImagePickerView: View {
    
    @Binding var image: Image?
    
    var body: some View {
        GeometryReader { geo in
            self.image?
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct ImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerView(image: .constant(Image("otter")) )
    }
}
