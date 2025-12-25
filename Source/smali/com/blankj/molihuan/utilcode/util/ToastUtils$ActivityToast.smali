.class final Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;
.super Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/molihuan/utilcode/util/ToastUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ActivityToast"
.end annotation


# static fields
.field private static sShowingIndex:I


# instance fields
.field private iToast:Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

.field private mActivityLifecycleCallbacks:Lcom/blankj/molihuan/utilcode/util/Utils$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 655
    const/4 v0, 0x0

    sput v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    return-void
.end method

.method constructor <init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V
    .locals 0
    .param p1, "toastUtils"    # Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 661
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V

    .line 662
    return-void
.end method

.method static synthetic access$200(Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;)Z
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;

    .line 653
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;Landroid/app/Activity;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 653
    invoke-direct {p0, p1, p2, p3}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->showWithActivityView(Landroid/app/Activity;IZ)V

    return-void
.end method

.method private isShowing()Z
    .locals 1

    .line 781
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/molihuan/utilcode/util/Utils$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private registerLifecycleCallback()V
    .locals 2

    .line 763
    sget v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    .line 764
    .local v0, "index":I
    new-instance v1, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast$2;

    invoke-direct {v1, p0, v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast$2;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;I)V

    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/molihuan/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 772
    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->addActivityLifecycleCallbacks(Lcom/blankj/molihuan/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 773
    return-void
.end method

.method private showSystemToast(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;
    .locals 2
    .param p1, "duration"    # I

    .line 728
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-direct {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;)V

    .line 729
    .local v0, "systemToast":Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast;
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    iput-object v1, v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast;->mToast:Landroid/widget/Toast;

    .line 730
    invoke-virtual {v0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast;->show(I)V

    .line 731
    return-object v0
.end method

.method private showWithActivityView(Landroid/app/Activity;IZ)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "index"    # I
    .param p3, "useAnim"    # Z

    .line 743
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 744
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 746
    .local v1, "decorView":Landroid/view/ViewGroup;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 749
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getGravity()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 750
    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getNavBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 751
    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getYOffset()I

    move-result v3

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 752
    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getXOffset()I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 753
    invoke-virtual {p0, p2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->getToastViewSnapshot(I)Landroid/view/View;

    move-result-object v3

    .line 754
    .local v3, "toastViewSnapshot":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 755
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 756
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0xc8

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 758
    :cond_0
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 760
    .end local v1    # "decorView":Landroid/view/ViewGroup;
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "toastViewSnapshot":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private showWithActivityWindow(Landroid/app/Activity;I)Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "duration"    # I

    .line 735
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToastUtils:Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    const/16 v3, 0x63

    invoke-direct {v0, v1, v2, v3}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils;Landroid/view/WindowManager;I)V

    .line 736
    .local v0, "wmToast":Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->getToastViewSnapshot(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToastView:Landroid/view/View;

    .line 737
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    iput-object v1, v0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->mToast:Landroid/widget/Toast;

    .line 738
    invoke-virtual {v0, p2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$WindowManagerToast;->show(I)V

    .line 739
    return-object v0
.end method

.method private unregisterLifecycleCallback()V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/molihuan/utilcode/util/Utils$ActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->removeActivityLifecycleCallbacks(Lcom/blankj/molihuan/utilcode/util/Utils$ActivityLifecycleCallbacks;)V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mActivityLifecycleCallbacks:Lcom/blankj/molihuan/utilcode/util/Utils$ActivityLifecycleCallbacks;

    .line 778
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 6

    .line 702
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 703
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->unregisterLifecycleCallback()V

    .line 704
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 705
    .local v1, "activity":Landroid/app/Activity;
    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 706
    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 709
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_1

    .line 710
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 711
    .local v3, "decorView":Landroid/view/ViewGroup;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAG_TOAST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    .line 712
    .local v4, "toastView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 714
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_1

    .line 718
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v2    # "window":Landroid/view/Window;
    .end local v3    # "decorView":Landroid/view/ViewGroup;
    .end local v4    # "toastView":Landroid/view/View;
    :cond_1
    :goto_2
    goto :goto_0

    .line 720
    :cond_2
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    if-eqz v0, :cond_3

    .line 721
    invoke-interface {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;->cancel()V

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    .line 724
    :cond_3
    invoke-super {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$AbsToast;->cancel()V

    .line 725
    return-void
.end method

.method public show(I)V
    .locals 6
    .param p1, "duration"    # I

    .line 666
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isAppForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 669
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->showSystemToast(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    .line 670
    return-void

    .line 672
    :cond_1
    const/4 v0, 0x0

    .line 673
    .local v0, "hasAliveActivity":Z
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getActivityList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 674
    .local v2, "activity":Landroid/app/Activity;
    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isActivityAlive(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 675
    goto :goto_0

    .line 677
    :cond_2
    if-nez v0, :cond_3

    .line 678
    const/4 v0, 0x1

    .line 679
    invoke-direct {p0, v2, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->showWithActivityWindow(Landroid/app/Activity;I)Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    move-result-object v3

    iput-object v3, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    goto :goto_1

    .line 681
    :cond_3
    sget v4, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    invoke-direct {p0, v2, v4, v3}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->showWithActivityView(Landroid/app/Activity;IZ)V

    .line 683
    .end local v2    # "activity":Landroid/app/Activity;
    :goto_1
    goto :goto_0

    .line 684
    :cond_4
    if-eqz v0, :cond_6

    .line 685
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->registerLifecycleCallback()V

    .line 686
    new-instance v1, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast$1;

    invoke-direct {v1, p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast$1;-><init>(Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;)V

    if-nez p1, :cond_5

    const-wide/16 v4, 0x7d0

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0xdac

    :goto_2
    invoke-static {v1, v4, v5}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 693
    sget v1, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    add-int/2addr v1, v3

    sput v1, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->sShowingIndex:I

    goto :goto_3

    .line 696
    :cond_6
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->showSystemToast(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    move-result-object v1

    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$ActivityToast;->iToast:Lcom/blankj/molihuan/utilcode/util/ToastUtils$IToast;

    .line 698
    :goto_3
    return-void
.end method
