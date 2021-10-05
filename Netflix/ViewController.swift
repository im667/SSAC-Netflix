//
//  ViewController.swift
//  Netflix
//
//  Created by mac on 2021/10/02.
//

import UIKit

class ViewController: UIViewController {
    
    //아울렛 변수가 들어가는 곳
    //컴파일지시에 메모리정책         ! 강제언래핑(옵셔널)
    @IBOutlet var EmailTextBox: UITextField!
    @IBOutlet var pwdTextBox: UITextField!
    
    
    //viewDidLoad->화면로드 완료시 자동호출 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        EmailTextBox.backgroundColor = UIColor.systemGray2
        EmailTextBox.keyboardType = UIKeyboardType.emailAddress
        
        pwdTextBox.backgroundColor = UIColor.systemGray2
        
        pwdTextBox.isSecureTextEntry = true
    
        
    }
    
    //액션함수가 들어가는 곳
    
}

