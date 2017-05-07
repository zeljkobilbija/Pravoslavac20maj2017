#import "Mesecnikalendar.h"
#import "DnevniKalendar.h"
#import "StariNoviKalendar.h"
#import "FebruarCell.h"

@interface Mesecnikalendar()

@end


@implementation Mesecnikalendar

#pragma mark - synthesize 
//@synthesize  spisakSvetacaZaJanuar = _spisakSvetacaZaJanuar;
//@synthesize spisakZitijaZaJanuar = _spisakZitijaZaJanuar;
//@synthesize  svetciDict = _svetciDict;
//@synthesize zitijaDict = _zitijaDict;
//@synthesize ikoneDict = _ikoneDict;
//@synthesize ikoneVelikeDict = _ikoneVelikeDict;
//@synthesize velikaIkona = _velikaIkona;
//@synthesize januarskiCell = _januarskiCell;


#pragma mark - Moje Funkcije


-(void)loadZitija{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"SpisakZitijaZaJanuar" ofType:@"plist"];
    self.zitijaDict = [NSDictionary dictionaryWithContentsOfFile:path];    
}

-(void)loadSvetce{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"SpisakSvetacaZaJanuar" ofType:@"plist"];
    self.svetciDict = [NSDictionary dictionaryWithContentsOfFile:path];
}

-(void)loadIkone{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ikone57px" ofType:@"plist"];
    self.ikoneDict = [NSDictionary dictionaryWithContentsOfFile:path];
    [self.ikoneDict enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop){
        NSLog(@"JAJE!!!!!");
    }];
}

-(void)loadIkoneVelike:(NSInteger)anInt{
        
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ikone" ofType:@"plist"];    
    self.ikoneVelikeDict = [NSDictionary dictionaryWithContentsOfFile:path];

}

-(void)_ikoneVelikeDict{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"ikone" ofType:@"plist"];    
    self.ikoneVelikeDict = [NSDictionary dictionaryWithContentsOfFile:path];
}


#pragma mark - init & memoryWarning

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization


            //[self loadIkone];

    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Јануар";
    self.tableView.rowHeight = 115.0;
    self.view.backgroundColor = [UIColor blackColor];
    [self loadSvetce];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.spisakZitijaZaJanuar = nil;
    self.spisakSvetacaZaJanuar = nil;
    self.svetciDict = nil;
    self.zitijaDict = nil;
    self.ikoneDict = nil;
    self.ikoneVelikeDict = nil;
    self.velikaIkona = nil;
    self.januarskiCell = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
        //[self loadIkone];
    [self loadIkoneVelike:5];

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 31;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"JanuarCellID";
    
    FebruarCell *cell =(FebruarCell *) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
            //cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier] autorelease];
        [[NSBundle mainBundle] loadNibNamed:@"JanuarCell" owner:self options:nil];
        
        cell=self.januarskiCell;

    }
    

    

    
    cell.ikona.image = [UIImage imageNamed:(self.ikoneVelikeDict)[[NSString stringWithFormat:@"%i",indexPath.row + 1]]];
    cell.svetac.text = (self.svetciDict)[[NSString stringWithFormat:@"%li",indexPath.row + 1]];
    
    cell.noviDatum.text = [NSString stringWithFormat:@"%d.",indexPath.row +1];
    cell.danUNedelji.text = self.title;
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DnevniKalendar *dnevniKalendar = [[DnevniKalendar alloc] initWithNibName:@"DnevniKalendar" bundle:nil];
    dnevniKalendar.title = [NSString stringWithFormat:@"%li. јануар",indexPath.row + 1];
    
    dnevniKalendar.svetac = (self.svetciDict)[[NSString stringWithFormat:@"%li",indexPath.row + 1]];
    
    [self loadZitija];
    
    dnevniKalendar.zitijeSvecaStringa = (self.zitijaDict)[[NSString stringWithFormat:@"%li",indexPath.row +1]];
    
    /*******************  IKONA DNEVNI KALENDAR   ************************/
    
    [self loadIkoneVelike:indexPath.row];
    
    dnevniKalendar.ikonaa = [UIImage imageNamed:(self.ikoneVelikeDict)[[NSString stringWithFormat:@"%li",indexPath.row + 1]]];
    
    /*******************  IKONA DNEVNI KALENDAR   ************************/
    
        // Pass the selected object to the new view controller.
    [self.navigationController pushViewController:dnevniKalendar animated:YES];
    
    [dnevniKalendar release];
}
- (void)dealloc {
    [_spisakSvetacaZaJanuar release];
    [_spisakZitijaZaJanuar release];
    [_svetciDict release];
    [_zitijaDict release];
    [_ikoneDict release];
    [_ikoneVelikeDict release];
    [_velikaIkona release];
    [_januarskiCell release];
    
    [super dealloc];
}

@end
