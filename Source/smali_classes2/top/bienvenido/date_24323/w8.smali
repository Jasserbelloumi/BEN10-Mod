.class public final Ltop/bienvenido/date_24323/w8;
.super Ltop/bienvenido/date_24323/我是月黑风高偷你妈棺材钱的爹;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# static fields
.field public static final 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/w8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ltop/bienvenido/date_24323/w8;

    invoke-direct {v0}, Ltop/bienvenido/date_24323/w8;-><init>()V

    sput-object v0, Ltop/bienvenido/date_24323/w8;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/w8;

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
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    sget-object v1, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4
    const-string v2, "debug_app"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 9
    const-class v2, Landroid/provider/Settings$Global;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v2, "font_scale"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    const-class v2, Landroid/provider/Settings$System;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v2, "accessibility_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    const-class v2, Landroid/provider/Settings$Secure;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-boolean v2, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈:Z

    const-string v4, "sNameValueCache"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    .line 23
    :try_start_0
    const-class v2, Landroid/provider/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "$Config"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-boolean v8, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->用搅拌机把你妈的阴扩一下:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v9, "mimi"

    if-eqz v8, :cond_4

    .line 29
    nop

    .line 30
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 34
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 37
    :goto_1
    new-instance v8, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v8, v2}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_2

    .line 38
    :cond_1
    sget-object v8, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 39
    invoke-virtual {v8, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v10

    .line 42
    new-instance v8, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v8, v10, v11}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 43
    :try_start_2
    sget-object v8, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    :goto_2
    nop

    .line 44
    invoke-virtual {v8, v5}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 45
    const-string v8, "getStringForUser"

    .line 49
    const/4 v10, 0x3

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Landroid/content/ContentResolver;

    aput-object v12, v11, v3

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v7

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v6

    .line 50
    sget v12, Ltop/bienvenido/date_24323/z2;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:I

    .line 51
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v3

    aput-object v9, v10, v7

    aput-object v12, v10, v6

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 53
    :cond_2
    const-class v9, Ljava/lang/Object;

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v9, :cond_3

    .line 54
    :try_start_3
    invoke-virtual {v1, v8, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 55
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v9

    .line 56
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_3
    move-object v9, v5

    :goto_3
    if-eqz v9, :cond_5

    .line 57
    invoke-virtual {v9, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 58
    :cond_4
    const-string v8, "getString"

    .line 61
    new-array v10, v6, [Ljava/lang/Class;

    const-class v11, Landroid/content/ContentResolver;

    aput-object v11, v10, v3

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 62
    :try_start_5
    invoke-virtual {v2, v8, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 64
    new-instance v8, Ltop/bienvenido/date_24323/o2;

    invoke-direct {v8, v2}, Ltop/bienvenido/date_24323/o2;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    .line 75
    :try_start_6
    sget-object v8, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    :goto_4
    nop

    .line 76
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object v9, v2, v7

    .line 77
    invoke-virtual {v8, v5, v2}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 57
    :goto_5
    goto :goto_6

    .line 56
    :catch_3
    move-exception v1

    .line 78
    :cond_5
    :goto_6
    new-instance v1, Ltop/bienvenido/date_24323/n2;

    const-string v2, "mContentProvider"

    invoke-direct {v1, v2}, Ltop/bienvenido/date_24323/n2;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance v2, Ltop/bienvenido/date_24323/v8;

    invoke-direct {v2}, Ltop/bienvenido/date_24323/v8;-><init>()V

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    .line 109
    :try_start_7
    sget-boolean v9, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Z

    if-eqz v9, :cond_7

    .line 110
    const-string v9, "sProviderHolder"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :cond_7
    move-object v9, v4

    .line 111
    :goto_8
    :try_start_8
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 114
    invoke-virtual {v9, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 115
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_8

    :goto_9
    goto :goto_a

    :cond_8
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_9

    .line 118
    :goto_a
    new-instance v10, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v10, v9}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_b

    .line 119
    :cond_9
    sget-object v10, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 120
    invoke-virtual {v10, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    .line 123
    new-instance v11, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v11, v9, v10}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move-object v10, v11

    goto :goto_b

    :catch_4
    move-exception v9

    .line 124
    :try_start_9
    sget-object v10, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    :goto_b
    nop

    .line 125
    invoke-virtual {v10, v5}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 126
    sget-boolean v10, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->老子实在看不过你妈的脑残狗逼样子直接把你妈用5毛钱卖到埃塞俄比亚国家大妓院请那些非洲部落小喽啰来享受你妈逼的黑阴逼:Z

    if-eqz v10, :cond_a

    .line 127
    invoke-virtual {v2, v8}, Ltop/bienvenido/date_24323/v8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Class;)V

    .line 131
    :cond_a
    sget-object v8, Ltop/bienvenido/date_24323/u;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/u;

    .line 132
    iget-object v8, v1, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    invoke-virtual {v8, v9}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_7

    .line 133
    :cond_b
    invoke-static {v8}, Ltop/bienvenido/date_24323/u;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 134
    iget-object v10, v1, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    invoke-virtual {v10, v9, v8}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception v8

    goto :goto_7

    .line 135
    :cond_c
    sget-object v0, Ltop/bienvenido/date_24323/b6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/b6;

    .line 136
    sget-object v1, Ltop/bienvenido/date_24323/b6;->要是有癫痫可以不用讲话也最好少玩游戏病那么重了还熬夜打排位是准备早点去见阎王爷和您亲妈野妈欢聚一堂您这操作技术我也实在感佩我着实担心你爸外遇不够多几场排位下来您不计其数的野妈也死得够呛:Ljava/util/Map;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    sget-object v0, Ltop/bienvenido/date_24323/b6;->我一拳把你个造谣智障砸进你婊子妈屁眼子里幻化成屎你妈这吃屎的废物还以为你爹我学会了复制神功复制出一坨屎给她吃呢:Ljava/lang/reflect/Constructor;

    .line 139
    sget v2, Ltop/bienvenido/date_24323/z2;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:I

    .line 140
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "settings"

    aput-object v5, v4, v3

    aput-object v2, v4, v7

    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-class v0, Landroid/app/ActivityThread;

    .line 147
    const-string v1, "mProviderRefCountMap"

    .line 148
    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d

    :goto_c
    goto :goto_d

    :cond_d
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_c

    .line 155
    :goto_d
    new-instance v1, Ltop/bienvenido/date_24323/p2;

    invoke-direct {v1, v0}, Ltop/bienvenido/date_24323/p2;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_e

    .line 156
    :cond_e
    sget-object v1, Ltop/bienvenido/date_24323/t9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Lsun/misc/Unsafe;

    .line 157
    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    .line 160
    new-instance v2, Ltop/bienvenido/date_24323/q2;

    invoke-direct {v2, v0, v1}, Ltop/bienvenido/date_24323/q2;-><init>(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    move-object v1, v2

    goto :goto_e

    :catch_6
    move-exception v0

    .line 161
    sget-object v1, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/s2;

    .line 162
    :goto_e
    sget-object v0, Ltop/bienvenido/date_24323/b6;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Landroid/app/ActivityThread;

    .line 163
    invoke-virtual {v1, v0}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 167
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
