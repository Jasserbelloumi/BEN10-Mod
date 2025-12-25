.class public final Ltop/bienvenido/date_24323/o4;
.super Ltop/bienvenido/date_24323/a2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/lang/Object;

.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;

.field public final 要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ltop/bienvenido/date_24323/a2;Ljava/lang/Class;Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/a2;-><init>()V

    .line 2
    iput-object p1, p0, Ltop/bienvenido/date_24323/o4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;

    .line 3
    iput-object p2, p0, Ltop/bienvenido/date_24323/o4;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Ltop/bienvenido/date_24323/o4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Ltop/bienvenido/date_24323/o4;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/Class;

    .line 2
    iget-object v1, p0, Ltop/bienvenido/date_24323/o4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    array-length v3, p3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 5
    aget-object v4, p3, v2

    invoke-virtual {v0, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    aput-object v1, p3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    :cond_1
    :goto_1
    iget-object v0, p0, Ltop/bienvenido/date_24323/o4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;

    invoke-virtual {v0, p1, p2, p3}, Ltop/bienvenido/date_24323/a2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
