.class public final Ltop/bienvenido/date_24323/m;
.super Ltop/bienvenido/date_24323/a2;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# instance fields
.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/h8;


# direct methods
.method public constructor <init>(Ltop/bienvenido/date_24323/h8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltop/bienvenido/date_24323/a2;-><init>()V

    .line 2
    iput-object p1, p0, Ltop/bienvenido/date_24323/m;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/h8;

    return-void
.end method


# virtual methods
.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/m;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/h8;

    invoke-virtual {v0, p1, p2, p3}, Ltop/bienvenido/date_24323/u6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    :try_start_0
    instance-of p2, p1, Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 8
    sget-object p3, Ltop/bienvenido/date_24323/c4;->要不要把你妈卵子扣出来给你做寿司吃:Ljava/lang/String;

    .line 9
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 10
    sget-boolean p2, Ltop/bienvenido/date_24323/c4;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟:Z

    if-nez p2, :cond_6

    .line 11
    sget-object p2, Ltop/bienvenido/date_24323/x8;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/n2;

    .line 12
    iget-object p2, p2, Ltop/bienvenido/date_24323/n2;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/s2;

    .line 13
    invoke-virtual {p2, p1}, Ltop/bienvenido/date_24323/s2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 14
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 17
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/SharedLibraryInfo;

    .line 21
    const-string v0, "com.huawei.easygo"

    invoke-virtual {p3}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 23
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 27
    :cond_1
    move-object p2, p1

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz p2, :cond_5

    .line 28
    array-length p3, p2

    if-nez p3, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    new-instance p3, Ljava/util/ArrayList;

    array-length v0, p2

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_4

    .line 33
    aget-object v3, p2, v2

    .line 34
    const-string v4, "HwEasyGo.apk"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v4, v1, v5, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 35
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    :cond_4
    array-length p2, p2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p2, v0, :cond_6

    .line 39
    move-object p2, p1

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 40
    sget-object v0, Ltop/bienvenido/date_24323/g;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:[Ljava/lang/String;

    .line 41
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    iput-object p3, p2, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    return-object p1

    .line 23
    :catch_0
    move-exception p2

    .line 41
    :cond_6
    return-object p1
.end method
