//
//  GSViewController.swift
//  FilterSortTest
//
//  This App has been generated using IBM Mobile App Builder
//

import UIKit

class GSViewController: TableViewController<Hoja1Item>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = DetailCell
    
    override init() {
        super.init()
		
		datasource = DatasourceManager.sharedInstance.GoogleSheetDSDS
	
        datasourceOptions = DatasourceOptions()
        datasourceOptions.addDesignFilter(datasource?.datasourceFilter.create(Hoja1ItemMapping.name, string: "Camino"))
		
		dataResponse = self
		
		behaviors.append(FilterBehavior<GSFilterViewController>(viewController: self))
		behaviors.append(SearchBehavior(viewController: self))
			
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("GS")
        title = NSLocalizedString("GS", comment: "")

        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)

        updateViewConstraints()
		
        loadData()		
    }
    
	//MARK: - <UITableViewDataSource>
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
	
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell

		// No detail or actions
        cell.userInteractionEnabled = false
	
        
        
        // Binding 
        let item = items[indexPath.row]
		cell.titleLabel.text = item.name
		cell.detailLabel.text = item.location
		
		// Styles
		
		cell.detailLabel.font = Style.sharedInstance.font(Fonts.Sizes.small, bold: false, italic: false)
		
		return cell
    }

	 //MARK: - <UITableViewDelegate>
	 
	func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        loadMoreData(indexPath.row)
		
		cell.preservesSuperviewLayoutMargins = false
        cell.layoutMargins = UIEdgeInsetsZero
        cell.separatorInset = UIEdgeInsetsZero
    }

}

//MARK: - <DataResponse>

extension GSViewController: DataResponse {

    func success() {
        
        tableView.reloadData()
    }
    
    func failure(error: NSError?) {
        
        ErrorManager.show(error, rootController: self)
    }
}
