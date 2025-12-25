.class public Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;
.super Ljava/lang/Object;
.source "CategoryExecutorCore.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/executor/ICategoryExecutorCore;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final CPU_COUNT:I

.field private static final EMERGENT_KEEP_ALIVE_SECONDS:I = 0x3c

.field private static final GROUP_CORE_POOL_SIZE:I

.field private static final GROUP_FACTORY_NAME_PREFIX:Ljava/lang/String; = "CategoryGroup-"

.field private static final IO_POOL_SIZE:I


# instance fields
.field private mBackgroundExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

.field private mEmergentExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

.field private mGroupExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mIoExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNormalExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->CPU_COUNT:I

    .line 54
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sput v1, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->GROUP_CORE_POOL_SIZE:I

    .line 55
    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->IO_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mMainHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    return-void
.end method

.method private getBackgroundExecutor(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 3
    .param p1, "priority"    # I

    .line 186
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mBackgroundExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;->newBuilder(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 188
    invoke-virtual {v0, v1, v2}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setKeepAliveTime(J)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    .line 189
    const-string v1, "Background"

    invoke-static {v1, p1}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;I)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mBackgroundExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mBackgroundExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    return-object v0
.end method

.method private getEmergentExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mEmergentExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;->newBuilder(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    .line 166
    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setMaximumPoolSize(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    const-wide/16 v1, 0x3c

    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setKeepAliveTime(J)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 168
    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setWorkQueue(Ljava/util/concurrent/BlockingQueue;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    const/16 v1, 0xa

    .line 169
    const-string v2, "Emergent"

    invoke-static {v2, v1}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;I)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mEmergentExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mEmergentExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    return-object v0
.end method

.method private getGroupExecutor(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 4
    .param p1, "groupName"    # Ljava/lang/String;

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getTargetExecutor(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 216
    .local v0, "executor":Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    if-nez v0, :cond_1

    .line 217
    sget v1, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->GROUP_CORE_POOL_SIZE:I

    invoke-static {v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;->newBuilder(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CategoryGroup-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v2}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1
    return-object v0
.end method

.method private getIoExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mIoExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 197
    sget v0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->IO_POOL_SIZE:I

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;->newBuilder(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 198
    const-string v2, "Io"

    invoke-static {v2, v1}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;I)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mIoExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mIoExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    return-object v0
.end method

.method private getNormalExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mNormalExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 177
    sget v0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->CPU_COUNT:I

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;->newBuilder(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setKeepAliveTime(J)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 179
    const-string v2, "Normal"

    invoke-static {v2, v1}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;I)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mNormalExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mNormalExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    return-object v0
.end method

.method private getTargetExecutor(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .locals 1
    .param p1, "priority"    # I

    .line 154
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getEmergentExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 157
    invoke-direct {p0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getNormalExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    return-object v0

    .line 159
    :cond_1
    invoke-direct {p0, p1}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getBackgroundExecutor(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    return-object v0
.end method

.method private submitTask(Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "executor"    # Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
    .param p2, "task"    # Ljava/lang/Runnable;

    .line 143
    invoke-virtual {p1, p2}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/IFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public backgroundSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 107
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getTargetExecutor(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->submitTask(Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public emergentSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 97
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getTargetExecutor(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->submitTask(Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public groupSubmit(Ljava/lang/String;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;

    .line 117
    invoke-direct {p0, p1}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getGroupExecutor(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->submitTask(Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public ioSubmit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 112
    invoke-direct {p0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getIoExecutor()Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->submitTask(Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public postToMain(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 83
    invoke-static {}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 85
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postToMainDelay(Ljava/lang/Runnable;J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 92
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mMainHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->get(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/xuexiang/xtask/thread/pool/cancel/CancelHandlerRunnable;->startDelayed(J)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mEmergentExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 124
    iput-object v1, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mEmergentExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 125
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mNormalExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 126
    iput-object v1, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mNormalExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 127
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mBackgroundExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 128
    iput-object v1, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mBackgroundExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 129
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mIoExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 130
    iput-object v1, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mIoExecutor:Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    .line 131
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/Collection;)V

    .line 132
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 133
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .line 102
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->getTargetExecutor(I)Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/xuexiang/xtask/thread/executor/impl/CategoryExecutorCore;->submitTask(Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;Ljava/lang/Runnable;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method
