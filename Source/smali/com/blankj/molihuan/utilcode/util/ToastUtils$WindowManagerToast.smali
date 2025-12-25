.class final Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;
.super Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/molihuan/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WindowManagerToast"
.end annotation


# instance fields
.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWM:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;I)V
    .locals 2
    .param p1, "toastUtils"    # Lcom/blankj/molihuan/utilcode/util/ToastUtils;
    .param p2, "type"    # I

    .line 588
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V

    .line 589
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 590
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    .line 591
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 592
    return-void
.end method

.method constructor <init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;Landroid/view/WindowManager;I)V
    .locals 1
    .param p1, "toastUtils"    # Lcom/blankj/molihuan/utilcode/util/ToastUtils;
    .param p2, "wm"    # Landroid/view/WindowManager;
    .param p3, "type"    # I

    .line 595
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V

    .line 596
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 597
    iput-object p2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    .line 598
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 599
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 646
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    nop

    .line 649
    invoke-super {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->cancel()V

    .line 650
    return-void
.end method

.method public show(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 603
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 605
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 606
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 607
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 608
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ToastWithoutNotification"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 609
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 612
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 614
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 615
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    .line 616
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x70

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    .line 619
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 622
    :cond_2
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getXOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 623
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getYOffset()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 624
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getHorizontalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 625
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getVerticalMargin()F

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mWM:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    .line 629
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    :cond_3
    :goto_0
    nop

    .line 633
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast$1;

    invoke-direct {v0, p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast$1;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;)V

    if-nez p1, :cond_4

    const-wide/16 v1, 0x7d0

    goto :goto_1

    :cond_4
    const-wide/16 v1, 0xdac

    :goto_1
    invoke-static {v0, v1, v2}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 639
    return-void
.end method
