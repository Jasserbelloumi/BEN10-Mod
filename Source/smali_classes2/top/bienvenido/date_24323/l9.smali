.class public final Ltop/bienvenido/date_24323/l9;
.super Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/l9;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/l9;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/l9;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/l9;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/l9;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;-><init>()V

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()V
    .locals 5

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/q4;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/b2;

    .line 2
    iput-object v0, p0, Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/a2;

    .line 3
    nop

    .line 4
    sget-boolean v1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v2

    goto :goto_0

    .line 5
    :cond_0
    const-string v3, "android.os.storage.IMountService$Stub"

    .line 6
    :goto_0
    sget-object v4, Ltop/bienvenido/date_24323/t8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    const-string v4, "mount"

    invoke-static {v4, v0, v3}, Ltop/bienvenido/date_24323/t8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ltop/bienvenido/date_24323/a2;Ljava/lang/String;)Ltop/bienvenido/date_24323/a1;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 7
    const-class v1, Landroid/os/storage/StorageManager;

    .line 8
    const-string v4, "sStorageManager"

    .line 9
    :try_start_0
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 16
    :goto_2
    new-instance v3, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v3, v1}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_3

    .line 17
    :cond_3
    sget-object v3, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 18
    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    .line 21
    new-instance v1, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v1, v3, v4}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_3

    :catch_0
    move-exception v1

    .line 22
    sget-object v3, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    :goto_3
    nop

    .line 23
    invoke-virtual {v3, v2, v2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7

    .line 24
    :cond_4
    sget-boolean v1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Z

    if-eqz v1, :cond_7

    .line 25
    const-class v1, Landroid/os/storage/StorageManager;

    .line 26
    const-string v4, "sMountService"

    .line 27
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 31
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    :goto_4
    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 34
    :goto_5
    new-instance v3, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v3, v1}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_6

    .line 35
    :cond_6
    sget-object v3, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 36
    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    .line 39
    new-instance v1, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v1, v3, v4}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v1

    goto :goto_6

    :catch_1
    move-exception v1

    .line 40
    sget-object v3, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    :goto_6
    nop

    .line 41
    invoke-virtual {v3, v2, v2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    :cond_7
    new-instance v1, Ltop/bienvenido/date_24323/p4;

    const-string v2, "mounted"

    invoke-direct {v1, v2}, Ltop/bienvenido/date_24323/p4;-><init>(Ljava/lang/Object;)V

    .line 43
    iget-object v2, v0, Ltop/bienvenido/date_24323/a1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    const v3, -0x5af66b9f

    .line 44
    invoke-virtual {v2, v3, v1}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ILjava/lang/Object;)Z

    .line 45
    :goto_7
    new-instance v1, Ltop/bienvenido/date_24323/v4;

    .line 46
    const-class v2, Landroid/content/res/ObbInfo;

    .line 47
    new-instance v3, Ltop/bienvenido/date_24323/j9;

    sget-object v4, Ltop/bienvenido/date_24323/k9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/k9;

    invoke-direct {v3, v4}, Ltop/bienvenido/date_24323/j9;-><init>(Ljava/lang/Object;)V

    .line 48
    invoke-direct {v1, v2, v3}, Ltop/bienvenido/date_24323/v4;-><init>(Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    .line 49
    iget-object v2, v0, Ltop/bienvenido/date_24323/a1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    const v3, -0x76129ea

    .line 50
    invoke-virtual {v2, v3, v1}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ILjava/lang/Object;)Z

    .line 51
    sget-object v1, Ltop/bienvenido/date_24323/w9;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/w9;

    .line 52
    iget-object v0, v0, Ltop/bienvenido/date_24323/a1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    const v2, -0x6e4d5932

    .line 53
    invoke-virtual {v0, v2, v1}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(ILjava/lang/Object;)Z

    .line 54
    sget-boolean v0, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->肏你妈小屄崽子你真没见过黑社会哈肏你妈的敢不敢跟我比划比划肏你妈肏你妈敢不敢比划什么叫做黑手肏你妈的你:Z

    if-eqz v0, :cond_8

    .line 55
    const-string v0, "android.common.HwFrameworkFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    const-string v1, "sFactory"

    invoke-static {v0, v1}, Ltop/bienvenido/date_24323/n;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 60
    const-string v1, "obj"

    invoke-static {v0, v1}, Ltop/bienvenido/date_24323/n;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;Ljava/lang/String;)Z

    :cond_8
    :goto_8
    return-void
.end method
