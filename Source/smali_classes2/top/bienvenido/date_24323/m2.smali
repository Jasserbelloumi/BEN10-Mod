.class public final Ltop/bienvenido/date_24323/m2;
.super Ltop/bienvenido/date_24323/s2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final synthetic 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/n2;

.field public final synthetic 要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltop/bienvenido/date_24323/n2;)V
    .locals 0

    iput-object p1, p0, Ltop/bienvenido/date_24323/m2;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    iput-object p2, p0, Ltop/bienvenido/date_24323/m2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/n2;

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/s2;-><init>()V

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ltop/bienvenido/date_24323/m2;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/Object;)Ltop/bienvenido/date_24323/s2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Ltop/bienvenido/date_24323/m2;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/Object;)Ltop/bienvenido/date_24323/s2;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1, p2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final 要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/Object;)Ltop/bienvenido/date_24323/s2;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    :try_start_0
    iget-object v1, p0, Ltop/bienvenido/date_24323/m2;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3
    :cond_1
    const-class v2, Ljava/lang/Object;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 4
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_2
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_3

    return-object v0

    .line 9
    :cond_3
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    .line 12
    :goto_2
    new-instance p1, Ltop/bienvenido/date_24323/p2;

    invoke-direct {p1, v2}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 13
    :cond_5
    sget-object p1, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 14
    invoke-virtual {p1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    .line 17
    new-instance p1, Ltop/bienvenido/date_24323/q2;

    invoke-direct {p1, v1, v2}, Ltop/bienvenido/date_24323/q2;-><init>(J)V

    .line 18
    :goto_3
    iget-object v1, p0, Ltop/bienvenido/date_24323/m2;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/n2;

    .line 19
    iput-object p1, v1, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    return-object v0
.end method
