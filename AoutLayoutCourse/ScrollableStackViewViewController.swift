//
//  ScrollableStackViewViewController.swift
//  AoutLayoutCourse
//
//  Created by Hitesh Suthar on 02/01/24.
//

import UIKit

class ScrollableStackViewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        let scrollView = createScrollView()
        let stackView = createStackView()
        
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
        ])
        
        for _ in 1...30 {
            let row = CreateViewComponent()
            stackView.addArrangedSubview(row)
            // MARK: - Without this line the view will occupy only the needed constraints irrespective of the constraints given.
            row.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        }
        
        
    }
    
    func createScrollView() -> UIScrollView {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }
    
    func createStackView()  -> UIStackView {
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
