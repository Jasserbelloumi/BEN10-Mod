.class public Ltop/bienvenido/date_24323/k1;
.super Ltop/bienvenido/date_24323/a2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/a2;-><init>()V

    return-void
.end method


# virtual methods
.method public 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-boolean v0, Ltop/bienvenido/date_24323/c4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Ltop/bienvenido/date_24323/c4;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    array-length v2, p3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 5
    aget-object v3, p3, v1

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v3, Ltop/bienvenido/date_24323/z2;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    .line 7
    aput-object v3, p3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
