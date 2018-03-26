//
//  ViewController.swift
//  How any fingers
//
//  Created by D7703_02 on 2018. 3. 26..
//  Copyright © 2018년 D7703_02. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var input: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //delegate연결
        input.delegate = self
    }

   
    
    
    @IBAction func guess(_ sender: Any) {
        //랜덤 숫자 생성
        let number = arc4random() % 6
        print(number)
        let numberString = String(number)
        
        if input.text == numberString{
            resultLabel.text = "빙고"
            
        }
        else{
            resultLabel.text = "실패!! 숨겨진 숫자는 현재 \(number)"
            
            }
        
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        input.backgroundColor = UIColor.yellow
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        input.resignFirstResponder()
        view.backgroundColor = UIColor.yellow
        return true
    }
    }
    


