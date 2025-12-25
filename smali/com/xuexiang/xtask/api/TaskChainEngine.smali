.class public Lcom/xuexiang/xtask/api/TaskChainEngine;
.super Ljava/lang/Object;
.source "TaskChainEngine.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/ITaskChainEngine;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TASK_CHAIN_NAME_PREFIX:Ljava/lang/String; = "TaskChain-"


# instance fields
.field private mIsAddCancellerPool:Z

.field private mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mName:Ljava/lang/String;

.field private mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

.field private mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "TaskChainEngine"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskChain-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;-><init>(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    .line 79
    new-instance v0, Lcom/xuexiang/xtask/core/step/impl/AutoDestroyTaskChainCallback;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/step/impl/AutoDestroyTaskChainCallback;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    .line 118
    iput-object p1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/xuexiang/xtask/api/TaskChainEngine;)Lcom/xuexiang/xtask/core/ITaskChainCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xuexiang/xtask/api/TaskChainEngine;

    .line 47
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    return-object v0
.end method

.method public static get()Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 1

    .line 92
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-direct {v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;-><init>()V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private isDestroy()Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isNeedChangeToMainThread()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    invoke-interface {v0}, Lcom/xuexiang/xtask/core/ITaskChainCallback;->isCallBackOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xuexiang/xtask/utils/TaskUtils;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onTaskChainCancelled()V
    .locals 3

    .line 314
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelled!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-boolean v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsAddCancellerPool:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->remove(Ljava/lang/String;)Z

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    if-nez v0, :cond_1

    .line 319
    return-void

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isNeedChangeToMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 322
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine$2;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/TaskChainEngine$2;-><init>(Lcom/xuexiang/xtask/api/TaskChainEngine;)V

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/ITaskChainCallback;->onTaskChainCancelled(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V

    .line 331
    :goto_0
    return-void
.end method

.method private onTaskChainCompleted(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 3
    .param p1, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 334
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " completed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-boolean v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsAddCancellerPool:Z

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->remove(Ljava/lang/String;)Z

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    if-nez v0, :cond_1

    .line 339
    return-void

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isNeedChangeToMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine$3;

    invoke-direct {v0, p0, p1}, Lcom/xuexiang/xtask/api/TaskChainEngine$3;-><init>(Lcom/xuexiang/xtask/api/TaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    invoke-interface {v0, p0, p1}, Lcom/xuexiang/xtask/core/ITaskChainCallback;->onTaskChainCompleted(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 351
    :goto_0
    return-void
.end method

.method private onTaskChainError(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 3
    .param p1, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 354
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-boolean v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsAddCancellerPool:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->remove(Ljava/lang/String;)Z

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    if-nez v0, :cond_1

    .line 359
    return-void

    .line 361
    :cond_1
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isNeedChangeToMainThread()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine$4;

    invoke-direct {v0, p0, p1}, Lcom/xuexiang/xtask/api/TaskChainEngine$4;-><init>(Lcom/xuexiang/xtask/api/TaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    invoke-interface {v0, p0, p1}, Lcom/xuexiang/xtask/core/ITaskChainCallback;->onTaskChainError(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 371
    :goto_0
    return-void
.end method

.method private onTaskChainStart()V
    .locals 3

    .line 296
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-static {v2}, Lcom/xuexiang/xtask/utils/CommonUtils;->getSize(Ljava/util/Collection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") start..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isNeedChangeToMainThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    new-instance v0, Lcom/xuexiang/xtask/api/TaskChainEngine$1;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/TaskChainEngine$1;-><init>(Lcom/xuexiang/xtask/api/TaskChainEngine;)V

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/ITaskChainCallback;->onTaskChainStart(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V

    .line 310
    :goto_0
    return-void
.end method


# virtual methods
.method public addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 3
    .param p1, "taskStep"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 144
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addTask failed, task chain has destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-object p0

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    invoke-interface {p1, p0}, Lcom/xuexiang/xtask/core/step/ITaskStep;->setTaskStepLifecycle(Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;)Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 150
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    return-object p0
.end method

.method public bridge synthetic addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object p1

    return-object p1
.end method

.method public addTasks(Ljava/util/List;)Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ">;)",
            "Lcom/xuexiang/xtask/api/TaskChainEngine;"
        }
    .end annotation

    .line 157
    .local p1, "taskStepList":Ljava/util/List;, "Ljava/util/List<Lcom/xuexiang/xtask/core/step/ITaskStep;>;"
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " addTasks failed, task chain has destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-object p0

    .line 161
    :cond_0
    invoke-static {p1}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 163
    .local v1, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    invoke-virtual {p0, v1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    .line 164
    .end local v1    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    goto :goto_0

    .line 166
    :cond_1
    return-object p0
.end method

.method public bridge synthetic addTasks(Ljava/util/List;)Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->addTasks(Ljava/util/List;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object p1

    return-object p1
.end method

.method public cancel()V
    .locals 3

    .line 245
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancel failed, task chain has destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 253
    .local v1, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    invoke-interface {v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->cancel()V

    .line 254
    .end local v1    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 256
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->onTaskChainCancelled()V

    .line 257
    return-void
.end method

.method public clearTask()V
    .locals 2

    .line 171
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 178
    .local v1, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    invoke-interface {v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->recycle()V

    .line 179
    .end local v1    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    goto :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 224
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destroy..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->reset()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    .line 230
    iput-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    .line 231
    iput-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    .line 232
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTaskChainName()Ljava/lang/String;
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task chain ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onTaskStepCompleted(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 3
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 266
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTaskStepCompleted failed, task chain has destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-virtual {v0, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->saveResult(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 271
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/xuexiang/xtask/utils/TaskUtils;->findNextTaskStep(Ljava/util/List;Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/ITaskStep;

    move-result-object v0

    .line 272
    .local v0, "nextTaskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    if-eqz v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V

    .line 275
    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->executeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v1

    .line 276
    .local v1, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->setCancelable(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V

    .line 277
    .end local v1    # "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    goto :goto_0

    .line 278
    :cond_1
    invoke-direct {p0, p2}, Lcom/xuexiang/xtask/api/TaskChainEngine;->onTaskChainCompleted(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 280
    :goto_0
    return-void
.end method

.method public onTaskStepError(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 3
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 284
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onTaskStepError failed, task chain has destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-direct {p0, p2}, Lcom/xuexiang/xtask/api/TaskChainEngine;->onTaskChainError(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 289
    return-void
.end method

.method public reset()V
    .locals 3

    .line 212
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reset failed, task chain has destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-virtual {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->clear()V

    .line 218
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->clearTask()V

    .line 219
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->remove(Ljava/lang/String;)Z

    .line 220
    return-void
.end method

.method public setTaskChainCallback(Lcom/xuexiang/xtask/core/ITaskChainCallback;)Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 3
    .param p1, "iTaskChainCallback"    # Lcom/xuexiang/xtask/core/ITaskChainCallback;

    .line 134
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setTaskChainCallback failed, task chain has destroyed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-object p0

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTaskChainCallback:Lcom/xuexiang/xtask/core/ITaskChainCallback;

    .line 139
    return-object p0
.end method

.method public bridge synthetic setTaskChainCallback(Lcom/xuexiang/xtask/core/ITaskChainCallback;)Lcom/xuexiang/xtask/core/ITaskChainEngine;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->setTaskChainCallback(Lcom/xuexiang/xtask/core/ITaskChainCallback;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object p1

    return-object p1
.end method

.method public setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/TaskChainEngine;
    .locals 1
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 128
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-virtual {v0, p1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 129
    return-object p0
.end method

.method public bridge synthetic setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/ITaskChainEngine;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/TaskChainEngine;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic start()Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->start()Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic start(Z)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->start(Z)Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;

    move-result-object p1

    return-object p1
.end method

.method public start()Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;
    .locals 1

    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->start(Z)Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;

    move-result-object v0

    return-object v0
.end method

.method public start(Z)Lcom/xuexiang/xtask/thread/pool/cancel/ICanceller;
    .locals 4
    .param p1, "isAddPool"    # Z

    .line 190
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->isDestroy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/xuexiang/xtask/api/TaskChainEngine;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getTaskChainName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " start failed, task chain has destroyed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-object v1

    .line 194
    :cond_0
    iput-boolean p1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mIsAddCancellerPool:Z

    .line 195
    invoke-direct {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->onTaskChainStart()V

    .line 196
    iget-object v0, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mTasks:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/utils/TaskUtils;->findNextTaskStep(Ljava/util/List;Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/ITaskStep;

    move-result-object v0

    .line 197
    .local v0, "firstTaskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V

    .line 199
    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->executeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v1

    .line 200
    .local v1, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->setCancelable(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V

    .line 201
    .end local v1    # "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    goto :goto_0

    .line 202
    :cond_1
    iget-object v1, p0, Lcom/xuexiang/xtask/api/TaskChainEngine;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {p0, v1}, Lcom/xuexiang/xtask/api/TaskChainEngine;->onTaskChainCompleted(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 204
    :goto_0
    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/TaskChainEngine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/xuexiang/xtask/utils/CancellerPoolUtils;->add(Ljava/lang/String;Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)Z

    .line 207
    :cond_2
    return-object p0
.end method
