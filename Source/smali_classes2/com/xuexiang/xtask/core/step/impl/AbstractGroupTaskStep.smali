.class public abstract Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;
.super Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
.source "AbstractGroupTaskStep.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;
.implements Lcom/xuexiang/xtask/core/step/IGroupTaskStep;


# static fields
.field private static final GROUP_TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

.field protected mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mTaskTotalSize:I

.field private final mTasks:Ljava/util/List;
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
    .locals 2

    .line 45
    const-string v0, "AbstractGroupTaskStep"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->GROUP_TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>()V

    .line 59
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->generationGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/xuexiang/xtask/core/ThreadType;)V
    .locals 2
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 98
    invoke-direct {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;)V

    .line 59
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->generationGroupName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>()V

    .line 59
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/ThreadType;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 120
    invoke-direct {p0, p2}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;)V

    .line 59
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 121
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 108
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>()V

    .line 59
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    iput-object p1, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mName:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p2}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    .line 111
    return-void
.end method

.method private generationGroupName()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupTaskStep-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->GROUP_TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;
    .locals 1
    .param p1, "taskStep"    # Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1, p0}, Lcom/xuexiang/xtask/core/step/ITaskStep;->setTaskStepLifecycle(Lcom/xuexiang/xtask/core/step/ITaskStepLifecycle;)Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 128
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    return-object p0
.end method

.method public bridge synthetic addTasks(Ljava/util/List;)Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->addTasks(Ljava/util/List;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public addTasks(Ljava/util/List;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ">;)",
            "Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;"
        }
    .end annotation

    .line 135
    .local p1, "taskStepList":Ljava/util/List;, "Ljava/util/List<Lcom/xuexiang/xtask/core/step/ITaskStep;>;"
    invoke-static {p1}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 137
    .local v1, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    invoke-virtual {p0, v1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    .line 138
    .end local v1    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    goto :goto_0

    .line 140
    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 195
    .local v1, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    invoke-interface {v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->cancel()V

    .line 196
    .end local v1    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    goto :goto_0

    .line 197
    :cond_1
    invoke-super {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->cancel()V

    .line 198
    return-void
.end method

.method public clearTask()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xuexiang/xtask/core/step/ITaskStep;

    .line 177
    .local v1, "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    invoke-interface {v1}, Lcom/xuexiang/xtask/core/step/ITaskStep;->recycle()V

    .line 178
    .end local v1    # "taskStep":Lcom/xuexiang/xtask/core/step/ITaskStep;
    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/xuexiang/xtask/core/param/impl/TaskResult;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    return-object v0
.end method

.method protected getTaskLogName()Ljava/lang/String;
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group task step ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->getName()Ljava/lang/String;

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

    .line 203
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    return-object v0
.end method

.method public getTasks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTasks:Ljava/util/List;

    return-object v0
.end method

.method protected initGroupTask()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->getTasks()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/TaskUtils;->findTaskStepSize(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskTotalSize:I

    .line 161
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 162
    sget-object v0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " initGroupTask, task total size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mTaskTotalSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->dTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V
    .locals 1
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    .line 167
    invoke-super {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->prepareTask(Lcom/xuexiang/xtask/core/param/impl/TaskParam;)V

    .line 168
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-virtual {v0, p1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 169
    return-void
.end method

.method public recycle()V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-virtual {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->clear()V

    .line 185
    invoke-virtual {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->clearTask()V

    .line 186
    invoke-super {p0}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->recycle()V

    .line 187
    return-void
.end method

.method public bridge synthetic setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/ITaskStep;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;
    .locals 1
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 145
    invoke-super {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    .line 146
    iget-object v0, p0, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->mResult:Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-virtual {v0, p1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->updateParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 147
    return-object p0
.end method

.method public bridge synthetic setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/ITaskStep;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    move-result-object p1

    return-object p1
.end method

.method public setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;
    .locals 0
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 152
    invoke-super {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;->setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    .line 153
    return-object p0
.end method

.method public bridge synthetic setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;->setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/core/step/impl/AbstractGroupTaskStep;

    move-result-object p1

    return-object p1
.end method
