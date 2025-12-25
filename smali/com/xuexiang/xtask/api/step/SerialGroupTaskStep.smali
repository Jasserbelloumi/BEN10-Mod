.class public Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;
.super Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;
.source "SerialGroupTaskStep.java"


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

.method public static get()Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;
    .locals 1

    .line 44
    new-instance v0, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;

    invoke-direct {v0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;-><init>()V

    return-object v0
.end method

.method public static get(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;
    .locals 1
    .param p0, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 64
    new-instance v0, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;)V

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;

    invoke-direct {v0, p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->getTasks()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/utils/TaskUtils;->findNextTaskStep(Ljava/util/List;Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/ITaskStep;

    move-result-object v0

    .line 90
    .local v0, "firstTaskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->initGroupTask()V

    .line 92
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V

    .line 93
    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->executeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v1

    .line 94
    .local v1, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->setCancelable(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V

    .line 95
    .end local v1    # "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 98
    :goto_0
    return-void
.end method

.method public onTaskStepCompleted(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 4
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 102
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->saveResultNotPath(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 103
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    iget v3, p0, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->mTaskTotalSize:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->addGroupPath(Ljava/lang/String;II)V

    .line 104
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->getTasks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xuexiang/xtask/utils/TaskUtils;->findNextTaskStep(Ljava/util/List;Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/ITaskStep;

    move-result-object v0

    .line 105
    .local v0, "nextTaskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V

    .line 108
    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->executeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    move-result-object v1

    .line 109
    .local v1, "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->setCancelable(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V

    .line 110
    .end local v1    # "cancelable":Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 113
    :goto_0
    return-void
.end method

.method public onTaskStepError(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 0
    .param p1, "step"    # Lcom/xuexiang/xtask/core/step/ITaskStep;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 117
    invoke-virtual {p0, p2}, Lcom/xuexiang/xtask/api/step/SerialGroupTaskStep;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 118
    return-void
.end method
