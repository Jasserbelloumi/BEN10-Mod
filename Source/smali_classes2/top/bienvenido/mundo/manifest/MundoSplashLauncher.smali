.class public final Ltop/bienvenido/mundo/manifest/MundoSplashLauncher;
.super Landroid/app/Activity;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Ltop/bienvenido/mundo/manifest/MundoSplashLauncher;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 175
    sget-object v0, Ltop/bienvenido/date_24323/h6;->要不要把你妈卵子扣出来给你做寿司吃:Ltop/bienvenido/date_24323/h6;

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    const-string p1, "0"

    .line 180
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 181
    invoke-static {v0, p0, p1}, Ltop/bienvenido/date_24323/h6;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltop/bienvenido/mundo/manifest/MundoSplashLauncher;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;)V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Ltop/bienvenido/mundo/manifest/MundoSplashLauncher;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

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

.method public final 狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(Landroid/content/Intent;)V
    .locals 10

    .line 1
    :try_start_0
    const-string v0, "mundo_base_string"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 5
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 8
    :cond_0
    sget-object v1, Ltop/bienvenido/date_24323/w5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    sget-object v1, Ltop/bienvenido/date_24323/w5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Ltop/bienvenido/date_24323/g9;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ltop/bienvenido/date_24323/g9;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltop/bienvenido/date_24323/v5;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    .line 10
    :try_start_2
    sget-boolean v2, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Z

    .line 11
    sget-boolean v2, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->你不知道你妈张个大嘴劈个小腿下面还流着咸盐水吗弟弟:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 13
    :cond_1
    iget-object v2, v1, Ltop/bienvenido/date_24323/v5;->要不要把你妈卵子扣出来给你做寿司吃:Lkotlin/Triple;

    if-nez v2, :cond_2

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 15
    iget-object v1, v1, Ltop/bienvenido/date_24323/v5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/graphics/drawable/Drawable;

    .line 16
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_2
    const/16 v2, 0x14

    int-to-float v2, v2

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 18
    invoke-static {v3, v2, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 19
    iget-object v3, v1, Ltop/bienvenido/date_24323/v5;->要不要把你妈卵子扣出来给你做寿司吃:Lkotlin/Triple;

    .line 20
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {v3}, Lkotlin/Triple;->getSecond()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v3}, Lkotlin/Triple;->getThird()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 29
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    mul-int/lit8 v8, v2, 0xe

    .line 33
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0x11

    .line 37
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 38
    invoke-virtual {v7, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v1, v1, Ltop/bienvenido/date_24323/v5;->狂犬疫苗忘了给你妈打不好意思让它到处咬人才会生出你这种上缺脑子下缺逼火葬场都不收的烂骨灰:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    instance-of v8, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v8, :cond_3

    .line 42
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_3
    if-eqz v6, :cond_5

    .line 44
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v5, :cond_4

    :goto_1
    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v1, v8, :cond_5

    goto :goto_1

    .line 45
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    :cond_5
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {v3}, Lkotlin/Triple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 72
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    mul-int/lit8 v7, v2, 0xa

    mul-int/lit8 v8, v2, 0x4

    .line 76
    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x51

    .line 80
    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    mul-int/lit8 v2, v2, 0x3

    .line 81
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 82
    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget-boolean v1, Ltop/bienvenido/date_24323/父母们悬挂树木从尸体中养猪让灵车漂浮跳过坟墓螺旋爆炸砂纸打磨棺材冲浪火烧用尸体泡茶将米与骨灰混合在祖坟前唱歌以及埋葬聚会葬礼庆典骨髓汤浇脑花棺材开花;->我要送你妈一朵花哈哈哈开玩笑的我哪来的花你哪来的妈:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v3, v1}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    .line 92
    :cond_6
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    if-eqz v5, :cond_8

    .line 110
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_3

    .line 111
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :goto_3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 169
    :cond_9
    :goto_4
    const-string v1, "mundo_base_bundle"

    .line 170
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ltop/bienvenido/mundo/manifest/MundoSplashLauncher$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Ltop/bienvenido/mundo/manifest/MundoSplashLauncher$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 174
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 112
    :catch_1
    move-exception p1

    .line 174
    :goto_6
    return-void
.end method
