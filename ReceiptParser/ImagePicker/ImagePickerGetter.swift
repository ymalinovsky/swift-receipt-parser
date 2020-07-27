//
//  ImagePickerGetter.swift
//  ReceiptParser
//
//  Created by Yan Malinovsky on 26.07.2020.
//  Copyright © 2020 Yan Malinovsky. All rights reserved.
//

import SwiftUI

struct ImagePickerGetter: View {
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    var body: some View {
        ImagePicker(isShown: self.$isShown, image: self.$image)
    }
}

struct ImagePickerGetter_Previews: PreviewProvider {
    static var previews: some View {
        ImagePickerGetter(isShown: .constant(false), image: .constant(nil))
    }
}
