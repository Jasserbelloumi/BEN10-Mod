.class Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast$SafeHandler;
.super Landroid/os/Handler;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SafeHandler"
.end annotation


# instance fields
.field private impl:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "impl"    # Landroid/os/Handler;

    .line 561
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast$SafeHandler;->impl:Landroid/os/Handler;

    .line 563
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 573
    :try_start_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast$SafeHandler;->impl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    goto :goto_0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 567
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/ToastUtils$SystemToast$SafeHandler;->impl:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 568
    return-void
.end method
