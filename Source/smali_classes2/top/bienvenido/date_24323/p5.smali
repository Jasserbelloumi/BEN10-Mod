.class public final Ltop/bienvenido/date_24323/p5;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

.field public final synthetic 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/o5;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ltop/bienvenido/date_24323/o5;)V
    .locals 0

    iput-object p1, p0, Ltop/bienvenido/date_24323/p5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    iput-object p2, p0, Ltop/bienvenido/date_24323/p5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/o5;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;Ltop/bienvenido/date_24323/p5;Ltop/bienvenido/date_24323/o5;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    invoke-static {p2}, Ltop/bienvenido/date_24323/q5;->要不要把你妈卵子扣出来给你做寿司吃(Ltop/bienvenido/date_24323/o5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Ltop/bienvenido/date_24323/p5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    iget-object v1, p0, Ltop/bienvenido/date_24323/p5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/o5;

    new-instance v2, Ltop/bienvenido/date_24323/p5$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0, v1}, Ltop/bienvenido/date_24323/p5$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;Ltop/bienvenido/date_24323/p5;Ltop/bienvenido/date_24323/o5;)V

    .line 2
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
