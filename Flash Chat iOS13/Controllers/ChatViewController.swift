//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    let messages : [Message] = [
        Message(sender: "gholami", message: "Hi"),
        Message(sender: "abolfazl", message: "helloakjsdlkajkldsjalkdsjl kajdlkajsdklajklsdjal ksdjalksjdklajdkla jsdklajlkdjaklsj dklajdklajsdk lajsdklajklsdjakljdklaj dklsajdklajs dklajdkljaklsjdakljdkal jsdklaj dklajsdklajkldjaldjsklsajds kaljdklasjdklsajk lajdlkajlkassjdlakdja kldjlakdjakakldjlakjdkl")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        tableView.dataSource =  self
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil ),forCellReuseIdentifier: K.cellIdentifier)

    }
    
    @IBAction func logOutButtonPressed(_ sender: UIBarButtonItem) {
        do {
           try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let error {
            print(error)
        }
    }
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    

}

extension ChatViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier,for: indexPath) as! TableViewCell
        cell.message.text = messages[indexPath.row].message
        return cell
    }
    
    
}
