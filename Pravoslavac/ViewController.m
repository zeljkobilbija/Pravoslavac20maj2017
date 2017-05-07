#import "ViewController.h"
#import "StariNoviKalendar.h"
#import "BZPravoslavniKalendar.h"
#include "stdlib.h"

#define MINUS_13_DANA -(60*60*24*13)

@interface ViewController()
@property(nonatomic, strong)NSArray *main;
@property(nonatomic, strong)BZPravoslavniKalendar *bzKalendar;

@end

@implementation ViewController
BOOL prestupnaGodina;
BOOL bozicniPostJe;

#pragma mark - synthesize

int konponente =0;
int glob = 1;

#pragma mark - Inicijalizacija mojih @propertys

-(NSDate *)sada{
    
    if (_sada == nil) {
        _sada = [NSDate date];
    }
    return _sada;
}

#pragma mark - Moje Funkcije


#pragma mark - setUp & init

-(void)setUp{
    
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:NSLocalizedString(@"Данас је", @"Naziv prvog tab bara-danАs je ...") image:[UIImage imageNamed:@"krst.png"] tag:0];
    self.tabBarItem = item;
    [item release];


    NSTimer *tajmer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(podesiSat) userInfo:nil repeats:YES];

    [tajmer fire];

    
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        [self setUp];

        NSString *path = [[NSBundle mainBundle]pathForResource:@"PrestupnaGodina" ofType:@"plist"];
        self.main = [NSArray arrayWithContentsOfFile:path];
    }
    return self;
}


- (void)didReceiveMemoryWarning
{

    [super didReceiveMemoryWarning];
 
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
      
    [super viewDidLoad];

}


- (void)viewDidUnload
{
    [self setSatLabel:nil];
    [super viewDidUnload];
    self.ikonaSvetca = nil;
    self.postLabel = nil;
    self.dan = nil;
    self.mesecStari = nil;
    self.datumNovi = nil;
    self.stariDatum = nil;
    self.mesecNovi = nil;
    self.godinaNova = nil;
    self.godinaStara = nil;
    self.redniBrojDanaUGodini = nil;
    self.danasnjiSvetac = nil;
    self.aTimer = nil;
    self.kalendar = nil;
    self.martovskiSvetci = nil;
    self.januarskiSveci = nil;
    self.decembarskiSvetci = nil;
    self.februarskiSvetci = nil;
    self.aprilskiSvetci = nil;
    self.majskiSvetci = nil;
    self.junskiSvetci  = nil;
    self.julskiSvetci = nil;
    self.avgustovskiSvetci=nil;
    self.septembarskiSvetci = nil;
    self.oktobarskiSvetci = nil;
    self.novembarskiSvetci = nil;
    self.svetciCrvenaSlova = nil;
    self.svetciJanuar = nil;
    self.svetciFebruar=nil;
    self.svetciMart =nil;
    self.svetciApril = nil;
    self.svetciMaj = nil;
    self.svetciJun = nil;
    self.svetciJul = nil;
    self.svetciAvgust =nil;
    self.svetciSeptembar =nil;
    self.svetciOktobar = nil;
    self.svetciNovembar=nil;
    self.svetciDecembar = nil;
    self.sada = nil;

}


