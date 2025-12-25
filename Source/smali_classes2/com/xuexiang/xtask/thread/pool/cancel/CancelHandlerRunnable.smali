.class public Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;
.super Ljava/lang/Object;
.source "CancelHandlerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;


# instance fields
.field private mHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mHandler:Ljava/lang/ref/WeakReference;

    .line 60
    iput-object p2, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mRunnable:Ljava/lang/Runnable;

    .line 61
    return-void
.end method

.method public static get(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;
    .locals 1
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;

    invoke-direct {v0, p0, p1}, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 83
    .local v0, "handler":Landroid/os/Handler;
    if-nez v0, :cond_1

    .line 84
    return-void

    .line 86
    :cond_1
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    iget-object v1, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 100
    :cond_0
    return-void
.end method

.method public startDelayed(J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "delayMillis"    # J

    .line 70
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->mHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 71
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    :cond_0
    return-object p0
.end method
