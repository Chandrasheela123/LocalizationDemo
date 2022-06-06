//
//  ViewController.swift
//  LocalizationDemo
//
//  Created by cdp on 03/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var footerLbl: UILabel!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    
    var developer = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        developer = NSLocalizedString("developer_name", tableName: "strings", bundle: Bundle.main, value: "", comment: "")
        
        let title = "\(footerLbl.text ?? "") \(developer)"
        
        footerLbl.text = title
    }

    @IBAction func loginBtnClicked(_ sender: Any) {
        
        let username = usernameTxt.text ?? ""
        let password = passwordTxt.text ?? ""
        
        if username.isEmpty || password.isEmpty {
            
            let errTitle = NSLocalizedString("alert_err_title", tableName: "strings", bundle: Bundle.main, value: "", comment: "")
            
            let errMsg = NSLocalizedString("alert_err_msg", tableName: "strings", bundle: Bundle.main, value: "", comment: "")
            
            showAlert(title: errTitle , msg: errMsg)
            
        }
        else {
            
            let sucsTitle = NSLocalizedString("alert_success_title" , tableName: "strings", bundle: Bundle.main, value: "", comment: "")
            
            let sucsMsg = NSLocalizedString("alert_err_msg", tableName: "strings", bundle: Bundle.main, value: "", comment: "")
            showAlert(title: sucsTitle, msg: sucsMsg)
            
            
        }
    }
    
    func showAlert(title: String, msg: String){
        
        let alertVC = UIAlertController(title: title, message: msg, preferredStyle: .alert)
        
        let okT = NSLocalizedString("ok_btn", tableName: "strings", bundle: Bundle.main, value: "", comment: "")
        
        
        let okAction = UIAlertAction(title: okT, style: .default, handler: nil)
        
        alertVC.addAction(okAction)
        
        present(alertVC, animated: false, completion: nil)
        
    }
    
}

