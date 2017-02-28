//
//  ViewController.swift
//  dec 2016 test
//
//  Created by steve on 12/16/16.
//  Copyright © 2016 sb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var MonthView2017: UIWebView!
    @IBOutlet weak var butt: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    @IBAction func buttAct(_ sender: UIButton) {
        print("Pressed")
        let year = "20" + String(sender.tag)
        print(year ?? "nil value") // this was for when year was an opional string.  it works both ways

        let urlString = "january" + year + ".htm"

        let url = URL(fileReferenceLiteralResourceName: urlString)

        MonthView2017.loadRequest(URLRequest(url: url))
        
        let monthlyViewController = self.storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        if monthlyViewController.year == nil {
            monthlyViewController.year = "2017"
        }else{
            monthlyViewController.year = "2018"
        }
        print("From first VC :",monthlyViewController.year)

        // Take user to MonthlyViewController
        
        self.navigationController?.pushViewController(monthlyViewController, animated: true)



    }

    // not used: worked prior to using above avtion
    @IBAction func january(_ sender: AnyObject) {
        let year = "2017"

        let urlString = "january" + year + ".htm"
        
        let url = URL(fileReferenceLiteralResourceName: urlString)

        MonthView2017.loadRequest(URLRequest(url: url))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

