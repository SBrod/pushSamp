//
//  SecondViewController.swift
//  dec 2016 test
//
//  Created by steve on 2/26/17.
//  Copyright © 2017 sb. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var year:String! // = String()
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var secondWevView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = year
        let urlString = "january" + year + ".htm"

        let url = URL(fileReferenceLiteralResourceName: urlString)

        secondWevView.loadRequest(URLRequest(url: url))
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
