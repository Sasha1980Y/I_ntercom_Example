//
//  EditViewController.swift
//  I_ntercom_Example
//
//  Created by Artem Lyksa on 1/12/18.
//  Copyright © 2018 Artem Lyksa. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!

    var modelController: ModelController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let quote = modelController.quote
        textView.text = quote.text
        textField.text = quote.author
        
        
    }
    
    
    @IBAction func saveButton(_ sender: UIButton) {
        let newQuote = Quote(text: textView.text, author: textField.text!)
        modelController.quote = newQuote
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
