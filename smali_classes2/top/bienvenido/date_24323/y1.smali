.class public final Ltop/bienvenido/date_24323/y1;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"

# interfaces
.implements Ltop/bienvenido/date_24323/i0;


# instance fields
.field public final 你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ltop/bienvenido/date_24323/u1;

.field public final 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/x1;

.field public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/r1;

.field public final 要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/r1;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ltop/bienvenido/date_24323/r1;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Ltop/bienvenido/date_24323/r1;-><init>(Ltop/bienvenido/date_24323/y1;Ljava/util/ArrayList;)V

    iput-object v0, p0, Ltop/bienvenido/date_24323/y1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/r1;

    .line 3
    new-instance v0, Ltop/bienvenido/date_24323/r1;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Ltop/bienvenido/date_24323/r1;-><init>(Ltop/bienvenido/date_24323/y1;Ljava/util/ArrayList;)V

    iput-object v0, p0, Ltop/bienvenido/date_24323/y1;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/r1;

    .line 4
    new-instance v0, Ltop/bienvenido/date_24323/x1;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Ltop/bienvenido/date_24323/x1;-><init>(Ltop/bienvenido/date_24323/y1;Ljava/util/ArrayList;)V

    iput-object v0, p0, Ltop/bienvenido/date_24323/y1;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/x1;

    .line 5
    new-instance v0, Ltop/bienvenido/date_24323/u1;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p1}, Ltop/bienvenido/date_24323/u1;-><init>(Ltop/bienvenido/date_24323/y1;Ljava/util/ArrayList;)V

    iput-object v0, p0, Ltop/bienvenido/date_24323/y1;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ltop/bienvenido/date_24323/u1;

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/date_24323/y1;Landroid/content/pm/ComponentInfo;Lkotlin/jvm/functions/Function2;Landroid/content/pm/PackageParser$IntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 0

    .line 3
    iget-boolean p0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-nez p0, :cond_1

    and-int/lit16 p0, p4, 0x200

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    :goto_0
    new-instance p0, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Landroid/content/pm/ResolveInfo;-><init>()V

    and-int/lit8 p4, p4, 0x40

    if-eqz p4, :cond_2

    .line 6
    iput-object p3, p0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 8
    :cond_2
    iput p5, p0, Landroid/content/pm/ResolveInfo;->match:I

    .line 9
    iget-object p4, p3, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    move-result p4

    iput p4, p0, Landroid/content/pm/ResolveInfo;->priority:I

    .line 11
    iget p4, p3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    iput p4, p0, Landroid/content/pm/ResolveInfo;->icon:I

    .line 16
    iget p4, p3, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    iput p4, p0, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 17
    iget-boolean p3, p3, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    iput-boolean p3, p0, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 18
    invoke-interface {p2, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final 你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/y1;->你爹我一顿暴打揍的你瞎妈的子宫打成稀巴烂浆糊然后把你蠢妈的肠子都拉出来做成美味可口的香肠大发慈悲喂给路边的那些流浪汉吃:Ltop/bienvenido/date_24323/u1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x10000

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2, v1, p3}, Ltop/bienvenido/date_24323/v0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final 我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/y1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x10000

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2, v1, p3}, Ltop/bienvenido/date_24323/v0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/y1;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x10000

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2, v1, p3}, Ltop/bienvenido/date_24323/v0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public final 要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Ltop/bienvenido/date_24323/y1;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Ltop/bienvenido/date_24323/x1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, 0x10000

    and-int/2addr v1, p3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0, p1, p2, v1, p3}, Ltop/bienvenido/date_24323/v0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
