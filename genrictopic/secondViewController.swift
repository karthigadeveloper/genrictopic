//
//  secondViewController.swift
//  genrictopic
//
//  Created by Karthiga on 9/26/23.
//

import UIKit

class secondViewController: UIViewController {
    var data : sampledata?
    

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savebutton(_ sender: Any) {
    
        data!.sampledata(returnvalue: textfield.text)
        self.dismiss(animated: true, completion:nil)
    }
   

}
