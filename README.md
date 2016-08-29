# startMovie
APP启动视屏  APP第一次启动播放视屏欢迎

# PhotoShoot
![image](https://github.com/Zws-China/startMovie/blob/master/StartMovie/StartMovie/111.gif)



# How To Use

```ruby

在AppDelegate.h中#import "WSMovieController.h"

BOOL isFirstLogin = [[[NSUserDefaults standardUserDefaults] objectForKey:@"isFirstLogin"] boolValue];
if (!isFirstLogin) {
    //是第一次
    WSMovieController *wsCtrl = [[WSMovieController alloc]init];
    wsCtrl.movieURL = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"qidong"ofType:@"mp4"]];
    self.window.rootViewController = wsCtrl;
    [[NSUserDefaults standardUserDefaults] setObject:@"YES" forKey:@"isFirstLogin"];
}else{
    //不是首次启动
    ViewController *viewCtrl = [[ViewController alloc]init];
    self.window.rootViewController = viewCtrl;
}


```




