//
//  ResponsiveImageView.swift
//  AoutLayoutCourse
//
//  Created by Hitesh Suthar on 31/12/23.
//

import UIKit

class ResponsiveImageView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        
        let imageView = createImageView()
        
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            
            /// By default the imageview will only scale till the size of image in it.
            /// Till we dont apply bottom anchor or (height and width) of the image view. It will occupy only space of the size of the image
            /// Either define the image (height and width) or add a bottom anchor
            
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
        ])
    }
    
    func createImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "randomImage")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }
    
    func createButton(title: String, color: UIColor) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        button.backgroundColor = color
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
}
