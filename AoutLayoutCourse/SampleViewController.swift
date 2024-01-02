//
//  SampleViewController.swift
//  AoutLayoutCourse
//
//  Created by Hitesh Suthar on 31/12/23.
//

import UIKit

class SampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let textfield = createTextField(withPlaceholder: "Enter your email")
        let title = createLabel(with: "Email")
        
        view.addSubview(textfield)
        view.addSubview(title)
        
        NSLayoutConstraint.activate([
            title.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            title.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            textfield.leadingAnchor.constraint(equalTo: title.trailingAnchor),
            textfield.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            
            
            textfield.firstBaselineAnchor.constraint(equalTo: title.firstBaselineAnchor)
                        
        ])
        
        // Both results in same behaviour
        // Which ever view's huggingPriority is more like (250 -> 251) will compress itself
        title.setContentHuggingPriority(UILayoutPriority(249), for: .horizontal)
        textfield.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
            
        
        
    }
    
    func createTextField(withPlaceholder placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.backgroundColor = .systemGray4
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
    
    func createLabel(with text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
