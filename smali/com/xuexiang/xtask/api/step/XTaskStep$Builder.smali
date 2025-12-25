.class public final Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
.super Ljava/lang/Object;
.source "XTaskStep.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuexiang/xtask/api/step/XTaskStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field command:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

.field isAutoNotify:Z

.field name:Ljava/lang/String;

.field taskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

.field taskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

.field threadType:Lcom/xuexiang/xtask/core/ThreadType;


# direct methods
.method private constructor <init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)V
    .locals 1
    .param p1, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    sget-object v0, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC:Lcom/xuexiang/xtask/core/ThreadType;

    iput-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->threadType:Lcom/xuexiang/xtask/core/ThreadType;

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->isAutoNotify:Z

    .line 214
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->command:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/api/step/XTaskStep$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;
    .param p2, "x1"    # Lcom/xuexiang/xtask/api/step/XTaskStep$1;

    .line 182
    invoke-direct {p0, p1}, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;-><init>(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/xuexiang/xtask/api/step/XTaskStep;
    .locals 9

    .line 248
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->command:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    const-string v1, "XTaskStep.Builder command can not be null!"

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/utils/CommonUtils;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/xuexiang/xtask/utils/CommonUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XTaskStep-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xuexiang/xtask/api/step/XTaskStep;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->name:Ljava/lang/String;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->taskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskParam;

    invoke-direct {v0}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;-><init>()V

    iput-object v0, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->taskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 256
    :cond_1
    new-instance v0, Lcom/xuexiang/xtask/api/step/XTaskStep;

    iget-object v2, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->command:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    iget-object v4, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->threadType:Lcom/xuexiang/xtask/core/ThreadType;

    iget-object v5, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->taskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    iget-object v6, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->taskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    iget-boolean v7, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->isAutoNotify:Z

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/xuexiang/xtask/api/step/XTaskStep;-><init>(Ljava/lang/String;Lcom/xuexiang/xtask/core/step/impl/TaskCommand;Lcom/xuexiang/xtask/core/ThreadType;Lcom/xuexiang/xtask/core/param/ITaskParam;Lcom/xuexiang/xtask/core/step/ITaskStepHandler;ZLcom/xuexiang/xtask/api/step/XTaskStep$1;)V

    return-object v0
.end method

.method public setCommand(Lcom/xuexiang/xtask/core/step/impl/TaskCommand;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 0
    .param p1, "command"    # Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 223
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->command:Lcom/xuexiang/xtask/core/step/impl/TaskCommand;

    .line 224
    return-object p0
.end method

.method public setIsAutoNotify(Z)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 0
    .param p1, "isAutoNotify"    # Z

    .line 243
    iput-boolean p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->isAutoNotify:Z

    .line 244
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->name:Ljava/lang/String;

    .line 219
    return-object p0
.end method

.method public setTaskHandler(Lcom/xuexiang/xtask/core/step/ITaskStepHandler;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 0
    .param p1, "taskHandler"    # Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    .line 238
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->taskHandler:Lcom/xuexiang/xtask/core/step/ITaskStepHandler;

    .line 239
    return-object p0
.end method

.method public setTaskParam(Lcom/xuexiang/xtask/core/param/ITaskParam;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 0
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 233
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->taskParam:Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 234
    return-object p0
.end method

.method public setThreadType(Lcom/xuexiang/xtask/core/ThreadType;)Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;
    .locals 0
    .param p1, "threadType"    # Lcom/xuexiang/xtask/core/ThreadType;

    .line 228
    iput-object p1, p0, Lcom/xuexiang/xtask/api/step/XTaskStep$Builder;->threadType:Lcom/xuexiang/xtask/core/ThreadType;

    .line 229
    return-object p0
.end method
