.class public final Lnet_62v/external/MetaPackageManager;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acquireObtainAppSplash()V
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃(I)V

    return-void
.end method

.method public static acquireReleaseAppSplash()V
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃(I)V

    return-void
.end method

.method public static cleanPackageDataAsUser(Ljava/lang/String;I)V
    .locals 1

    .line 2
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {v0, p0, p1}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static cleanPackageDataAsUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0, p1}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createEmptyUser(Ljava/lang/String;I)V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {p0}, Lnet_62v/external/MetaPackageManager;->getInstalledUserId(Ljava/lang/String;)[I

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lnet_62v/external/MetaPackageManager;->createEmptyUser(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    :cond_0
    return-void
.end method

.method public static createEmptyUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0, p1}, Ltop/bienvenido/date_24323/m0;->虽然不是同一时间但是是同一个你妈你爹我再次挑战一把吃阴第(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static createEmptyUserById(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lnet_62v/external/MetaPackageManager;->getInstalledUserId(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-ltz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lnet_62v/external/MetaPackageManager;->createEmptyUser(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static deleteAllAppCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static deleteAppCache(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static fixInternalAppAndReinstall(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInnerAppPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0, p1}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInstalledApplicationInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltop/bienvenido/date_24323/m0;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledInnerApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledPackageInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledUserId(Ljava/lang/String;)[I
    .locals 9

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p0}, Lnet_62v/external/MetaPackageManager;->getInstalledUserName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    if-eqz p0, :cond_4

    .line 5
    array-length v3, p0

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p0, v4

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    :cond_0
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_2

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    const/16 v8, 0x39

    if-le v7, v8, :cond_0

    :cond_1
    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    if-eqz v6, :cond_3

    .line 8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array v3, p0, [I

    move v4, v0

    .line 14
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 16
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-nez p0, :cond_6

    .line 20
    new-array p0, v2, [I

    aput v0, p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_6
    return-object v3

    .line 8
    :catch_0
    move-exception p0

    .line 20
    nop

    .line 26
    new-array p0, v0, [I

    return-object p0
.end method

.method public static getInstalledUserName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0}, Ltop/bienvenido/date_24323/m0;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, "android.intent.category.INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    sget-object v2, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    .line 5
    invoke-virtual {v2}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltop/bienvenido/date_24323/m0;

    .line 6
    const/4 v4, 0x0

    const/high16 v5, 0x20000

    invoke-interface {v3, v0, v4, v5}, Ltop/bienvenido/date_24323/m0;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 11
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v2}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltop/bienvenido/date_24323/m0;

    .line 14
    invoke-interface {p0, v0, v4, v5}, Ltop/bienvenido/date_24323/m0;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    return-object v4

    :cond_1
    const/high16 p0, 0x10000000

    .line 19
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    iget-object p0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getLaunchIntentForPackage(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-static {p0}, Lnet_62v/external/MetaPackageManager;->resolveIntentActivity(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5
    const-string p0, "android.intent.action.MAIN"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getReceiverInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0}, Ltop/bienvenido/date_24323/m0;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static isAppInstalledAsInternal(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0}, Ltop/bienvenido/date_24323/m0;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isAppSplashExists(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0}, Ltop/bienvenido/date_24323/m0;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isInnerAppInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0}, Ltop/bienvenido/date_24323/m0;->用搅拌机把你妈的阴扩一下(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    .line 2
    invoke-interface {v0, p0, p1, p2}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static queryIntentProviders(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    .line 2
    invoke-interface {v0, p0, p1, p2}, Ltop/bienvenido/date_24323/m0;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    .line 2
    invoke-interface {v0, p0, p1, p2}, Ltop/bienvenido/date_24323/m0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    .line 2
    invoke-interface {v0, p0, p1, p2}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static reloadAllApps()V
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃(Ljava/lang/String;)Z

    return-void
.end method

.method public static resolveActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1

    .line 7
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0, p0}, Ltop/bienvenido/date_24323/m0;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public static resolveActivityInfo(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    const/high16 v2, 0x20000

    invoke-interface {v0, p0, v1, v2}, Ltop/bienvenido/date_24323/m0;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static resolveIntentActivity(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Ltop/bienvenido/date_24323/m0;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public static uninstallAppFully(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Ltop/bienvenido/date_24323/m0;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static waitForBackgroundScanner()V
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/a5;->你妈今晚去偷电线杆子你爸去找电箱之后结合疯狂爆电让后在拿电线杆子ziwei完事还要去加油站在自己piyan和逼里灌油拿着打火机狂撩自己把自己变成内燃机:Ltop/bienvenido/date_24323/a5;

    invoke-virtual {v0}, Ltop/bienvenido/date_24323/g4;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltop/bienvenido/date_24323/m0;

    invoke-interface {v0}, Ltop/bienvenido/date_24323/m0;->你妈在万人广场卖逼你废物爹不仅不阻止反而跟你妈一起跟天下人民普天同庆你每晚草你妈生龙活虎你妈疼的呲牙咧嘴你妈逼上的阴齿都满足不了你这杂种的狂野性需求啊草你妈()V

    return-void
.end method
