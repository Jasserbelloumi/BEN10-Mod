.class public abstract Ltop/bienvenido/date_24323/z2;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:I

.field public static final 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:I

.field public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/o1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ltop/bienvenido/date_24323/s5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()V

    .line 5
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    :cond_0
    sput-object v0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltop/bienvenido/date_24323/z2;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    .line 19
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Ltop/bienvenido/date_24323/z2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:I

    const v1, 0x186a0

    .line 20
    div-int/2addr v0, v1

    sput v0, Ltop/bienvenido/date_24323/z2;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:I

    return-void
.end method

.method public static 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method
