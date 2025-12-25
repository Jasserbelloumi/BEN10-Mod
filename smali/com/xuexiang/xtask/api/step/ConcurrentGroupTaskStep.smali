.class public Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;
.super Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;
.source "ConcurrentGroupTaskStep.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;-><init>()V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/xuexiang/xtask/core/ThreadType;)V
    .locals 0
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 76
    invoke-direct {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 72
    invoke-direct {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/ThreadType;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;-><init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/ThreadType;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;-><init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 81
    return-void
.end method

.method public static get()Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;
    .locals 1

    .line 44
    new-instance v0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;

    invoke-direct {v0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;-><init>()V

    return-object v0
.end method

.method public static get(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;
    .locals 1
    .param p0, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 64
    new-instance v0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->initGroupTask()V

    .line 90
    iget v0, p0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->mTaskTotalSize:I

    if-lez v0, :cond_2

    .line 91
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->getTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 92
    .local v1, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->accept()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xuexiang/xtask/core/step/ITaskStep;->prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V

    .line 94
    invoke-static {v1}, Lcom/xuexiang/xtask/utils/TaskUtils;->executeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v2

    .line 95
    .local v2, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-interface {v1, v2}, Lcom/xuexiang/xtask/core/step/ITaskStep;->setCancelable(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V

    .line 97
    .end local v1    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    .end local v2    # "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 101
    :goto_1
    return-void
.end method

.method public onTaskStepCompleted(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 4
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 105
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->saveResultNotPath(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 106
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget v3, p0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->mTaskTotalSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->addGroupPath(Ljava/lang/String;II)V

    .line 107
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->mTaskTotalSize:I

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0, p2}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onTaskStepError(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 2
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 114
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    invoke-virtual {p0, p2}, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 117
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/ConcurrentGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 119
    :cond_0
    return-void
.end method
