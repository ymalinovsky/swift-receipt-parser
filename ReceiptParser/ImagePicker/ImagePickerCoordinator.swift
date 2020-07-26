//
//  ImagePickerCoordinator.swift
//  ReceiptParser
//
//  Created by Yan Malinovsky on 26.07.2020.
//  Copyright © 2020 Yan Malinovsky. All rights reserved.
//

import Foundation
import SwiftUI

class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @Binding var isShown: Bool
    @Binding var image: Image?
    
    init(isShown: Binding<Bool>, image: Binding<Image?>) {
        self._isShown = isShown
        self._image = image
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        self.image = Image(uiImage: uiImage)
        self.isShown = false
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.isShown = false
    }
    
}
