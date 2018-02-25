//
//  ViewController.swift
//  SecretCode
//
//  Created by Liao Kevin on 2018/2/23.
//  Copyright © 2018年 Liao Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var hint: UILabel!
    
    let numberLabelDefault: String = "請輸入數字"
    let hintLabelDefault: String = "終極密碼 1~100"
    
    var numberLabelHasNumber: Bool = false
    //false: number label shows default text: 請輸入數字
    //true: number label shows numbers
    var randomNumber: Int = 0
    var rangeLowerBound: Int = 1
    var rangeUpperBound: Int = 100
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reStart()
    }
    
    func reStart(){
        number.text = numberLabelDefault
        hint.text = hintLabelDefault
        numberLabelHasNumber = false
        randomNumber = Int(arc4random_uniform(100)) + 1
        rangeLowerBound = 1
        rangeUpperBound = 100
        print(randomNumber)
    }
    
    override func viewWillLayoutSubviews() {
        for button in buttons {
            button.layer.borderWidth = 3
            //button.layer.masksToBounds = false
            button.layer.borderColor = UIColor.white.cgColor
            //button.clipsToBounds = true
            button.layer.cornerRadius = button.frame.size.height/2
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func putIn(_ numberInput: Int){
        if(numberLabelHasNumber == false){
            if (numberInput != 0){
                number.text = "\(numberInput)"
                numberLabelHasNumber = true
            }
        } else {
            number.text = number.text! + "\(numberInput)"
        }
    }
    
    func updateLabel(){
        hint.text = "終極密碼 \(rangeLowerBound)~\(rangeUpperBound)"
        number.text = numberLabelDefault
        numberLabelHasNumber = false
    }
    
    func gameOver(){
        
        let alertController = UIAlertController(title: "Game Over", message: "", preferredStyle: .alert)
        let alertActionOK = UIAlertAction(title: "重玩", style: .default) { (alert) in
            self.reStart()
        }
        alertController.addAction(alertActionOK)
        alertController.view.tintColor = UIColor.red
        self.show(alertController, sender: nil)
    }
    
    func outOfRange(){
        let alertController = UIAlertController(title: "超出範圍", message: "", preferredStyle: .alert)
        let alertActionReEnter = UIAlertAction(title: "重新輸入", style: .default) { (alert) in
            self.updateLabel()
        }
        let alertActionReStart = UIAlertAction(title: "重玩", style: .destructive) { (alert) in
            self.reStart()
        }
        alertController.addAction(alertActionReEnter)
        alertController.addAction(alertActionReStart)
        self.show(alertController, sender: nil)
    }
    
    func check(_ numberFromUser: Int?){
        guard let numberInput = numberFromUser else {
            return
        }
        
        if (numberInput > rangeUpperBound ) {
            outOfRange()
        } else if (numberInput < rangeLowerBound) {
            outOfRange()
        } else if (numberInput == randomNumber) {
            gameOver()
        } else {
            if (numberInput < randomNumber ) {
                rangeLowerBound = numberInput
                updateLabel()
            } else if (numberInput > randomNumber) {
                rangeUpperBound = numberInput
                updateLabel()
            }
        }
    }

    @IBAction func buttonPress(_ sender: UIButton) {
        if (sender.tag <= 9){
            putIn(sender.tag)
        } else if (sender.tag == 10) {
            putIn(0)
        } else if (sender.tag == 11) {
            number.text = numberLabelDefault
            numberLabelHasNumber = false
        } else {
            if(numberLabelHasNumber == true){
                check(Int(number.text!))
            }
        }
    }
    
    

}

