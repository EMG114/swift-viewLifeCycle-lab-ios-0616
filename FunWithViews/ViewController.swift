//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topLeftView: UIView!

    @IBOutlet weak var topRightView: UIView!
    
    @IBOutlet weak var leftMiddleView: UIView!
    
    
    @IBOutlet weak var centerMiddleView: UIView!
    
    
    @IBOutlet weak var rightMiddleView: UIView!
    
    
    @IBOutlet weak var leftBottomView: UIView!
    
    
    @IBOutlet weak var rightBottomView: UIView!
    
    @IBOutlet weak var firstDieRollLabel: UILabel!
    
    @IBOutlet weak var secondDieRollLabel: UILabel!
    
    
    @IBOutlet weak var thirdDieRollLabel: UILabel!
    
    
    @IBOutlet weak var fourthDieRollLabel: UILabel!
    
    
    @IBOutlet weak var fifthDieRollLabel: UILabel!
    
    
    @IBOutlet weak var sixthDieRollLabel: UILabel!
    
    
    var dieLabels: [UILabel] = []
    var dieViews:[UIView] = []
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupContainerforLabelsAndViews()
        hideLabelsAndViews()
        
    }
    
    
    
    func setupContainerforLabelsAndViews () {
        dieLabels = [firstDieRollLabel, secondDieRollLabel, thirdDieRollLabel, fourthDieRollLabel, fifthDieRollLabel, sixthDieRollLabel]
        dieViews = [ topLeftView, topRightView, leftMiddleView, centerMiddleView, rightMiddleView, leftBottomView, rightBottomView]
        
    }
    
    
    func hideLabelsAndViews () {
        
        for labels in dieLabels {labels.hidden = true}
        for view in dieViews { view.hidden = true }
    }
    
    
    var counter = 1
    @IBAction func rollTheDie(sender: AnyObject) {
        randomDiceRoll()
               let score = randomDiceRoll()
                generateViews(score)
                    generateScore(score)
                    counter += 1
        
    }
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func generateScore (value: Int){
        if (counter == 1){
            firstDieRollLabel.hidden = false
            firstDieRollLabel.text = "\(value)"
        }
        
        if (counter == 2){
            secondDieRollLabel.hidden = false
            secondDieRollLabel.text = "\(value)"
        }
        
        if (counter == 3){
            thirdDieRollLabel.hidden = false
            thirdDieRollLabel.text = "\(value)"
        }
        
        if (counter == 4){
            fourthDieRollLabel.hidden = false
            fourthDieRollLabel.text = "\(value)"
        }
        
        if (counter == 5){
            fifthDieRollLabel.hidden = false
            fifthDieRollLabel.text = "\(value)"
        }
        
        if (counter == 6){
            sixthDieRollLabel.hidden = false
            sixthDieRollLabel.text = "\(value)"
        }
        
    }
    
    func generateViews(value : Int) {
        if value == 1{
            
           centerMiddleView.hidden = false
            
            leftMiddleView.hidden = true
            rightMiddleView.hidden = true
            topLeftView.hidden = true
            topRightView.hidden = true
            leftBottomView.hidden = true
            rightBottomView.hidden = true
         
            
        }
            
        else if value == 2{
            
            leftMiddleView.hidden = false
            rightMiddleView.hidden = false

            topLeftView.hidden = true
            topRightView.hidden = true
            leftBottomView.hidden = true
            rightBottomView.hidden = true
            centerMiddleView.hidden = true
        }
            
        else if value == 3{
            leftMiddleView.hidden = true
            rightMiddleView.hidden = true
            topLeftView.hidden = true
            topRightView.hidden = false
            centerMiddleView.hidden = false
            leftBottomView.hidden = false
             rightBottomView.hidden = true
            
        }
            
        else if value == 4{
            leftMiddleView.hidden = true
            rightMiddleView.hidden = true
            topLeftView.hidden = false
            topRightView.hidden = false
            leftBottomView.hidden = false
            rightBottomView.hidden = false
            centerMiddleView.hidden = true
        }
            
        else if value == 5{
            leftMiddleView.hidden = true
            rightMiddleView.hidden = true
            topLeftView.hidden = false
            topRightView.hidden = false
            leftBottomView.hidden = false
            rightBottomView.hidden = false
            centerMiddleView.hidden = false
        }
            
        else if value == 6{
            
                    leftMiddleView.hidden = false
                    rightMiddleView.hidden = false
                    topLeftView.hidden = false
                    topRightView.hidden = false
                     leftBottomView.hidden = false
                     rightBottomView.hidden = false
                     centerMiddleView.hidden = true
        }
    }
}
    
//    
//    func hideViewWithDieRoll (number : Int){
//        switch number {
//        case 1 : centerMiddleView.hidden = false
//        case 2 : leftMiddleView.hidden = false
//                rightMiddleView.hidden = false
//        case 3: topRightView.hidden = false
//                centerMiddleView.hidden = false
//                leftBottomView.hidden = false
//        case 4 : topLeftView.hidden = false
//                 topRightView.hidden = false
//                 leftBottomView.hidden = false
//                 rightBottomView.hidden = false
//        case 5 : topLeftView.hidden = false
//        topRightView.hidden = false
//        leftBottomView.hidden = false
//        rightBottomView.hidden = false
//        centerMiddleView.hidden = false
//        case 6:leftMiddleView.hidden = false
//        rightMiddleView.hidden = false
//        topLeftView.hidden = false
//        topRightView.hidden = false
//        leftBottomView.hidden = false
//        rightBottomView.hidden = false
//        default: break
//            
//            
//        }

    
    
    
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