-(void)updateUI
{
  
    self.kalendar = [[[StariNoviKalendar alloc]init]autorelease];

    NSDate *promenjeniDate = [[NSDate date] dateByAddingTimeInterval:24*60*60*konponente];

    self.sada = promenjeniDate;

    
    NSDateFormatter *dateFormater = [[NSDateFormatter alloc] init];
    int danUGodini = [self.kalendar redniBrojDanaUGodiniInteger:_aTimer].intValue;

    dateFormater.dateFormat = @"MM";

    NSDateFormatter *df2 = [[NSDateFormatter alloc] init];
    df2.dateFormat = @"DDD";

    NSString *strDan = [df2 stringFromDate:self.sada];
    NSDictionary *svetitelj = (self.main)[strDan.intValue-1];

    self.danasnjiSvetac.text = svetitelj[@"svetitelj"];


    NSDateFormatter *brojGodine = [[[NSDateFormatter alloc] init]autorelease];

    int godina = [brojGodine stringFromDate:self.sada].intValue;

    if (godina == 2012 || godina == 2016 || godina == 2020 || godina == 2024) {
        prestupnaGodina = YES;
    }
    else{
        prestupnaGodina = NO;
    }

    NSCalendar *cal = [NSCalendar currentCalendar];

    NSDateFormatter *df = [[[NSDateFormatter alloc]init]autorelease];
    NSDateFormatter *df1 = [[[NSDateFormatter alloc]init]autorelease];
    df1.dateFormat = @"cccc";


    NSString *nzivDana = [df1    stringFromDate:self.sada];

    df.dateFormat = @"MMMM";
    NSString *nazivMeseca = [df    stringFromDate:self.sada];

    NSDateComponents *comps = [[NSDateComponents alloc] init];

    comps.day = -13;
    NSDate *stariKalendarDAtum = [cal dateByAddingComponents:comps toDate:self.sada  options:0];
    [comps release];

    NSString *nazivMesecaStari = [df    stringFromDate:stariKalendarDAtum];


    (self.dan).text = nzivDana.capitalizedString ;


    NSString *strr=nil;
    NSCalendar *cc = [[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    cc.firstWeekday = 1;
//    [cc setTimeZone:[NSTimeZone timeZoneWithName:@"Europe/Rome"]];
//    NSDateComponents *komps = [[NSDateComponents alloc]init];
//    [komps setTimeZone:[NSTimeZone timeZoneWithName:@"Europe/Rome"]];
//
//    self.sada = [ cc dateByAddingComponents:komps toDate:[NSDate date] options:0];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    dateFormat.calendar = cc;
    dateFormat.dateFormat = @"ee";

    strr = [dateFormat stringFromDate:self.sada];
    int nazivDana= strr.intValue;





    if (nazivDana == 7) {
        (self.dan).textColor = [UIColor redColor];
        (self.datumNovi).textColor = [UIColor redColor];
    }else{
        (self.dan).textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
        (self.datumNovi).textColor = [UIColor colorWithRed:0.000 green:0.502 blue:1.000 alpha:1.000];
    }



    if (nazivDana == 3 || nazivDana == 5) {
        self.postLabel.text = @"Пост";
    }else{
        self.postLabel.text = @"";
    }

    dateFormat.dateFormat = @"yyyy";
    NSString *novi = [dateFormat stringFromDate:self.sada];
    NSString *star = [dateFormat stringFromDate:[self.sada dateByAddingTimeInterval:MINUS_13_DANA + konponente]];


    (self.mesecStari).text = nazivMesecaStari.capitalizedString ;

    (self.mesecNovi).text = nazivMeseca.capitalizedString ;

    (self.godinaNova).text = novi;

    (self.godinaStara).text = star;




    (self.redniBrojDanaUGodini).text = (self.kalendar).redniBrojDanaUGodiniNoviKalendar;



    signed int zbir = danUGodini + konponente;


     NSDictionary *dd2 = (self.main)[zbir-1];
    self.ikonaSvetca.image = [UIImage imageNamed:dd2[@"ikona"]];


    if (zbir > 365) {
    
        int drugiZbir;
        drugiZbir = zbir - 365;
        NSDictionary *dd = (self.main)[drugiZbir]; 

        self.ikonaSvetca.image = [UIImage imageNamed:dd[@"ikona"]];
        
    }else if (zbir == 0 || zbir < 0){

            if (zbir < -365) {
                glob +=1;
                    }
        
        if (prestupnaGodina) {
            signed int drugiZbir = zbir +366;

            NSDictionary *ddd = (self.main)[drugiZbir];

             self.ikonaSvetca.image = [UIImage imageNamed:ddd[@"ikona"]];
            



            
        }else{
            signed int drugiZbir = zbir +366;

            NSDictionary *dddd = (self.main)[drugiZbir];
 
            self.ikonaSvetca.image = [UIImage imageNamed:dddd[@"ikona"]];
            
        }

    }
 
    [dateFormater release];
    [df2 release];

    NSDateFormatter *godinaJulijanska = [[[NSDateFormatter alloc]init]autorelease];
    godinaJulijanska.dateFormat = @"d";
    NSString *julijanskaGodina =  [godinaJulijanska    stringFromDate:self.sada];
    NSString *staragodina = [godinaJulijanska stringFromDate:stariKalendarDAtum];

    self.datumNovi.text = [NSString stringWithFormat:@"%@",julijanskaGodina];
    self.stariDatum.text =[NSString stringWithFormat:@"%@",staragodina];

    self.redniBrojDanaUGodini.text = julijanskaGodina;

    [dateFormat release];
    [cc release];

        // NSString *vreme = nil;


    

}//updateUI


-(void)podesiSat
{
    StariNoviKalendar *sekunda= [[[StariNoviKalendar alloc]init] autorelease];

    NSString *str = [NSString stringWithFormat:@"%@:%@:%@",sekunda.sati, sekunda.minuti,sekunda.sekundara];

    (self.satLabel).text = str;
    
}




- (void)viewWillAppear:(BOOL)animated
{

    [super viewWillAppear:animated];


    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];

    
    [nc addObserver: self
           selector: @selector(handleEnterForeground:)
               name: UIApplicationWillEnterForegroundNotification
             object: nil];

    
    [nc addObserver: self
           selector: @selector(handleEnterForeground:)
               name: UIApplicationSignificantTimeChangeNotification
             object: nil];

    [nc addObserver: self
           selector: @selector(handleEnterForeground:)
               name: NSCurrentLocaleDidChangeNotification
             object: nil];
    [nc addObserver: self
           selector: @selector(vratiGaNaNulu:)
               name: UIApplicationDidEnterBackgroundNotification
             object: nil];


    [self updateUI];

  
}


-(void)vratiGaNaNulu:(NSNotification *)notification
{

}


-(void)handleEnterForeground:(NSNotification *)notification
{
     [self updateUI];

}

- (void)viewDidAppear:(BOOL)animated
{
          
    [super viewDidAppear:animated];


    
}

- (void)viewWillDisappear:(BOOL)animated
{
      
	[super viewWillDisappear:animated];


    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)viewDidDisappear:(BOOL)animated
{
         
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


#define DURATION_ANIMACIJE 0.5



- (IBAction)sdesnaNaLevo:(UISwipeGestureRecognizer *)sender {

  
    [UIView transitionWithView:self.view duration:DURATION_ANIMACIJE options:UIViewAnimationOptionTransitionFlipFromRight  animations:^{


        konponente +=1;
        [self updateUI];

    } completion:NULL];
}




- (IBAction)slevaNaDesno:(UISwipeGestureRecognizer *)sender {

    [UIView transitionWithView:self.view duration:DURATION_ANIMACIJE options:UIViewAnimationOptionTransitionFlipFromLeft animations:^{


            konponente -=1;
     [self updateUI];

    } completion:NULL];



}

- (IBAction)vratiNulu:(UITapGestureRecognizer *)sender {

    [UIView transitionWithView:self.view duration:DURATION_ANIMACIJE options:UIViewAnimationOptionTransitionFlipFromTop

                    animations:^{


        konponente = 0;
        [self updateUI];

    } completion:NULL];
}

- (void)dealloc {
    [_kalendar release];
    [_dan release];
    [_aTimer invalidate];
    [_mesecStari release];
    [_datumNovi release];
    [_stariDatum release];
    [_mesecNovi release];
    [_godinaNova release];
    [_godinaStara release];
    [_januarskiSveci release];
    [_decembarskiSvetci release];
    [_redniBrojDanaUGodini release];
    [_danasnjiSvetac release];
    [_martovskiSvetci release];
    [_aprilskiSvetci release];
    [_majskiSvetci release];
    [_junskiSvetci release];
    [_julskiSvetci release];
    [_avgustovskiSvetci release];
    [_septembarskiSvetci release];
    [_oktobarskiSvetci release];
    [_novembarskiSvetci release];
    [_februarskiSvetci release];
    [_postLabel release];
    [_svetciCrvenaSlova release];
    [_ikonaSvetca release];
    [_svetciJanuar release];
    [_svetciFebruar release];
    [_svetciMart release];
    [_svetciApril release];
    [_svetciMaj release];
    [_svetciJun release];
    [_svetciJul release];
    [_svetciAvgust release];
    [_svetciSeptembar release];
    [_svetciOktobar release];
    [_svetciNovembar release];
    [_svetciDecembar release];
    [_sada release];
    [_satLabel release];
    [_bzKalendar release];
    [_main release];
    [super dealloc];
}

@end
