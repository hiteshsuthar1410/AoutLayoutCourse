//
//  CreateViewComponent.swift
//  AoutLayoutCourse
//
//  Created by Hitesh Suthar on 02/01/24.
//

import UIKit

class CreateViewComponent: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setupViews() {
        
        let label = createLabel(with: "Label Title")
        let button = createButton(title: "Button title", color: .systemBlue)
        
        
        // MARK: - UIView does not have view. so we add subview directly to the view itself (without mentioning it)
        addSubview(label)
        addSubview(button)
        
        NSLayoutConstraint.activate([
            // MARK: - Same here as well. There is no View so we have added anchor directly to the view without mentioning it.
            label.leadingAnchor.constraint(equalTo: leadingAnchor), ///_ Not using view.leadingAnchor */
            label.topAnchor.constraint(equalTo: topAnchor),
            
            button.leadingAnchor.constraint(equalTo: label.trailingAnchor),
            button.trailingAnchor.constraint(equalTo: trailingAnchor),
            
        ])
    
    }
    
    override var intrinsicContentSize: CGSize {
        // MARK: - Gave some intrinsic content size so it can be added to the stack view with desired size.
        // we can control it later using CH CR if we want to change the expansion and squeeze properites
        CGSize(width: 200, height: 31)
    }
    
    func createLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentHuggingPriority(UILayoutPriority(249), for: .horizontal)
        return label
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
