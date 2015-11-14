//
//  pickerIngredietes.swift
//  apppizza
//
//  Created by jdeleonrii on 13/11/15.
//  Copyright © 2015 jdeleonr. All rights reserved.
//

import UIKit

class pickerIngredietes: UIViewController {
    
    
   
    
//    struct Ingredientes {
//        var I1: [String] = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Pimiento","Piña","Anchoa","Sin elección"]
//        var I2: [String] = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Pimiento","Piña","Anchoa","Sin elección"]
//        var I3: [String] = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Pimiento","Piña","Anchoa","Sin elección"]
//        var I4: [String] = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Pimiento","Piña","Anchoa","Sin elección"]
//        var I5: [String] = ["Jamón","Pepperoni","Pavo","Salchicha","Aceituna","Pimiento","Piña","Anchoa","Sin elección"]
//        
//    }
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    @IBAction func buttonPedido(sender: UIButton) {
         showOkayCancelAlert()
    }
    
    
   
  
    
    /// Show an alert with an "Okay" and "Cancel" button.
    func showOkayCancelAlert() {
        let title = NSLocalizedString("PizzaMex", comment: "")
        let message = NSLocalizedString("Esta seguro de solicitar su Pizza?", comment: "")
        let cancelButtonTitle = NSLocalizedString("Cancelar", comment: "")
        let otherButtonTitle = NSLocalizedString("Aceptar", comment: "")
        
        let alertCotroller = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        
        // Create the actions.
        let cancelAction = UIAlertAction(title: cancelButtonTitle, style: .Cancel) { _ in
            NSLog("The \"Okay/Cancel\" Canceló pedido")
        }
        
        let otherAction = UIAlertAction(title: otherButtonTitle, style: .Default) { _ in
            NSLog("The \"Okay/Cancel\" Aceptó pedido")
        }
        
        // Add the actions.
        alertCotroller.addAction(cancelAction)
        alertCotroller.addAction(otherAction)
        
        
        presentViewController(alertCotroller, animated: true, completion: nil)
    }

   

}
