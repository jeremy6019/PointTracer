//
//  ViewController.swift
//  PointTracer
//
//  Created by 503 on 2020/02/25.
//  Copyright © 2020 ssang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
   
    @IBOutlet weak var t_x: UITextField!
    
    @IBOutlet weak var t_y: UITextField!
    
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            let gesture =
                UITapGestureRecognizer(target: self, action: #selector(getpoint(sender:)))
            
                self.view.addGestureRecognizer(gesture)
        }

        
        @objc func getpoint (sender : UITapGestureRecognizer){
            var point =
                sender.location(in: self.view)
            
            t_x.text = String(Double(point.x))
            t_y.text = String(Double(point.y))
            
            // 도트생성
            let dot =
                UIView(frame: CGRect(x: point.x, y: point.y, width: 5, height: 5))
            
           
            dot.backgroundColor = UIColor.red
            //view에 부착 
            self.view.addSubview(dot)

            
        }

    }

