
#import "GodisnjiKalendar.h"
#import "Mesecnikalendar.h"
#import "DecembarController.h"
#import "FebruarController.h"
#import "MartController.h"
#import "AprilController.h"
#import "MajController.h"
#import "JunController.h"
#import "JulController.h"
#import "AvgustController.h"
#import "SeptembarController.h"
#import "OktobarController.h"
#import "NovembarController.h"
#import "GodinaCellViewController.h"



@interface GodisnjiKalendar()

@property (nonatomic, strong) NSArray *naziviMeseci;


@end




@implementation GodisnjiKalendar

-(void)setUp{
    self.title = @"Kалендар";
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:@"Kалендар" image:[UIImage imageNamed:@"kalendar.png"] tag:0];
    self.tabBarItem = item;
    [item release];

}


- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setUp];
        
    }
    return self;
}



- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
    
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
    self.naziviMeseci = @[@" Јануар",@" Фебруар",@" Март",@" Април",@" Мај",@" Јун",@" Јул",@" Август",@" Септембар",@" Октобар",@" Новембар",@" Децембар"];

    self.tableView.rowHeight = 115.0;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    self.godisnjiCell = nil;
}


- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    cell.backgroundColor = [UIColor blackColor];

}


- (void)viewWillAppear:(BOOL)animated
{
   
    [super viewWillAppear:animated];
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
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return (self.naziviMeseci).count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"GodisnjiCellID";
    
    GodinaCellViewController *cell =( GodinaCellViewController * ) [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {

        
        [[NSBundle mainBundle] loadNibNamed:@"GodinaCell" owner:self options:nil];
        
        cell=self.godisnjiCell;
        
    }


        NSArray *array12ikonica = @[@"7.png",@"57.png",@"68.png",@"99.png",@"145.png",@"176.png",@"189.png",@"232.png",@"255.png",@"305.png",@"313.png",@"354.png"];

    
    cell.textLabel.textColor = [UIColor colorWithRed:1.000 green:0.800 blue:0.400 alpha:1.000];

    cell.mesec.text = (self.naziviMeseci)[indexPath.row];

    
    cell.ikona.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",array12ikonica[indexPath.row]]];

    
    return cell;
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
  
    NSInteger regulator = indexPath.row;
    
    switch (regulator) {
        case 0:
           
        {
            Mesecnikalendar *mesecniKalendar = [[Mesecnikalendar alloc] initWithNibName:@"Mesecnikalendar" bundle:nil];
            [self.navigationController pushViewController:mesecniKalendar animated:YES];
            [mesecniKalendar release];
        }
            

            break;
        case 1:
            
        {

            FebruarController *februarKalendar = [[FebruarController alloc] initWithNibName:@"FebruarController" bundle:nil];
            [self.navigationController pushViewController:februarKalendar animated:YES];
            [februarKalendar release];
        }
            
             
            break;
        case 2:
        {
            MartController *martKalendar = [[MartController alloc] initWithNibName:@"MartController" bundle:nil];
            [self.navigationController pushViewController:martKalendar animated:YES];
            [martKalendar release];

        }
            
            
             
            break;
        case 3:
        {
            AprilController *aprilKalendar = [[AprilController alloc] initWithNibName:@"AprilController" bundle:nil];
            [self.navigationController pushViewController:aprilKalendar animated:YES];
            [aprilKalendar release];

        }
             
            break;
        case 4:
        {
            MajController *majKalendar = [[MajController alloc] initWithNibName:@"MajController" bundle:nil];
            [self.navigationController pushViewController:majKalendar animated:YES];
            [majKalendar release];
            
        }
            break;
        case 5:
        {
            JunController *junKalendar = [[JunController alloc] initWithNibName:@"JunController" bundle:nil];
            [self.navigationController pushViewController:junKalendar animated:YES];
            [junKalendar release];
            
        }
            break;
        case 6:
        {
            JulController *julKalendar = [[JulController alloc] initWithNibName:@"JulController" bundle:nil];
            [self.navigationController pushViewController:julKalendar animated:YES];
            [julKalendar release];
            
        }
            break;
        case 7:
        {
            AvgustController *avgustKalendar = [[AvgustController alloc] initWithNibName:@"AvgustController" bundle:nil];
            [self.navigationController pushViewController:avgustKalendar animated:YES];
            [avgustKalendar release];
            
        }
            break;
        case 8:
        {
            SeptembarController *septembarKalendar = [[SeptembarController alloc] initWithNibName:@"SeptembarController" bundle:nil];
            [self.navigationController pushViewController:septembarKalendar animated:YES];
            [septembarKalendar release];
            
        }
            break;
        case 9:
        {
            OktobarController *oktobarKalendar = [[OktobarController alloc] initWithNibName:@"OktobarController" bundle:nil];
            [self.navigationController pushViewController:oktobarKalendar animated:YES];
            [oktobarKalendar release];
            
        }
            break;
        case 10:
        {
            NovembarController *novembarKalendar = [[NovembarController alloc] initWithNibName:@"NovembarController" bundle:nil];
            [self.navigationController pushViewController:novembarKalendar animated:YES];
            [novembarKalendar release];
            
        }
            break;
        case 11:
              {
            DecembarController *decembar = [[DecembarController alloc] initWithNibName:@"DecembarController" bundle:nil];
            [self.navigationController pushViewController:decembar animated:YES];
            [decembar release];
        }
            break;

        default:

            break;
    }
     
}

- (void)dealloc {
    [_godisnjiCell release];
    [_naziviMeseci release];
    [super dealloc];
}




@end
