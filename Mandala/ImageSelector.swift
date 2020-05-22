//
//  ImageSelector.swift
//  Mandala
//
//  Created by Partha Sarathy on 5/21/20.
//  Copyright © 2020 partha. All rights reserved.
//

import UIKit

class ImageSelector:UIControl {
    
    private let selectorStackView: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 12.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
}
