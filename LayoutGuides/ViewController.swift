//
//  ViewController.swift
//  LayoutGuides
//
//  Created by Ganesh on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        let topLabel = makeLabel(withText: "Top")
        let bottomLabel = makeLabel(withText: "Bottom")
        let leadingLabel = makeLabel(withText: "Leading")
        let trailingLabel = makeLabel(withText: "Trailing")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        leadingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        trailingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .yellow
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }

}

