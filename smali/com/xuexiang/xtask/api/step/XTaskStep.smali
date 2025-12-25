.class public Lcom/xuexiang/xtask/api/step/XTaskStep;
.super Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;
.source "XTaskStep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mIsAutoNotify:Z

.field private mName:Ljava/lang/String;

.field private mTaskCommand:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    const-string v0, "XTaskStep"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/api/step/XTaskStep;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/xuexiang/xtask/api/step/XTaskStep;->TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;Lcom/xuexiang/xtask/core/step/ITaskStepHandler;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p3, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;
    .param p4, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;
    .param p5, "taskHandler"    # Lcom/xuexiang/xtask/core/step/ITaskStepHandler;
    .param p6, "isAutoNotify"    # Z

    .line 147
    invoke-direct {p0, p3, p4}, Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;-><init>(Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)V

    .line 148
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mName:Ljava/lang/String;

    .line 149
    iput-object p2, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mTaskCommand:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 150
    invoke-virtual {p2, p0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->setTaskStepResultController(Lcom/xuexiang/xtask/core/step/ITaskStepController;)Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 151
    iput-boolean p6, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mIsAutoNotify:Z

    .line 152
    invoke-virtual {p0, p5}, Lcom/xuexiang/xtask/api/step/XTaskStep;->setTaskStepHandler(Lcom/xuexiang/xtask/core/step/ITaskStepHandler;)Lcom/xuexiang/xtask/core/step/impl/AbstractTaskStep;

    .line 153
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;Lcom/xuexiang/xtask/core/step/ITaskStepHandler;ZLcom/xuexiang/xtask/api/step/XTaskStep$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p3, "x2"    # Lcom/xuexiang/xtask/core/ThreadType;
    .param p4, "x3"    # Lcom/xuexiang/xtask/core/param/ITaskParam;
    .param p5, "x4"    # Lcom/xuexiang/xtask/core/step/ITaskStepHandler;
    .param p6, "x5"    # Z
    .param p7, "x6"    # Lcom/xuexiang/xtask/api/step/XTaskStep$1;

    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/xuexiang/xtask/api/step/XTaskStep;-><init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;Lcom/xuexiang/xtask/core/step/ITaskStepHandler;Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 40
    sget-object v0, Lcom/xuexiang/xtask/api/step/XTaskStep;->TASK_NUMBER:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 2
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 56
    new-instance v0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;-><init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/api/step/XTaskStep$1;)V

    invoke-virtual {v0}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->build()Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 2
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 78
    new-instance v0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;-><init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/api/step/XTaskStep$1;)V

    .line 79
    invoke-virtual {v0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->build()Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    .line 78
    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 2
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;
    .param p2, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 105
    new-instance v0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;-><init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/api/step/XTaskStep$1;)V

    .line 106
    invoke-virtual {v0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p2}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->build()Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    .line 105
    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 2
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 91
    new-instance v0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;-><init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/api/step/XTaskStep$1;)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->build()Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public static getTask(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Z)Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 2
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p1, "isAutoNotify"    # Z

    .line 67
    new-instance v0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;-><init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/api/step/XTaskStep$1;)V

    invoke-virtual {v0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->setIsAutoNotify(Z)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->build()Lcom/xuexiang/xtask/api/step/XTaskStep;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 2
    .param p0, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 118
    new-instance v0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;-><init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/api/step/XTaskStep$1;)V

    return-object v0
.end method


# virtual methods
.method public doTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    iget-boolean v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mIsAutoNotify:Z

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mTaskCommand:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    invoke-virtual {v0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    nop

    .line 170
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mTaskCommand:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    invoke-virtual {v0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->notifyTaskSucceed()V

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xuexiang/xtask/api/step/XTaskStep;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xuexiang/xtask/api/step/XTaskStep;->getTaskLogName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has error\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    const/4 v1, -0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/xuexiang/xtask/api/step/XTaskStep;->notifyTaskFailed(ILjava/lang/String;)V

    .line 168
    return-void

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mTaskCommand:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    invoke-virtual {v0}, Lcom/xuexiang/xtask/core/step/impl/TaskCommand;->run()V

    .line 174
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep;->mName:Ljava/lang/String;

    return-object v0
.end method
