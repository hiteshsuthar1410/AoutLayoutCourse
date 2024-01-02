//
//  CustomLayoutGuide.swift
//  AoutLayoutCourse
//
//  Created by Hitesh Suthar on 30/12/23.
//

import UIKit

class CustomLayoutGuide: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    func createViews() {
        let button1 = createButton(title: "Okay", color: .green)
        let button2 = createButton(title: "Cancel", color: .red)
        
        let leadingLayoutGuide = UILayoutGuide()
        let trailingLayoutGude = UILayoutGuide()
        let centerLayoutGuide = UILayoutGuide()
        
        let defaultLayoutGuide = view.layoutMarginsGuide
        
        view.addSubview(button1)
        view.addSubview(button2)
        
        view.addLayoutGuide(leadingLayoutGuide)
        view.addLayoutGuide(trailingLayoutGude)
        view.addLayoutGuide(centerLayoutGuide)
        
        NSLayoutConstraint.activate([
            
            leadingLayoutGuide.leadingAnchor.constraint(equalTo: defaultLayoutGuide.leadingAnchor),
            button1.leadingAnchor.constraint(equalTo: leadingLayoutGuide.trailingAnchor),
            centerLayoutGuide.leadingAnchor.constraint(equalTo: button1.trailingAnchor),
            button2.leadingAnchor.constraint(equalTo: centerLayoutGuide.trailingAnchor),
            button2.trailingAnchor.constraint(equalTo: trailingLayoutGude.trailingAnchor),
            trailingLayoutGude.trailingAnchor.constraint(equalTo: defaultLayoutGuide.trailingAnchor)
            
            
        ])
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
