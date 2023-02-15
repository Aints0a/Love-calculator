//
//  ViewController.swift
//  Love calculator
//
//  Created by Jean Yves Kaliva on 2/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name1TextField: UITextField!
    
    @IBOutlet weak var name2TextField: UITextField!
    
    
    @IBOutlet weak var resultImageView: UIImageView!
    
    @IBOutlet weak var textView: UITextView!
    var randNum = 0
    let fightingCoupleImage = UIImage(named: "fightingCouple")
    let loveCouplesImage = UIImage(named: "loveCouplesImage")
    let notBadCoupleImage = UIImage(named: "notBadCouple")

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textView.backgroundColor = .clear
        textView.text = "Fill the names then click the button to see your compatibility. Good luck!"
        // Do any additional setup after loading the view.
               
    }
    


    @IBAction func resultButton(_ sender: UIButton) {
        
            
        guard let hisName = name1TextField.text, !hisName.isEmpty else {
            textView.text = "Please enter your name in the first field."
            return
        }
        guard let herName = name2TextField.text, !herName.isEmpty else {
            textView.text = "Please enter your partner's name in the second field."
            return
        }
        guard hisName.rangeOfCharacter(from: CharacterSet.letters.inverted) == nil else {
            textView.text = "Please enter a valid name in the first field."
            return
        }
        guard herName.rangeOfCharacter(from: CharacterSet.letters.inverted) == nil else {
            textView.text = "Please enter a valid name in the second field."
            return
        }
        
        randNum = Int.random(in: 1...10)
        print (randNum)


        if (randNum < 4){
            print ("You don't belong together!")
            textView.text = "You don't belong together. I'm sorry \(hisName) and \(herName)"
            resultImageView.image = fightingCoupleImage
            
                    } else if (randNum >= 4 && randNum <= 6){
                        print ("You are 50% compatible. Not badddd !!!")
                        textView.text = "You are 50% compatible. Not badddd \(hisName) and \(herName)!!!"
                        resultImageView.image = notBadCoupleImage
                        
                    } else {
                        print("You are made to be together. Congratulation\(hisName) and \(herName)")
                        textView.text = "You are made to be together. Congratulation \(hisName)  and \(herName)!!"
                        resultImageView.image = loveCouplesImage

            
                    }
            
            
        }
    }
    



