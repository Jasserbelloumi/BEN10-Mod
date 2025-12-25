.class final Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;
.super Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PermissionActivityImpl"
.end annotation


# static fields
.field private static INSTANCE:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl; = null

.field private static final TYPE:Ljava/lang/String; = "TYPE"

.field private static final TYPE_DRAW_OVERLAYS:I = 0x3

.field private static final TYPE_RUNTIME:I = 0x1

.field private static final TYPE_WRITE_SETTINGS:I = 0x2

.field private static currentRequestCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 426
    const/4 v0, -0x1

    sput v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    .line 428
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;

    invoke-direct {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;-><init>()V

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 419
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;
    .param p1, "x1"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;

    .line 419
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V

    return-void
.end method

.method private checkRequestCallback(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .line 535
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 536
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1200()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 537
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->isGrantedWriteSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1200()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_0

    .line 540
    :cond_1
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1200()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    .line 542
    :goto_0
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1202(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    goto :goto_2

    .line 543
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    .line 544
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    .line 545
    :cond_3
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 546
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_1

    .line 548
    :cond_4
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    .line 550
    :goto_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1302(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 552
    :cond_5
    :goto_2
    return-void
.end method

.method private requestPermissions(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;

    .line 491
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v0

    new-instance v1, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl$3;-><init>(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V

    invoke-static {v0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1000(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    return-void

    .line 499
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 500
    return-void
.end method

.method public static start(I)V
    .locals 2
    .param p0, "type"    # I

    .line 431
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl$1;

    invoke-direct {v0, p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl$1;-><init>(I)V

    sget-object v1, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->INSTANCE:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;

    invoke-static {v0, v1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->start(Lcom/blankj/molihuan/utilcode/util/Utils$Consumer;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V

    .line 437
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .line 516
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 517
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V
    .locals 0
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 531
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 532
    return-void
.end method

.method public onCreated(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 441
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x40010

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 443
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 444
    .local v0, "type":I
    const-string v1, "PermissionUtils"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 445
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v2

    if-nez v2, :cond_0

    .line 446
    const-string/jumbo v2, "sInstance is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 448
    return-void

    .line 450
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 451
    const-string v2, "mPermissionsRequest is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 453
    return-void

    .line 455
    :cond_1
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    .line 456
    const-string v2, "mPermissionsRequest\'s size is no more than 0."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 458
    return-void

    .line 460
    :cond_2
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$500(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 461
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$500(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;->onActivityCreate(Landroid/app/Activity;)V

    .line 463
    :cond_3
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$600(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 464
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$600(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    move-result-object v1

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v2

    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl$2;

    invoke-direct {v3, p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl$2;-><init>(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V

    invoke-interface {v1, p1, v2, v3}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;->explain(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/util/List;Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener$ShouldRequest;)V

    .line 474
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$602(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    .line 475
    return-void

    .line 477
    :cond_4
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->requestPermissions(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V

    goto :goto_0

    .line 478
    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 479
    sput v2, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    .line 480
    invoke-static {p1, v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$800(Landroid/app/Activity;I)V

    goto :goto_0

    .line 481
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 482
    sput v2, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    .line 483
    invoke-static {p1, v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$900(Landroid/app/Activity;I)V

    goto :goto_0

    .line 485
    :cond_7
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 486
    const-string/jumbo v2, "type is wrong."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-void
.end method

.method public onDestroy(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;

    .line 522
    sget v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 523
    invoke-direct {p0, v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->checkRequestCallback(I)V

    .line 524
    sput v1, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->currentRequestCode:I

    .line 526
    :cond_0
    invoke-super {p0, p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity$TransActivityDelegate;->onDestroy(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V

    .line 527
    return-void
.end method

.method public onRequestPermissionsResult(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
    .param p2, "requestCode"    # I
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "grantResults"    # [I

    .line 507
    invoke-virtual {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->finish()V

    .line 508
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$400(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->access$1100(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Landroid/app/Activity;)V

    .line 511
    :cond_0
    return-void
.end method
