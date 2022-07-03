//
//  ViewController.swift
//  Homework_2
//
//  Created by Асгат Шагиахметов on 03.07.2022.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
   
    
    var data : [ContactsCellData] = [ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Ivan", surName: "Ivanov", job: "artist", phoneNumber: "79087213456", comment:  "talented"),
                                     ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Sergei", surName: "Sergeev", job: "designer", phoneNumber: "89087899876", comment:  "overrated"),
                                     ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Asgat", surName: "Sheggy", job: "student", phoneNumber: "123456789", comment:  "lazy"),
                                     ContactsCellData(image: UIImage(systemName: "person.fill") ?? UIImage(), name: "Mikhail", surName: "Mikhailov", job: "no", phoneNumber: "987654321", comment: " busy ")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        89087
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        guard let contactInformationViewController = storyboard?.instantiateViewController(identifier: "DetailViewController") as? DetailViewController else { return }
        
        contactInformationViewController.contact = data[indexPath.row]
        
        present(contactInformationViewController, animated: true)
        
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ContactTableViewCell", for: indexPath) as? StudentTableViewCell else { return UITableViewCell() }
        cell.setSelected(<#T##Bool#>, animated: <#T##Bool#>)
        return cell
        
        
    }
}

struct ContactsCellData {
    var image : UIImage
    var name : String
    var surName : String
    var job : String
    var phoneNumber : String
    var comment : String
}

