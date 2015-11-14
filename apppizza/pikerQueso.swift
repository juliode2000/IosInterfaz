//
//  pikerQueso.swift
//  apppizza
//
//  Created by jdeleonrii on 13/11/15.
//  Copyright © 2015 jdeleonr. All rights reserved.
//

import UIKit

class pikerQueso: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerQueso: UIPickerView!
    var queso = ["Mozarela","Cheddar","Parmesano","Sin queso"]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.pickerQueso.dataSource = self
        self.pickerQueso.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return queso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return queso[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(row == 0)
        {
            self.view.backgroundColor = UIColor.whiteColor();
        }
        else if(row == 1)
        {
            self.view.backgroundColor = UIColor.redColor();
        }
        else if(row == 2)
        {
            self.view.backgroundColor = UIColor.yellowColor();
        }
        else
        {
            self.view.backgroundColor = UIColor.blueColor();
        }
    }

}
