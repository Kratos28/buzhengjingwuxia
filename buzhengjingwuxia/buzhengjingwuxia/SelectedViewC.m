//

#import "SelectedViewC.h"
#import "NZ_PartnerVC.h"
@interface SelectedViewC ()
@property (weak, nonatomic) IBOutlet UIButton *maleb;
@property (weak, nonatomic) IBOutlet UIButton *femaleb;
@property (weak, nonatomic) IBOutlet UIImageView *nameImageView;
@property (weak, nonatomic) IBOutlet UIButton *renzuB;
@property (weak, nonatomic) IBOutlet UIButton *lingzub;
@property (weak, nonatomic) IBOutlet UIButton *mozub;
@property (weak, nonatomic) IBOutlet UIButton *yaozub;
@property (weak, nonatomic) IBOutlet UIImageView *jieshaoLabel;
@property (weak, nonatomic) IBOutlet UIImageView *beijingtu;

@property (weak, nonatomic) IBOutlet UIButton *CofirmB;

@property (weak, nonatomic)  UIButton *kuangkuangCofirmB;
@end

@implementation SelectedViewC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self maleFemaleClick:self.maleb];

    
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [self performSelector:@selector(kuangkuangClick:) withObject:self.renzuB afterDelay:0.1];
}




- (IBAction)maleFemaleClick:(UIButton *)sender {
    
    
    sender.selected = !sender.isSelected;
    if (sender.selected)
    {
        self.femaleb.selected = false;
        self.maleb.selected = true;
        self.beijingtu.image = [UIImage imageNamed:@"1创建角色_1beijing"];
        self.nameImageView.image = [UIImage imageNamed:@"1创建角色_1maoxiao"];
        P *p =  [[CDM sharedInstance]setupP][0];
        

    }else{
     
        self.maleb.selected = false;
        self.femaleb.selected = true;
        self.nameImageView.image = [UIImage imageNamed:@"1创建角色_1shanguganz"];
        self.beijingtu.image = [UIImage imageNamed:@"1创建角色_1beijing-2"];
        P *p =  [[CDM sharedInstance]setupP][1];
    }
}
- (IBAction)kuangkuangClick:(UIButton *)sender {
    [self.kuangkuangCofirmB removeFromSuperview];
    UIButton *kuang = [[UIButton alloc]init];
    kuang.tag = sender.tag;
    [kuang setBackgroundImage:[UIImage imageNamed:@"1创建角色_2xianzhongk"] forState:UIControlStateNormal];
    kuang.frame = CGRectMake(-5, -5, sender.frame.size.width + 10, sender.frame.size.height + 10);
    [sender addSubview:kuang];
    self.kuangkuangCofirmB = kuang;
    switch (sender.tag) {
        case 0:
            self.jieshaoLabel.image = [UIImage imageNamed:@"1创建角色_5ren"];
            break;
        case 1:
            self.jieshaoLabel.image = [UIImage imageNamed:@"1创建角色_5ling"];
            break;
        case 2:
            self.jieshaoLabel.image = [UIImage imageNamed:@"1创建角色_5mo"];
            break;
        case 3:
            self.jieshaoLabel.image = [UIImage imageNamed:@"1创建角色_5yao"];
            break;
        default:
            break;
    }
}
- (IBAction)confirmclick:(id)sender
{
    P *p =  nil;
    if (self.maleb.selected)
    {
      p = [[CDM sharedInstance]setupP][0];
    }else{
        p =  [[CDM sharedInstance]setupP][1];
    }
    p.index = self.kuangkuangCofirmB.tag;
    saveCoreDataContext;
    

    
    UIStoryboard *sb =  [UIStoryboard storyboardWithName:@"Main" bundle:nil];
   UIViewController *vc =  [sb instantiateViewControllerWithIdentifier:@"NZ_PartnerVC"];
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:vc animated:false completion:nil];
    
}

@end
