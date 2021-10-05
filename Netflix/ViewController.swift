//
//  ViewController.swift
//  Netflix
//
//  Created by mac on 2021/10/02.
//

import UIKit

class MainViewController: UIViewController, UITextFieldDelegate {
    
    //아울렛 변수가 들어가는 곳
    //컴파일지시에 메모리정책         ! 강제언래핑(옵셔널)
    @IBOutlet var EmailTextBox: UITextField!
    
    
    
    @IBOutlet var pwdTextBox: UITextField!
    
    @IBOutlet var HiddenTextField1: UITextField!
    
    @IBOutlet var HiddenTextField2: UITextField!
    
    @IBOutlet var HiddenTextField3: UITextField!
    
    
    @IBOutlet var ShowTextBoxswitchBtn: UISwitch!
    
   
    @IBOutlet var SignUpBtn: UIButton!
    
    //viewDidLoad->화면로드 완료시 자동호출 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        EmailTextBox.backgroundColor = UIColor.systemGray2
        
        EmailTextBox.keyboardType = UIKeyboardType.emailAddress
        
        pwdTextBox.backgroundColor = UIColor.systemGray2
        
        pwdTextBox.isSecureTextEntry = true
    
        HiddenTextField1.isHidden = true
        HiddenTextField2.isHidden = true
        HiddenTextField3.isHidden = true
        
        ShowTextBoxswitchBtn.tintColor = UIColor.red
        
        ShowTextBoxswitchBtn.isOn = false
        
        SignUpBtn.addTarget(self, action: #selector(SignUpBtn(_:)), for: .touchUpInside)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.EmailTextBox.resignFirstResponder()
        
        self.pwdTextBox.resignFirstResponder()
        self.HiddenTextField1.resignFirstResponder()
        self.HiddenTextField2.resignFirstResponder()
        self.HiddenTextField3.resignFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.EmailTextBox.becomeFirstResponder()
    }
    //액션함수가 들어가는 곳
    //git Commit Test
    
    @IBAction func switchControll(_ sender: UISwitch) {
        if ( self.ShowTextBoxswitchBtn.isOn == true){
        
        self.HiddenTextField1.isHidden = false
        self.HiddenTextField2.isHidden = false
        self.HiddenTextField3.isHidden = false
        } else {
            self.HiddenTextField1.isHidden = true
            self.HiddenTextField2.isHidden = true
            self.HiddenTextField3.isHidden = true
        }
    }
    
    @IBAction func SignUpBtn(_ sender: UIButton) {
        let id:String = EmailTextBox.text!
        let pwd:String = pwdTextBox.text!
        
        if (id == ""){
      print("ID를 입력하세요")
        } else {
            print(" ID:\(id) \n PW:\(pwd)"
            )
        }
        
    }
}

