.class public final Ltop/bienvenido/date_24323/d4;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

.field public final synthetic 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/g4;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Ltop/bienvenido/date_24323/g4;)V
    .locals 0

    iput-object p1, p0, Ltop/bienvenido/date_24323/d4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    iput-object p2, p0, Ltop/bienvenido/date_24323/d4;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/g4;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/d4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5
    iget-object v0, p0, Ltop/bienvenido/date_24323/d4;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/g4;

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Ltop/bienvenido/date_24323/g4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
