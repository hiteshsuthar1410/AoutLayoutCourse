//
//  StackView.swift
//  AoutLayoutCourse
//
//  Created by Hitesh Suthar on 01/01/24.
//

import UIKit

class StackView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let stackView = createStackView()
        let button1 = createButton(title: "Button 1", color: .blue)
        let button2 = createButton(title: "Button 2", color: .green)
        let imageView = createImageView()
        
        let simpleView = createUIView()

        
        view.addSubview(stackView)
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        // UIView will not show in the stack view if the bottom anchor is not set since the UIView does not have any intrinsic content size
        stackView.addArrangedSubview(simpleView)
        stackView.addArrangedSubview(imageView)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
//            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    
    func createStackView()  -> UIStackView {
        
        // MARK: Stack view has 4 main properties
        // 1. Alignment
        // 2. Distribution
        // 3. Axis
        // 4. Spacing
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
    
    func createUIView() -> UIView {
        let view = UIView()
        view.backgroundColor = .systemRed
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
