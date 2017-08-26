//
//  ViewController.swift
//  Exemplo_Rest_Json_Swift
//
//  Created by Usuário Convidado on 25/08/17.
//  Copyright © 2017 Fernando Castro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var minhaImagem: UIImageView!
    @IBOutlet weak var local: UILabel!
    @IBOutlet weak var estado: UILabel!
    
    var session: URLSession?
    
    
    @IBAction func exibir(_ sender: Any) {
        let config = URLSessionConfiguration.default
        session = URLSession(configuration: config)
        let url = URL(string: "https://parks-api.herokuapp.com/parks")
        
        let task = session?.dataTask(with: url!, completionHandler: { (data, response, error) in
            //codigo aqui
            let texto = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
            print(texto!)
        })
        task?.resume()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

