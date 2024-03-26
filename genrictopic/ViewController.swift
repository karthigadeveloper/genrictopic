//
//  ViewController.swift
//  genrictopic
//
//  Created by Karthiga on 9/26/23.
//

import UIKit
protocol sampledata{
    func sampledata<T>(returnvalue: T)
}

class ViewController: UIViewController,sampledata {
    
    func sampledata<T>(returnvalue: T) {
        if let stringvalue = returnvalue as? String {
            name.append(stringvalue)
            tableview.reloadData()
        } else{
            print("invalid data")
        }
    }
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
  //  var name = ["app","ban","cat","dog"]
   var name = [] as! [Any]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func plusebutton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "one", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! secondViewController
        if segue.identifier == "one" {
            let Vc1 = segue.destination as! secondViewController
            Vc1.data = self
        }
    }
    
}
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let cell = tableView.dequeueReusableCell(withIdentifier: "tabelCell") as! TableViewCell
        
        cell.namelabel.text = name[indexPath.row] as! String
        
       return cell
    }
    
    
    
    
}
