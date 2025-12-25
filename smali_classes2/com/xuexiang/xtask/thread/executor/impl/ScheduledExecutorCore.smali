.class public Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;
.super Ljava/lang/Object;
.source "ScheduledExecutorCore.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;


# instance fields
.field private mExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getThreadPoolExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 68
    invoke-static {}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;->getDefault()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    return-object v0
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 41
    invoke-direct {p0}, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->getThreadPoolExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-direct {p0}, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->getThreadPoolExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 51
    invoke-direct {p0}, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->getThreadPoolExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/IScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultScheduledThreadPoolExecutor;

    .line 58
    return-void
.end method
