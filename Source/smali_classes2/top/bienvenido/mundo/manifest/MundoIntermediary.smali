.class public final Ltop/bienvenido/mundo/manifest/MundoIntermediary;
.super Landroid/app/Activity;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltop/bienvenido/mundo/manifest/MundoIntermediary;",
        "Landroid/app/Activity;",
        "<init>",
        "()V",
        "mundo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ltop/bienvenido/date_24323/i9;Ltop/bienvenido/mundo/manifest/MundoIntermediary;Landroid/content/Intent;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)Lkotlin/Unit;
    .locals 3

    .line 160
    const/high16 v0, 0x20000

    invoke-virtual {p5, p0, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/ResolveInfo;

    .line 166
    iget-object p5, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 167
    new-instance v0, Landroid/content/ComponentName;

    .line 168
    iget-object v1, p5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 169
    iget-object v2, p5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 170
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    .line 172
    iget-object v1, p1, Ltop/bienvenido/date_24323/i9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:[I

    .line 173
    iget v2, p1, Ltop/bienvenido/date_24323/i9;->要不要把你妈卵子扣出来给你做寿司吃:I

    invoke-static {v1, v2, v0}, Ltop/bienvenido/date_24323/你爹菊花被肛烂了生出你这么个辣鸡玩意儿;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰([III)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fbconnect"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {p4, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/app/AlertDialog$Builder;)V
    .locals 0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/ArrayList;Ltop/bienvenido/mundo/manifest/MundoIntermediary;Landroid/content/Intent;Lkotlin/Pair;Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 6

    .line 179
    :try_start_0
    invoke-virtual {p0, p7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/content/pm/ActivityInfo;

    .line 182
    sget-object p0, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    iget-object p6, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p6}, Ltop/bienvenido/date_24323/n5;->用搅拌机把你妈的阴扩一下(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 183
    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v2, p0

    .line 184
    move-object v0, p1

    move-object v1, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 183
    :catch_0
    move-exception p0

    .line 196
    invoke-virtual {p1, p5}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/mundo/manifest/MundoIntermediary;Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1, p2}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/mundo/manifest/MundoIntermediary;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;)V
    .locals 0

    .line 198
    invoke-virtual {p0, p1}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ltop/bienvenido/mundo/manifest/MundoIntermediary;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 197
    invoke-virtual {p0, p1}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 4
    iget-object v0, p0, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p0, p1, v0}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    iget-object v0, p0, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 4
    iput-object v0, p0, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {p0, p1, v0}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public final onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    iget-object v1, p3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 3
    iget-object v2, p3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 7
    sget-object v0, Ltop/bienvenido/date_24323/h6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/h6;

    .line 10
    invoke-static {p4, p1}, Ltop/bienvenido/date_24323/x0;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p4

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2, p4, p3}, Ltop/bienvenido/date_24323/h6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_1
    const/high16 p2, 0x10000000

    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p3

    invoke-static {p3, p2}, Ltop/bienvenido/date_24323/n1;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(II)Z

    move-result p2

    if-nez p2, :cond_2

    const/high16 p2, 0x2000000

    .line 13
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    :cond_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {p0, p5}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 11
    :catch_0
    move-exception p1

    .line 16
    :goto_2
    return-void
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 13

    .line 18
    const-string v0, "fbconnect"

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, "0"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 21
    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 23
    nop

    .line 24
    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v1

    goto :goto_3

    .line 25
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 26
    :cond_1
    new-instance v4, Lkotlin/Pair;

    .line 27
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    if-nez v5, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 29
    :goto_0
    invoke-direct {v4, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v4

    goto :goto_2

    .line 28
    :catch_0
    move-exception v1

    .line 25
    :goto_1
    move-object v1, v3

    .line 29
    :goto_2
    if-nez v1, :cond_4

    .line 30
    :try_start_3
    invoke-virtual {p0, p2}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    .line 29
    :cond_4
    move-object v4, v1

    .line 33
    :goto_3
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/content/Intent;

    .line 34
    sget-object v1, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    .line 35
    const/4 v2, 0x0

    invoke-virtual {v1, v11, v3, v2}, Ltop/bienvenido/date_24323/n5;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 40
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v7, Ltop/bienvenido/date_24323/i9;

    const/16 v5, 0x8

    .line 42
    invoke-direct {v7, v5}, Ltop/bienvenido/date_24323/i9;-><init>(I)V

    .line 43
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 44
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 45
    new-instance v6, Landroid/content/ComponentName;

    .line 46
    iget-object v8, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 47
    iget-object v9, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 48
    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v6}, Landroid/content/ComponentName;->hashCode()I

    move-result v6

    .line 50
    invoke-virtual {v7, v6}, Ltop/bienvenido/date_24323/i9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(I)Z

    .line 51
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 57
    :cond_5
    sget-object v1, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/content/Context;

    new-instance v1, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda1;

    move-object v5, v1

    move-object v6, v11

    move-object v8, p0

    move-object v9, p1

    move-object v10, v12

    invoke-direct/range {v5 .. v10}, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda1;-><init>(Landroid/content/Intent;Ltop/bienvenido/date_24323/i9;Ltop/bienvenido/mundo/manifest/MundoIntermediary;Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-static {v1}, Ltop/bienvenido/date_24323/z2;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    .line 76
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 78
    invoke-virtual {p0, p2}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void

    .line 81
    :cond_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_9

    .line 83
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/content/pm/ActivityInfo;

    .line 84
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 86
    sget-object p1, Ltop/bienvenido/date_24323/h6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/h6;

    .line 87
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    .line 89
    iget-object v1, v8, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 90
    iget-object v2, v8, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 91
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    .line 95
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {p1, p2, v0}, Ltop/bienvenido/date_24323/h6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 106
    :cond_7
    sget-object v0, Ltop/bienvenido/date_24323/n5;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/n5;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltop/bienvenido/date_24323/n5;->用搅拌机把你妈的阴扩一下(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v7, v3

    goto :goto_5

    .line 108
    :cond_8
    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v7, v3

    .line 109
    :goto_5
    move-object v5, p0

    move-object v6, v11

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Ltop/bienvenido/mundo/manifest/MundoIntermediary;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_7

    .line 121
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    :goto_6
    if-ge v2, v1, :cond_a

    .line 123
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    .line 124
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 127
    :cond_a
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    move-object v8, v3

    check-cast v8, [Ljava/lang/CharSequence;

    .line 130
    new-instance v9, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda2;

    move-object v0, v9

    move-object v1, v12

    move-object v2, p0

    move-object v3, v11

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Ltop/bienvenido/mundo/manifest/MundoIntermediary;Landroid/content/Intent;Lkotlin/Pair;Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    const-string p1, "X"

    new-instance v0, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda3;-><init>(Ltop/bienvenido/mundo/manifest/MundoIntermediary;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v7, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 156
    new-instance p1, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda4;-><init>(Ltop/bienvenido/mundo/manifest/MundoIntermediary;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v7, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    new-instance p1, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda5;

    invoke-direct {p1, v7}, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda5;-><init>(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 51
    :catch_1
    move-exception p1

    .line 159
    :goto_7
    return-void
.end method

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 17
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final 要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    .line 1
    sget-object v0, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Ltop/bienvenido/mundo/manifest/MundoIntermediary$$ExternalSyntheticLambda0;-><init>(Ltop/bienvenido/mundo/manifest/MundoIntermediary;Landroid/content/Intent;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 2
    sget-object p1, Ltop/bienvenido/date_24323/你真是弱智得恰到好处正如你黑人野爹操你妈的时候你妈高潮叫得音律十足;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
