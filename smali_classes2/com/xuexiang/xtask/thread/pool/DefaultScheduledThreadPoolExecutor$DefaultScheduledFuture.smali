.class public Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;
.super Ljava/util/concurrent/FutureTask;
.source "DefaultScheduledThreadPoolExecutor.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultScheduledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mTask:Ljava/util/concurrent/RunnableScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 120
    iput-object p2, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->mTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 121
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 115
    iput-object p2, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->mTask:Ljava/util/concurrent/RunnableScheduledFuture;

    .line 116
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 125
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->cancel(Z)Z

    .line 126
    return-void
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 145
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->mTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/RunnableScheduledFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 109
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 1
    .param p1, "o"    # Ljava/util/concurrent/Delayed;

    .line 135
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->mTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/RunnableScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 130
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->mTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/RunnableScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isPeriodic()Z
    .locals 1

    .line 140
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->mTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/RunnableScheduledFuture;->isPeriodic()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    .line 150
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture<TV;>;"
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;->mTask:Ljava/util/concurrent/RunnableScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/RunnableScheduledFuture;->run()V

    .line 151
    return-void
.end method
