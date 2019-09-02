//
//  AddItemFormViewController.swift
//  in-my-fridge
//
//  Created by Miko Arce on 2019-06-02.
//  Copyright © 2019 Miko Arce. All rights reserved.
//

import Eureka
import ImageRow
import UIKit

class AddItemFormViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section("")
                <<< ImageRow { row in
                    row.title = "Select Image"
                    row.sourceTypes = [.PhotoLibrary, .Camera]
                    row.clearAction = .yes(style: UIAlertAction.Style.destructive)
                }

            +++ Section("Description")
                <<< TextRow { row in
                    row.title = "Name"
                }
                <<< DateRow { row in
                    row.title = "Best Before"
                    row.value = Date(timeIntervalSinceNow: 31449600)
                }

            +++ Section("Notes")
                <<< TextAreaRow { row in
                    row.title = "Notes"
//                    row.textAreaHeight = .dynamic(initialTextViewHeight: 100)
                }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
