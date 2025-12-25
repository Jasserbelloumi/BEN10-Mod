.class public Lcom/xuexiang/xtask/thread/XTaskExecutor;
.super Ljava/lang/Object;
.source "XTaskExecutor.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;
.implements Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;
.implements Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;


# static fields
.field private static volatile sInstance:Lcom/xuexiang/xtask/thread/XTaskExecutor;


# instance fields
.field private mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

.field private mPriorityExecutorCore:Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

.field private mScheduledExecutorCore:Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->sInstance:Lcom/xuexiang/xtask/thread/XTaskExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    .line 76
    new-instance v0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mPriorityExecutorCore:Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

    .line 77
    new-instance v0, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;

    invoke-direct {v0}, Lcom/xuexiang/xtask/thread/executor/impl/ScheduledExecutorCore;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mScheduledExecutorCore:Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    .line 78
    return-void
.end method

.method public static get()Lcom/xuexiang/xtask/thread/XTaskExecutor;
    .locals 2

    .line 61
    sget-object v0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->sInstance:Lcom/xuexiang/xtask/thread/XTaskExecutor;

    if-nez v0, :cond_1

    .line 62
    const-class v0, Lcom/xuexiang/xtask/thread/XTaskExecutor;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/xuexiang/xtask/thread/XTaskExecutor;->sInstance:Lcom/xuexiang/xtask/thread/XTaskExecutor;

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Lcom/xuexiang/xtask/thread/XTaskExecutor;

    invoke-direct {v1}, Lcom/xuexiang/xtask/thread/XTaskExecutor;-><init>()V

    sput-object v1, Lcom/xuexiang/xtask/thread/XTaskExecutor;->sInstance:Lcom/xuexiang/xtask/thread/XTaskExecutor;

    .line 66
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 68
    :cond_1
    :goto_0
    sget-object v0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->sInstance:Lcom/xuexiang/xtask/thread/XTaskExecutor;

    return-object v0
.end method


# virtual methods
.method public backgroundSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 156
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->backgroundSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public emergentSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 146
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->emergentSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public groupSubmit(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;

    .line 166
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->groupSubmit(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public ioSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 161
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->ioSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public postToMain(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 136
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->postToMain(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postToMainDelay(Ljava/lang/Runnable;J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 141
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0, p1, p2, p3}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->postToMainDelay(Ljava/lang/Runnable;J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 173
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mScheduledExecutorCore:Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 178
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mScheduledExecutorCore:Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 7
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "initialDelay"    # J
    .param p4, "period"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 183
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mScheduledExecutorCore:Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public setCategoryExecutorCore(Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;)Lcom/xuexiang/xtask/thread/XTaskExecutor;
    .locals 0
    .param p1, "categoryExecutorCore"    # Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    .line 98
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    .line 99
    return-object p0
.end method

.method public setPriorityExecutorCore(Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;)Lcom/xuexiang/xtask/thread/XTaskExecutor;
    .locals 0
    .param p1, "priorityExecutorCore"    # Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

    .line 87
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mPriorityExecutorCore:Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

    .line 88
    return-object p0
.end method

.method public setScheduledExecutorCore(Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;)Lcom/xuexiang/xtask/thread/XTaskExecutor;
    .locals 0
    .param p1, "scheduledExecutorCore"    # Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    .line 109
    iput-object p1, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mScheduledExecutorCore:Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    .line 110
    return-object p0
.end method

.method public shutdown()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->shutdown()V

    .line 116
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mPriorityExecutorCore:Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

    invoke-interface {v0}, Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;->shutdown()V

    .line 117
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mScheduledExecutorCore:Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;

    invoke-interface {v0}, Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;->shutdown()V

    .line 118
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 151
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mCategoryExecutorCore:Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;->submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 124
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mPriorityExecutorCore:Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

    invoke-interface {v0, p1, p2}, Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;->submit(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/String;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "priority"    # I

    .line 129
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/XTaskExecutor;->mPriorityExecutorCore:Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;

    invoke-interface {v0, p1, p2, p3}, Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;->submit(Ljava/lang/String;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method
