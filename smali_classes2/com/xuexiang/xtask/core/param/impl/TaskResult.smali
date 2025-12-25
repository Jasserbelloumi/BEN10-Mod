.class public Lcom/xuexiang/xtask/core/param/impl/TaskResult;
.super Lcom/xuexiang/xtask/core/param/impl/TaskParam;
.source "TaskResult.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/param/ITaskResult;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCode:I

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "TaskResult"

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->getLogTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;-><init>()V

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->setResult(ILjava/lang/String;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/xuexiang/xtask/core/param/ITaskParam;)V
    .locals 2
    .param p1, "taskParam"    # Lcom/xuexiang/xtask/core/param/ITaskParam;

    .line 97
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;-><init>()V

    .line 98
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskParam;->getDataStore()Lcom/xuexiang/xtask/core/param/IDataStore;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->updateParam(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/IDataStore;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 0
    .param p1, "taskResult"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 106
    invoke-direct {p0}, Lcom/xuexiang/xtask/core/param/impl/TaskParam;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->saveResult(Lcom/xuexiang/xtask/core/param/ITaskResult;)V

    .line 108
    return-void
.end method

.method public static failed()Lcom/xuexiang/xtask/core/param/impl/TaskResult;
    .locals 3

    .line 51
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    const/4 v1, -0x1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static failed(I)Lcom/xuexiang/xtask/core/param/impl/TaskResult;
    .locals 2
    .param p0, "code"    # I

    .line 61
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static failed(ILjava/lang/String;)Lcom/xuexiang/xtask/core/param/impl/TaskResult;
    .locals 1
    .param p0, "code"    # I
    .param p1, "message"    # Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    invoke-direct {v0, p0, p1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static succeed()Lcom/xuexiang/xtask/core/param/impl/TaskResult;
    .locals 3

    .line 42
    new-instance v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mCode:I

    return v0
.end method

.method public getDetailMessage()Ljava/lang/String;
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[code]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", [msg]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public saveResult(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 2
    .param p1, "taskResult"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 155
    if-nez p1, :cond_0

    .line 156
    sget-object v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->TAG:Ljava/lang/String;

    const-string v1, "saveResult error, taskResult is null!"

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 159
    :cond_0
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getDataStore()Lcom/xuexiang/xtask/core/param/IDataStore;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->updateParam(Ljava/lang/String;Lcom/xuexiang/xtask/core/param/IDataStore;)V

    .line 160
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getCode()I

    move-result v0

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->setResult(ILjava/lang/String;)V

    .line 161
    return-void
.end method

.method public saveResultNotPath(Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 2
    .param p1, "taskResult"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 165
    if-nez p1, :cond_0

    .line 166
    sget-object v0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->TAG:Ljava/lang/String;

    const-string v1, "saveResultNotPath error, taskResult is null!"

    invoke-static {v0, v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->eTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 169
    :cond_0
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getDataStore()Lcom/xuexiang/xtask/core/param/IDataStore;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->updateData(Lcom/xuexiang/xtask/core/param/IDataStore;)V

    .line 170
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getCode()I

    move-result v0

    invoke-interface {p1}, Lcom/xuexiang/xtask/core/param/ITaskResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->setResult(ILjava/lang/String;)V

    .line 171
    return-void
.end method

.method public setCode(I)Lcom/xuexiang/xtask/core/param/impl/TaskResult;
    .locals 0
    .param p1, "code"    # I

    .line 127
    iput p1, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mCode:I

    .line 128
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/xuexiang/xtask/core/param/impl/TaskResult;
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mMessage:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setResult(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 149
    iput p1, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mCode:I

    .line 150
    iput-object p2, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mMessage:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskResult{mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xuexiang/xtask/core/param/impl/TaskResult;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
