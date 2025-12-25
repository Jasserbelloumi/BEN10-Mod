.class public final Ltop/bienvenido/date_24323/q6;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

.field public final 要不要把你妈卵子扣出来给你做寿司吃:Z


# direct methods
.method public constructor <init>(Ltop/bienvenido/date_24323/r6;Landroid/os/IBinder;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltop/bienvenido/date_24323/q6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ltop/bienvenido/date_24323/q6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    .line 3
    iput-boolean p3, p0, Ltop/bienvenido/date_24323/q6;->要不要把你妈卵子扣出来给你做寿司吃:Z

    const/4 p1, 0x0

    .line 5
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p0}, Ltop/bienvenido/date_24323/q6;->binderDied()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/q6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/r6;

    iget-object v1, p0, Ltop/bienvenido/date_24323/q6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ltop/bienvenido/date_24323/r6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method
