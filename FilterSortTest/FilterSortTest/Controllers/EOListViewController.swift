//
//  EOListViewController.swift
//  FilterSortTest
//
//  This App has been generated using IBM Mobile App Builder
//

import UIKit

class EOListViewController: TableViewController<Hoja1Schema1Item>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = DetailCell
    
    override init() {
        super.init()
		
		datasource = DatasourceManager.sharedInstance.ExcelOnlineScreen1DS
	
        datasourceOptions = DatasourceOptions()
        //TODO: Numeric filter not implemented yet. 
        datasourceOptions.addDesignFilter(datasource?.datasourceFilter.create(Hoja1Schema1ItemMapping.column3, string: "a"))
		
		dataResponse = self
		
		behaviors.append(FilterBehavior<EOListFilterViewController>(viewController: self))
		behaviors.append(SearchBehavior(viewController: self))
			
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("EOList")
        title = NSLocalizedString("EOList", comment: "")

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
		cell.titleLabel.text = String(int: item.column1)
		cell.detailLabel.text = String(int: item.column2)
		
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

extension EOListViewController: DataResponse {

    func success() {
        
        tableView.reloadData()
    }
    
    func failure(error: NSError?) {
        
        ErrorManager.show(error, rootController: self)
    }
}
