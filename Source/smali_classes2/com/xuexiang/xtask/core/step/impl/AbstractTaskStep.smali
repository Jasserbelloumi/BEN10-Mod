.class public abstract Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
.super Ljava/lang/Object;
.source "AbstractTaskStep.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/step/ITaskStep;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelable:Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

.field private final mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

.field private mTaskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

.field private mTaskStepLifecycle:Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

.field private mThreadType:Lcom/xuexiang/xtask/core/ThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "AbstractTaskStep"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    sget-object v0, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC:Lcom/xuexiang/xtask/core/ThreadType;

    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->get()Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/xuexiang/xtask/core/ThreadType;)V
    .locals 1
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 96
    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;->get()Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 2
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;
    .param p2, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mThreadType:Lcom/xuexiang/xtask/core/ThreadType;

    .line 116
    iput-object p2, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 1
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 105
    sget-object v0, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC:Lcom/xuexiang/xtask/core/ThreadType;

    invoke-direct {p0, v0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 106
    return-void
.end method

.method private getTaskRunningDetailLogInfo()Ljava/lang/String;
    .locals 2

    .line 307
    invoke-static {}, Lcom/xuexiang/xtask/logger/TaskLogger;->isLogThreadName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has run, thread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;

    move-result-object v1

    invoke-interface {v1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has run, path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;

    move-result-object v1

    invoke-interface {v1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateProcessTaskPath()V
    .locals 2

    .line 301
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->addPath(Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskRunningDetailLogInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 304
    return-void
.end method


# virtual methods
.method public accept()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/step/ITaskStepHandler;->accept(Lcom/xuexiang/xtask/core/step/ITaskStep;)Z

    move-result v0

    return v0

    .line 180
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public cancel()V
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isPending()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    :cond_1
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancel..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mCancelable:Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    if-eqz v0, :cond_3

    .line 249
    invoke-interface {v0}, Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;->cancel()V

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    if-eqz v0, :cond_4

    .line 253
    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/step/ITaskStepHandler;->handleTaskCancelled(Lcom/xuexiang/xtask/core/step/ITaskStep;)V

    .line 255
    :cond_4
    return-void
.end method

.method protected getTaskLogName()Ljava/lang/String;
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task step ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getName()Ljava/lang/String;

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

.method public getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    return-object v0
.end method

.method public getThreadType()Lcom/xuexiang/xtask/core/ThreadType;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mThreadType:Lcom/xuexiang/xtask/core/ThreadType;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPending()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsPending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public notifyTaskFailed()V
    .locals 1

    .line 336
    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->failed()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 337
    return-void
.end method

.method public notifyTaskFailed(I)V
    .locals 1
    .param p1, "code"    # I

    .line 345
    invoke-static {p1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->failed(I)Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 346
    return-void
.end method

.method public notifyTaskFailed(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 355
    invoke-static {p1, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->failed(ILjava/lang/String;)Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 356
    return-void
.end method

.method public notifyTaskFailed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 3
    .param p1, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 212
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has notified\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->wTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 217
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 218
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    if-eqz v0, :cond_1

    .line 220
    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/step/ITaskStepHandler;->handleTaskFailed(Lcom/xuexiang/xtask/core/step/ITaskStep;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskStepLifecycle:Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xuexiang/xtask/core/param/ITaskResult;->updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 224
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskStepLifecycle:Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

    invoke-interface {v0, p0, p1}, Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;->onTaskStepError(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 226
    :cond_2
    return-void
.end method

.method public notifyTaskSucceed()V
    .locals 1

    .line 329
    invoke-static {}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->succeed()Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 330
    return-void
.end method

.method public notifyTaskSucceed(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 3
    .param p1, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 190
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has notified\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->wTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsNotified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 195
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has cancelled\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->wTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void

    .line 200
    :cond_1
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    if-eqz v0, :cond_2

    .line 202
    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/step/ITaskStepHandler;->handleTaskSucceed(Lcom/xuexiang/xtask/core/step/ITaskStep;)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskStepLifecycle:Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

    if-eqz v0, :cond_3

    .line 205
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xuexiang/xtask/core/param/ITaskResult;->updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 206
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskStepLifecycle:Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

    invoke-interface {v0, p0, p1}, Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;->onTaskStepCompleted(Lcom/xuexiang/xtask/core/step/ITaskStep;Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 208
    :cond_3
    return-void
.end method

.method public prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V
    .locals 1
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    .line 185
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskParam()Lcom/xuexiang/xtask/core/param/ITaskParam;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 186
    return-void
.end method

.method protected processTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->updateProcessTaskPath()V

    .line 286
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    if-eqz v0, :cond_0

    .line 287
    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/step/ITaskStepHandler;->beforeTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->doTask()V

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v0, p0}, Lcom/xuexiang/xtask/core/step/ITaskStepHandler;->afterTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)V

    .line 295
    :cond_2
    return-void
.end method

.method public recycle()V
    .locals 3

    .line 230
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycle..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->cancel()V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    invoke-interface {v0}, Lcom/xuexiang/xtask/core/param/ITaskParam;->clear()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskStepLifecycle:Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

    .line 236
    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    .line 237
    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mCancelable:Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 238
    return-void
.end method

.method public run()V
    .locals 4

    .line 264
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has cancelled, do not need to run\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->wTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->setIsRunning(Z)V

    .line 270
    :try_start_0
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->processTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has error\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    iget-object v1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    invoke-interface {v1, p0, v0}, Lcom/xuexiang/xtask/core/step/ITaskStepHandler;->onTaskException(Lcom/xuexiang/xtask/core/step/ITaskStep;Ljava/lang/Exception;)V

    .line 277
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public setCancelable(Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;)V
    .locals 0
    .param p1, "cancelable"    # Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 157
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mCancelable:Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;

    .line 158
    return-void
.end method

.method public setIsRunning(Z)V
    .locals 1
    .param p1, "isRunning"    # Z

    .line 162
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    return-void
.end method

.method public bridge synthetic setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/ITaskStep;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
    .locals 0
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 139
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 140
    return-object p0
.end method

.method public bridge synthetic setTaskStepHandler(Lcom/xuexiang/xtask/core/step/ITaskStepHandler;)Lcom/xuexiang/xtask/core/step/ITaskStep;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->setTaskStepHandler(Lcom/xuexiang/xtask/core/step/ITaskStepHandler;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public setTaskStepHandler(Lcom/xuexiang/xtask/core/step/ITaskStepHandler;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
    .locals 0
    .param p1, "taskStepHandler"    # Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    .line 127
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    .line 128
    return-object p0
.end method

.method public bridge synthetic setTaskStepLifecycle(Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;)Lcom/xuexiang/xtask/core/step/ITaskStep;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->setTaskStepLifecycle(Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public setTaskStepLifecycle(Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
    .locals 0
    .param p1, "taskStepLifecycle"    # Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

    .line 121
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mTaskStepLifecycle:Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;

    .line 122
    return-object p0
.end method

.method public bridge synthetic setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/ITaskStep;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
    .locals 0
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 133
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->mThreadType:Lcom/xuexiang/xtask/core/ThreadType;

    .line 134
    return-object p0
.end method
