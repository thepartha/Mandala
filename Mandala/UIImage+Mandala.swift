//
//  UIImage+Mandala.swift
//  Mandala
//
//  Created by partha on 5/17/20.
//  Copyright © 2020 partha. All rights reserved.
//

import UIKit

enum ImageResourse: String {
    case angry
    case confused
    case crying
    case goofy
    case happy
    case meh
    case sad
    case sleepy
}

extension UIImage {
    convenience init(resource: ImageResourse) {
        self.init(named: resource.rawValue)!
    }
}
