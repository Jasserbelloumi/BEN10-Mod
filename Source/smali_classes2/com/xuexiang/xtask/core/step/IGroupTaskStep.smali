.class public interface abstract Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
.super Ljava/lang/Object;
.source "IGroupTaskStep.java"


# virtual methods
.method public abstract addTask(Lcom/xuexiang/xtask/core/step/ITaskStep;)Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
.end method

.method public abstract addTasks(Ljava/util/List;)Lcom/xuexiang/xtask/core/step/IGroupTaskStep;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xuexiang/xtask/core/step/ITaskStep;",
            ">;)",
            "Lcom/xuexiang/xtask/core/step/IGroupTaskStep;"
        }
    .end annotation
.end method

.method public abstract clearTask()V
.end method
