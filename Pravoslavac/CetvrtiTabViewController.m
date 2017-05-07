//
//  CetvrtiTabViewController.m
//  Pravoslavac
//
//  Created by Bilbija Zeljko on 17/07/13.
//  Copyright (c) 2013 Bilbija. All rights reserved.
//

#import "CetvrtiTabViewController.h"
#import "JanuarCell.h"
#import "DnevniKalendar.h"

@interface CetvrtiTabViewController ()

@end

@implementation CetvrtiTabViewController
@synthesize tv = _tv;
@synthesize januarskiCell = _januarskiCell;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    

}

-(void)viewWillAppear:(BOOL)animated
{
        //self.title = @"Cetvrti";
    self.tv.rowHeight = 115.0;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

        // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

        // Return the number of rows in the section.
    return 5;}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"JanuarCellID";






    JanuarCell *cell =(JanuarCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
            //cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        [[NSBundle mainBundle] loadNibNamed:@"JanuarCell" owner:self options:nil];

        cell =self.januarskiCell;

    }


    cell.textLabel.textColor = [UIColor whiteColor];
        
    cell.noviDatum.text = [NSString stringWithFormat:@"%d.",indexPath.row +1];
    cell.danUNedelji.text = [self title];
    
    return cell;

}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
        // Navigation logic may go here. Create and push another view controller.
    
      DnevniKalendar *detailViewController = [[DnevniKalendar alloc] initWithNibName:@"DnevniKalendar" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];

     

    
}





@end
