//
//  QuoteViewController.swift
//  I_ntercom_Example
//
//  Created by Artem Lyksa on 1/12/18.
//  Copyright © 2018 Artem Lyksa. All rights reserved.
//

import UIKit

class QuoteViewController: UIViewController {
    
    @IBOutlet weak var quoteTextView: UITextView!
    @IBOutlet weak var quoteAuthorLabel: UILabel!
    
    
    var modelController: ModelController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let quote = modelController.quote
        quoteTextView.text = quote.text
        quoteAuthorLabel.text = quote.author
    }

    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let editVC = segue.destination as? EditViewController {
            editVC.modelController = modelController
        }
        
    }
    

}
