//
//  ViewController.swift
//  IntroCoreML
//
//  Created by Labs on 6/11/17.
//  Copyright © 2017 Tera Mo Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    @IBAction func refreshImage(_ sender: UIButton) {
        ImageDownloader.downloader.download(fromURL: "https://unsplash.it/224/?random") { (image) in
            self.imageView.image = image
            
            let model = GoogLeNetPlaces()
            guard let cvImage = image.pixelBuffer(), let modelOutput = try? model.prediction(sceneImage: cvImage) else {
                return
            }
            
            self.outputLabel.text = modelOutput.sceneLabel
            print(modelOutput.sceneLabelProbs)
            
        }
    }
}

