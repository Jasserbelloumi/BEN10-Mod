.class public Lpubgm/loader/utils/UiKit;
.super Ljava/lang/Object;
.source "UiKit.java"


# static fields
.field private static final gDM:Lorg/jdeferred/android/AndroidDeferredManager;

.field private static final gUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredManager;

    invoke-direct {v0}, Lorg/jdeferred/android/AndroidDeferredManager;-><init>()V

    sput-object v0, Lpubgm/loader/utils/UiKit;->gDM:Lorg/jdeferred/android/AndroidDeferredManager;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lpubgm/loader/utils/UiKit;->gUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static defer()Lorg/jdeferred/android/AndroidDeferredManager;
    .locals 1

    .line 18
    sget-object v0, Lpubgm/loader/utils/UiKit;->gDM:Lorg/jdeferred/android/AndroidDeferredManager;

    return-object v0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # I

    .line 22
    int-to-float v0, p1

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 22
    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 27
    sget-object v0, Lpubgm/loader/utils/UiKit;->gUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    return-void
.end method

.method public static postDelayed(JLjava/lang/Runnable;)V
    .locals 1
    .param p0, "delay"    # J
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 31
    sget-object v0, Lpubgm/loader/utils/UiKit;->gUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    return-void
.end method

.method public static sleep(J)V
    .locals 1
    .param p0, "time"    # J

    .line 36
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 40
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method
