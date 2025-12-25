.class public final Lcom/blankj/molihuan/utilcode/util/BarUtils;
.super Ljava/lang/Object;
.source "BarUtils.java"


# static fields
.field private static final KEY_OFFSET:I = -0x7b

.field private static final TAG_OFFSET:Ljava/lang/String; = "TAG_OFFSET"

.field private static final TAG_STATUS_BAR:Ljava/lang/String; = "TAG_STATUS_BAR"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addMarginTopEqualStatusBarHeight(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 169
    :cond_0
    const-string v0, "TAG_OFFSET"

    invoke-virtual {p0, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 170
    const/16 v0, -0x7b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "haveSetOffset":Ljava/lang/Object;
    if-eqz v1, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 174
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 173
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 177
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 178
    return-void
.end method

.method private static addMarginTopEqualStatusBarHeight(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "TAG_OFFSET"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "withTag":Landroid/view/View;
    if-nez v0, :cond_1

    return-void

    .line 201
    :cond_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->addMarginTopEqualStatusBarHeight(Landroid/view/View;)V

    .line 202
    return-void
.end method

.method private static applyStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
    .param p2, "isDecor"    # Z

    .line 355
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I
    .param p2, "isDecor"    # Z

    .line 361
    if-eqz p2, :cond_0

    .line 362
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const v0, 0x1020002

    .line 363
    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_0
    nop

    .line 364
    .local v0, "parent":Landroid/view/ViewGroup;
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 365
    .local v1, "fakeStatusBarView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 367
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 369
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 371
    :cond_2
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->createStatusBarView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 372
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 374
    :goto_1
    return-object v1
.end method

.method private static createStatusBarView(Landroid/content/Context;I)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .line 397
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 398
    .local v0, "statusBarView":Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 399
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 398
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 401
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 402
    return-object v0
.end method

.method public static getActionBarHeight()I
    .locals 4

    .line 433
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 434
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget v1, v0, Landroid/util/TypedValue;->data:I

    .line 436
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 435
    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    return v1

    .line 439
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getNavBarColor(Landroid/app/Activity;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 628
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getNavBarColor(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method public static getNavBarColor(Landroid/view/Window;)I
    .locals 1
    .param p0, "window"    # Landroid/view/Window;

    .line 639
    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    return v0
.end method

.method public static getNavBarHeight()I
    .locals 4

    .line 486
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 487
    .local v0, "res":Landroid/content/res/Resources;
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 488
    .local v1, "resourceId":I
    if-eqz v1, :cond_0

    .line 489
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    .line 491
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static getResNameById(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .line 591
    :try_start_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "ignore":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method

.method public static getStatusBarHeight()I
    .locals 4

    .line 60
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "resourceId":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method private static hideStatusBarView(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->hideStatusBarView(Landroid/view/Window;)V

    .line 379
    return-void
.end method

.method private static hideStatusBarView(Landroid/view/Window;)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;

    .line 382
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 383
    .local v0, "decorView":Landroid/view/ViewGroup;
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, "fakeStatusBarView":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 385
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 386
    return-void
.end method

.method private static invokePanels(Ljava/lang/String;)V
    .locals 4
    .param p0, "methodName"    # Ljava/lang/String;

    .line 466
    :try_start_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 468
    .local v0, "service":Ljava/lang/Object;
    const-string v1, "android.app.StatusBarManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 469
    .local v1, "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 470
    .local v3, "expand":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    nop

    .end local v0    # "service":Ljava/lang/Object;
    .end local v1    # "statusBarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "expand":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static isNavBarLightMode(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 701
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->isNavBarLightMode(Landroid/view/Window;)Z

    move-result v0

    return v0
.end method

.method public static isNavBarLightMode(Landroid/view/Window;)Z
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 711
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 712
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 713
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 714
    .local v2, "vis":I
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 716
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "vis":I
    :cond_1
    return v1
.end method

.method public static isNavBarVisible(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 544
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->isNavBarVisible(Landroid/view/Window;)Z

    move-result v0

    return v0
.end method

.method public static isNavBarVisible(Landroid/view/Window;)Z
    .locals 8
    .param p0, "window"    # Landroid/view/Window;

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "isVisible":Z
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 557
    .local v1, "decorView":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 558
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 559
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 560
    .local v5, "id":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 561
    invoke-static {v5}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getResNameById(I)Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, "resourceEntryName":Ljava/lang/String;
    const-string v7, "navigationBarBackground"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 563
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 565
    goto :goto_1

    .line 557
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "id":I
    .end local v6    # "resourceEntryName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 569
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_5

    .line 573
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSamsung()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v2, v5, :cond_3

    .line 577
    :try_start_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "navigationbar_hide_bar_enabled"

    invoke-static {v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 578
    :catch_0
    move-exception v2

    .line 582
    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v2

    .line 583
    .local v2, "visibility":I
    and-int/lit8 v5, v2, 0x2

    if-nez v5, :cond_4

    move v3, v4

    :cond_4
    move v0, v3

    .line 586
    .end local v2    # "visibility":I
    :cond_5
    return v0
.end method

.method public static isStatusBarLightMode(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->isStatusBarLightMode(Landroid/view/Window;)Z

    move-result v0

    return v0
.end method

.method public static isStatusBarLightMode(Landroid/view/Window;)Z
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 155
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 157
    .local v2, "vis":I
    and-int/lit16 v3, v2, 0x2000

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 159
    .end local v0    # "decorView":Landroid/view/View;
    .end local v2    # "vis":I
    :cond_1
    return v1
.end method

.method public static isStatusBarVisible(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 103
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isSupportNavBar()Z
    .locals 8

    .line 648
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_3

    .line 649
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 650
    .local v0, "wm":Landroid/view/WindowManager;
    if-nez v0, :cond_0

    return v2

    .line 651
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 652
    .local v3, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 653
    .local v4, "size":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 654
    .local v5, "realSize":Landroid/graphics/Point;
    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 655
    invoke-virtual {v3, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 656
    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-ne v6, v7, :cond_2

    iget v6, v5, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 658
    .end local v0    # "wm":Landroid/view/WindowManager;
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "size":Landroid/graphics/Point;
    .end local v5    # "realSize":Landroid/graphics/Point;
    :cond_3
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 659
    .local v0, "menu":Z
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    .line 660
    .local v3, "back":Z
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public static setNavBarColor(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .line 605
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setNavBarColor(Landroid/view/Window;I)V

    .line 606
    return-void
.end method

.method public static setNavBarColor(Landroid/view/Window;I)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I

    .line 616
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 617
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 618
    return-void
.end method

.method public static setNavBarLightMode(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isLightMode"    # Z

    .line 671
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setNavBarLightMode(Landroid/view/Window;Z)V

    .line 672
    return-void
.end method

.method public static setNavBarLightMode(Landroid/view/Window;Z)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "isLightMode"    # Z

    .line 682
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 683
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 684
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 685
    .local v1, "vis":I
    if-eqz p1, :cond_0

    .line 686
    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    .line 688
    :cond_0
    and-int/lit8 v1, v1, -0x11

    .line 690
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 692
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "vis":I
    :cond_1
    return-void
.end method

.method public static setNavBarVisibility(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isVisible"    # Z

    .line 502
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 503
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setNavBarVisibility(Landroid/view/Window;Z)V

    .line 505
    return-void
.end method

.method public static setNavBarVisibility(Landroid/view/Window;Z)V
    .locals 7
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "isVisible"    # Z

    .line 514
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 515
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 516
    .local v0, "decorView":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 518
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    .line 519
    .local v4, "id":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 520
    invoke-static {v4}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getResNameById(I)Ljava/lang/String;

    move-result-object v5

    .line 521
    .local v5, "resourceEntryName":Ljava/lang/String;
    const-string v6, "navigationBarBackground"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 522
    if-eqz p1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 516
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "id":I
    .end local v5    # "resourceEntryName":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_3
    const/16 v1, 0x1202

    .line 529
    .local v1, "uiOptions":I
    if-eqz p1, :cond_4

    .line 530
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v2

    and-int/lit16 v2, v2, -0x1203

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 532
    :cond_4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x1202

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 534
    :goto_2
    return-void
.end method

.method public static setNotificationBarVisibility(Z)V
    .locals 2
    .param p0, "isVisible"    # Z

    .line 455
    const/16 v0, 0x10

    if-eqz p0, :cond_1

    .line 456
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_0

    const-string v0, "expand"

    goto :goto_0

    :cond_0
    const-string v0, "expandNotificationsPanel"

    .local v0, "methodName":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 458
    .end local v0    # "methodName":Ljava/lang/String;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_2

    const-string v0, "collapse"

    goto :goto_1

    :cond_2
    const-string v0, "collapsePanels"

    .line 460
    .restart local v0    # "methodName":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->invokePanels(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .line 219
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
    .param p2, "isDecor"    # Z

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_0
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 235
    invoke-static {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->applyStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/view/Window;I)Landroid/view/View;
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I

    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "color"    # I
    .param p2, "isDecor"    # Z

    .line 261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 262
    :cond_0
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->transparentStatusBar(Landroid/view/Window;)V

    .line 263
    invoke-static {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->applyStatusBarColor(Landroid/view/Window;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static setStatusBarColor(Landroid/view/View;I)V
    .locals 3
    .param p0, "fakeStatusBar"    # Landroid/view/View;
    .param p1, "color"    # I

    .line 274
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 276
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    return-void

    .line 277
    :cond_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 278
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 280
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 283
    return-void
.end method

.method public static setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;I)V
    .locals 1
    .param p0, "drawer"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p1, "fakeStatusBar"    # Landroid/view/View;
    .param p2, "color"    # I

    .line 320
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;IZ)V

    .line 321
    return-void
.end method

.method public static setStatusBarColor4Drawer(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;IZ)V
    .locals 5
    .param p0, "drawer"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p1, "fakeStatusBar"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "isTop"    # Z

    .line 336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 337
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 338
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    return-void

    .line 339
    :cond_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 340
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 341
    invoke-static {p1, p2}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setStatusBarColor(Landroid/view/View;I)V

    .line 342
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 343
    invoke-virtual {p0, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_2
    if-eqz p3, :cond_3

    .line 346
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->hideStatusBarView(Landroid/app/Activity;)V

    goto :goto_1

    .line 348
    :cond_3
    invoke-static {v0, p2, v1}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setStatusBarColor(Landroid/app/Activity;IZ)Landroid/view/View;

    .line 350
    :goto_1
    return-void
.end method

.method public static setStatusBarCustom(Landroid/view/View;)V
    .locals 5
    .param p0, "fakeStatusBar"    # Landroid/view/View;

    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getActivityByContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 293
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    return-void

    .line 294
    :cond_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->transparentStatusBar(Landroid/app/Activity;)V

    .line 295
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 297
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v2, -0x1

    if-nez v1, :cond_2

    .line 298
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 300
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v1, v3

    .line 302
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 304
    :cond_2
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 305
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 307
    :goto_0
    return-void
.end method

.method public static setStatusBarLightMode(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isLightMode"    # Z

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setStatusBarLightMode(Landroid/view/Window;Z)V

    .line 115
    return-void
.end method

.method public static setStatusBarLightMode(Landroid/view/Window;Z)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "isLightMode"    # Z

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 126
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 128
    .local v1, "vis":I
    if-eqz p1, :cond_0

    .line 129
    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    .line 131
    :cond_0
    and-int/lit16 v1, v1, -0x2001

    .line 133
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 135
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "vis":I
    :cond_1
    return-void
.end method

.method public static setStatusBarVisibility(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "isVisible"    # Z

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->setStatusBarVisibility(Landroid/view/Window;Z)V

    .line 74
    return-void
.end method

.method public static setStatusBarVisibility(Landroid/view/Window;Z)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "isVisible"    # Z

    .line 84
    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 86
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->showStatusBarView(Landroid/view/Window;)V

    .line 87
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->addMarginTopEqualStatusBarHeight(Landroid/view/Window;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 90
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->hideStatusBarView(Landroid/view/Window;)V

    .line 91
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->subtractMarginTopEqualStatusBarHeight(Landroid/view/Window;)V

    .line 93
    :goto_0
    return-void
.end method

.method private static showStatusBarView(Landroid/view/Window;)V
    .locals 3
    .param p0, "window"    # Landroid/view/Window;

    .line 389
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 390
    .local v0, "decorView":Landroid/view/ViewGroup;
    const-string v1, "TAG_STATUS_BAR"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 391
    .local v1, "fakeStatusBarView":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 392
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 393
    return-void
.end method

.method public static subtractMarginTopEqualStatusBarHeight(Landroid/view/View;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 187
    :cond_0
    const/16 v0, -0x7b

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, "haveSetOffset":Ljava/lang/Object;
    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    .local v2, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 191
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->getStatusBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 190
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 194
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 195
    return-void

    .line 188
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method private static subtractMarginTopEqualStatusBarHeight(Landroid/view/Window;)V
    .locals 2
    .param p0, "window"    # Landroid/view/Window;

    .line 205
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "TAG_OFFSET"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "withTag":Landroid/view/View;
    if-nez v0, :cond_1

    return-void

    .line 208
    :cond_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->subtractMarginTopEqualStatusBarHeight(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public static transparentNavBar(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 720
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->transparentNavBar(Landroid/view/Window;)V

    .line 721
    return-void
.end method

.method public static transparentNavBar(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 724
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    return-void

    .line 725
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 726
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 728
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 729
    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 730
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 731
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 732
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 735
    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 736
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 737
    .local v1, "vis":I
    const/16 v2, 0x700

    .line 738
    .local v2, "option":I
    or-int v3, v1, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 739
    return-void
.end method

.method public static transparentStatusBar(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/BarUtils;->transparentStatusBar(Landroid/view/Window;)V

    .line 407
    return-void
.end method

.method public static transparentStatusBar(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;

    .line 410
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    return-void

    .line 411
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/high16 v2, 0x4000000

    if-lt v0, v1, :cond_1

    .line 412
    invoke-virtual {p0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 413
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 414
    const/16 v0, 0x500

    .line 415
    .local v0, "option":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 416
    .local v1, "vis":I
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    or-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 417
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 418
    .end local v0    # "option":I
    .end local v1    # "vis":I
    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 421
    :goto_0
    return-void
.end method
