//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by HeecheolYoon on 2022/07/06.
//

import UIKit

class BoardViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var textColorBtn: UIButton!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var hidingBtn: UIButton!
    
    @IBOutlet var btnArray: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        designTextField()
        
        textColorBtn.setTitle("Aa", for: .normal)
        textColorBtn.titleLabel?.textColor = .white
        
        hidingBtn.setTitle("숨기기", for: .normal)
        hidingBtn.setTitleColor(.black, for: .normal)
        
        designBtn(targetBtn: sendBtn, settingTitle: "전송", highlightedTitle: "하이", backgroundColor: .red)
        designBtn(targetBtn: textColorBtn, settingTitle: "텍스트 변경", highlightedTitle: "바이", backgroundColor: .yellow)
        
        mainLabel.font = UIFont.boldSystemFont(ofSize: 40)
        
        topView.backgroundColor = UIColor(named: "newColor")
        topView.layer.borderWidth = 1
        topView.layer.borderColor = UIColor.black.cgColor
        topView.layer.cornerRadius = 5
        
//        inputTextField.delegate = self
//        newTF.delegate = self
        
        //1.반복문
        let buttonArray: [UIButton] = [sendBtn, textColorBtn]
        
        for btn in buttonArray {
            btn.backgroundColor = .gray
            btn.layer.cornerRadius = 1
        }
        //2.아웃렛 컬렉션
        for btn in btnArray {
            btn.backgroundColor = .gray
            btn.layer.cornerRadius = 1
        }
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        textField.resignFirstResponder()
//    }
    
    func designTextField() {
        inputTextField.placeholder = "내용을 작성해주세요."
        inputTextField.keyboardType = .emailAddress
    }
    
    func designBtn(targetBtn button: UIButton, settingTitle title: String, highlightedTitle: String, backgroundColor bgColor: UIColor) {
        button.setTitle(title, for: .normal)
        button.setTitle(highlightedTitle, for: .highlighted)
        button.backgroundColor = bgColor
        button.layer.cornerRadius = 8
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 3
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.white, for: .highlighted)
    }
    
    @IBAction func tapSendBtn(_ sender: Any) {
        
        mainLabel.text = inputTextField.text
        view.endEditing(true)
        
    }
    
    @IBAction func tapView(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func didEndOnExit(_ sender: UITextField) {
        print("didEndOnExit")
    }
    
    @IBAction func hidingViewBtn(_ sender: UIButton) {
        if topView.isHidden {
            topView.isHidden = !topView.isHidden
        } else {
            topView.isHidden = !topView.isHidden
        }
    }
    
    
}
