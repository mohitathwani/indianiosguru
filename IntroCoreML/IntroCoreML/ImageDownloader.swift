//
//  ImageDownloader.swift
//  MLTest
//
//  Created by Labs on 6/9/17.
//  Copyright © 2017 Tera Mo Labs. All rights reserved.
//

import UIKit

class ImageDownloader {
    static let downloader = ImageDownloader()
    func download(fromURL urlString:String, completionHandler handler: @escaping (UIImage)->()) {
        
        DispatchQueue.global(qos: .userInitiated).async {
            guard let url = URL(string: urlString), let imageData = try? Data(contentsOf: url), let image = UIImage(data: imageData) else {
                return
            }
            
            DispatchQueue.main.async {
                handler(image)
            }
        }
    }
}
