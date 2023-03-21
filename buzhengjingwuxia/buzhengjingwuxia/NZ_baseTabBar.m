//

#import "NZ_baseTabBar.h"
#import "CDM.h"
@interface NZ_baseTabBar ()
@property (nonatomic,strong)UIButton *fisthbutton;

@property (nonatomic,assign)CGFloat kBtnW;
@property (nonatomic,assign)CGFloat kBtnH;
@end

@implementation NZ_baseTabBar

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

 - (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    return  [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
}

- (void)initWithImages:(NSArray *)dictarray vc:(NSArray *)vc;{
   
        
        
        self.dictarrayArray = [dictarray copy];
        self.vcarray = [vc copy];
        self.kBtnW = X(200);
        self.kBtnH = X(100);
        [self setupSubVC];
        [self addItems];
     

}

- (void)setupSubVC
{
    self.tabBar.backgroundColor = [UIColor clearColor];

    self.viewControllers  = self.vcarray;
}

- (void)addItems
{
   
    self.itemButtons = [[NSMutableArray alloc]init];
    
    for (int i = 0;i<self.itemButtons.count;i++)
    {
        UIButton *btn =  [[UIButton alloc]initWithFrame:CGRectMake(i *_kBtnW, 0, _kBtnW, _kBtnH)];
        if (i == 0){
            btn.selected = YES;
            _fisthbutton = btn;
        }
        NSDictionary *dict = self.dictarrayArray[i];
        [btn setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@""] forState:UIControlStateSelected];
        [btn addTarget:self action:@selector(clickbtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    
}

- (void)clickbtnClick:(UIButton *)sender
{
    
}
@end
