//
//  ViewController.swift
//  CompressionResistance-HuggingPriority
//
//  Created by Raman Kozar on 13/11/2023.
//

import UIKit

class ViewController: UIViewController {

    let productLabel = {
        
        let label = UILabel()
        
        label.text = "Product"
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        label.backgroundColor = .green
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
        
    }()
    
    let appleMacBookLabel = {
        
        $0.text = "Apple MacBook Pro 2022 16' Retina 512GB"
        $0.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        $0.backgroundColor = .orange
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        return $0
        
    }(UILabel())
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.addSubview(productLabel)
        view.addSubview(appleMacBookLabel)
        
        setConstraints()
        setCompressionResistanceHuggingPriority()
        
    }
    
    func setConstraints() {
        
        NSLayoutConstraint.activate([
        
            // Constraints for productLabel
            productLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30),
            productLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0),
            
            // Constraints for appleMacBookLabel
            appleMacBookLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 30),
            appleMacBookLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 0),
            
            // Constraints between appleMacBookLabel and productLabel
            appleMacBookLabel.leadingAnchor.constraint(equalTo: productLabel.trailingAnchor, constant: 0)
            
        ])
        
    }
    
    func setCompressionResistanceHuggingPriority() {
      
        //productLabel.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        //appleMacBookLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        productLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        appleMacBookLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        
    }

}

