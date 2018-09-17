
// Created on: 17-Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program is the UIKit solution for the school's names and their team's name to display when pressed on that school's button


// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let schoolLabel = UILabel()
    let teamNameLabel = UILabel()
    let motherTeresaButton = UIButton()
    let saintMarkButton = UIButton()
    let saintJoesButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        schoolLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(schoolLabel)
        schoolLabel.translatesAutoresizingMaskIntoConstraints = false
        schoolLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        schoolLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80).isActive = true
        
        teamNameLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(teamNameLabel)
        teamNameLabel.translatesAutoresizingMaskIntoConstraints = false
        teamNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        teamNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120).isActive = true
        
        motherTeresaButton.setTitle("Mother Teresa HS", for: UIControlState.normal)
        motherTeresaButton.setTitleColor(.blue, for: .normal)
        motherTeresaButton.addTarget(self, action: #selector(motherTeresaText), for: .touchUpInside)
        motherTeresaButton.addTarget(self, action: #selector(titansText), for: .touchUpInside)
        view.addSubview(motherTeresaButton)
        motherTeresaButton.translatesAutoresizingMaskIntoConstraints = false
        motherTeresaButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        motherTeresaButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        saintMarkButton.setTitle("St.Mark HS", for: UIControlState.normal)
        saintMarkButton.setTitleColor(.blue, for: .normal)
        saintMarkButton.addTarget(self, action: #selector(stMarkText), for: .touchUpInside)
        saintMarkButton.addTarget(self, action: #selector(lionsText), for: .touchUpInside)
        view.addSubview(saintMarkButton)
        saintMarkButton.translatesAutoresizingMaskIntoConstraints = false
        saintMarkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        saintMarkButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        saintJoesButton.setTitle("St.Joe HS", for: UIControlState.normal)
        saintJoesButton.setTitleColor(.blue, for: .normal)
        saintJoesButton.addTarget(self, action: #selector(stJoeText), for: .touchUpInside)
        saintJoesButton.addTarget(self, action: #selector(jaguarsText), for: .touchUpInside)
        view.addSubview(saintJoesButton)
        saintJoesButton.translatesAutoresizingMaskIntoConstraints = false
        saintJoesButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        saintJoesButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    @objc func motherTeresaText() {
        schoolLabel.text = "Mother Teresa HS"
        
        
    }
    @objc func titansText() {
        teamNameLabel.text = "Titans👹"
        
    }
    @objc func stMarkText() {
        schoolLabel.text = "St. Mark HS"
        
    }
    @objc func lionsText() {
        teamNameLabel.text = "Lions🦁"
        
    }
    @objc func stJoeText() {
        schoolLabel.text = "St. Joes HS"
        
    }
    @objc func jaguarsText() {
        teamNameLabel.text = "Jaguars🐯"
        
        
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
