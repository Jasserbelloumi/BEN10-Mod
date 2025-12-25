.class public Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;
.super Ljava/lang/Object;
.source "PriorityExecutorCore.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/executor/IPriorityExecutorCore;
.implements Lcom/xuexiang/xtask/thread/executor/IExecutorCore;


# static fields
.field private static final CPU_COUNT:I

.field private static final GROUP_CORE_POOL_SIZE:I

.field private static final GROUP_FACTORY_NAME_PREFIX:Ljava/lang/String; = "PriorityGroup-"


# instance fields
.field private mExecutor:Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

.field private mGroupExecutorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->CPU_COUNT:I

    .line 43
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->GROUP_CORE_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    return-void
.end method

.method private getThreadPoolExecutor(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;
    .locals 4
    .param p1, "groupName"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->getDefault()Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    return-object v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    .line 95
    .local v0, "executor":Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;
    if-nez v0, :cond_2

    .line 96
    sget v1, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->GROUP_CORE_POOL_SIZE:I

    invoke-static {v1}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->newBuilder(I)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PriorityGroup-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;->getFactory(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/TaskThreadFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor$Builder;->build()Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    return-object v0
.end method

.method private submitTask(Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "executor"    # Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "priority"    # I

    .line 77
    invoke-virtual {p1, p2, p3}, Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;->submit(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/priority/IPriorityFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public shutdown()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/concurrent/ExecutorService;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mExecutor:Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    .line 64
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/thread/utils/ExecutorUtils;->shutdown(Ljava/util/Collection;)V

    .line 65
    iget-object v0, p0, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->mGroupExecutorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    return-void
.end method

.method public submit(Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "priority"    # I

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->getThreadPoolExecutor(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->submitTask(Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method

.method public submit(Ljava/lang/String;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "task"    # Ljava/lang/Runnable;
    .param p3, "priority"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->getThreadPoolExecutor(Ljava/lang/String;)Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/xuexiang/xtask/thread/executor/impl/PriorityExecutorCore;->submitTask(Lcom/xuexiang/xtask/thread/pool/PriorityThreadPoolExecutor;Ljava/lang/Runnable;I)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v0

    return-object v0
.end method
