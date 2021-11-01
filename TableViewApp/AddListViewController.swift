//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by masataka maekawa on 2021/10/31.
//

import UIKit

class AddListViewController: UIViewController {
    
    @IBOutlet weak var addTextField: UITextField!
    var taskArray: [String] = [] //入力したリストを格納する配列
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard
        
        if userDefaults.object(forKey: "add") != nil{
            taskArray = userDefaults.object(forKey: "add") as! [String]
            
        }
    }
    
    @IBAction func addTask(_ sender: Any) {
        
        let userDefaults = UserDefaults.standard //そのままだと長いので変数にいれる
        if(addTextField.text! != ""){
            taskArray.append(addTextField.text!) //TextFieldで記入されたテキストを入れる
        }
        userDefaults.set(taskArray, forKey: "add") //キー"add"で配列をUserDefaultsに保存
        self.navigationController?.popViewController(animated: true) //1つ前の画面に戻る
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
