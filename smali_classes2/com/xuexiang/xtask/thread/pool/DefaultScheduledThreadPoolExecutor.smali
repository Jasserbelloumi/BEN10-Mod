.class public Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;
.super Lcom/xuexiang/xtask/thread/pool/base/BaseScheduledThreadPoolExecutor;
.source "DefaultScheduledThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;,
        Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 0
    .param p1, "corePoolSize"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/xuexiang/xtask/thread/pool/base/BaseScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 76
    return-void
.end method

.method public static getDefault()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;
    .locals 1

    .line 45
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;
    .locals 1

    .line 54
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;-><init>()V

    return-object v0
.end method

.method public static newBuilder(I)Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;
    .locals 1
    .param p0, "corePoolSize"    # I

    .line 64
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$Builder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method protected decorateTask(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 85
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;

    invoke-direct {v0, p1, p2}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v0
.end method

.method protected decorateTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)Ljava/util/concurrent/RunnableScheduledFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;)",
            "Ljava/util/concurrent/RunnableScheduledFuture<",
            "TV;>;"
        }
    .end annotation

    .line 80
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    .local p2, "task":Ljava/util/concurrent/RunnableScheduledFuture;, "Ljava/util/concurrent/RunnableScheduledFuture<TV;>;"
    new-instance v0, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;

    invoke-direct {v0, p1, p2}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor$DefaultScheduledFuture;-><init>(Ljava/util/concurrent/Callable;Ljava/util/concurrent/RunnableScheduledFuture;)V

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xuexiang/xtask/thread/pool/base/BaseScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 95
    invoke-super/range {p0 .. p6}, Lcom/xuexiang/xtask/thread/pool/base/BaseScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    return-object v0
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 37
    invoke-virtual/range {p0 .. p6}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "delay"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture<",
            "*>;"
        }
    .end annotation

    .line 100
    invoke-super/range {p0 .. p6}, Lcom/xuexiang/xtask/thread/pool/base/BaseScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    return-object v0
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 37
    invoke-virtual/range {p0 .. p6}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    move-result-object p1

    return-object p1
.end method
