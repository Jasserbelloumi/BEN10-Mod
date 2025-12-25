.class public Lcom/xuexiang/xtask/core/step/impl/AutoDestroyTaskChainCallback;
.super Ljava/lang/Object;
.source "AutoDestroyTaskChainCallback.java"

# interfaces
.implements Lcom/xuexiang/xtask/core/ITaskChainCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCallBackOnMainThread()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onTaskChainCancelled(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V
    .locals 0
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;

    .line 57
    return-void
.end method

.method public onTaskChainCompleted(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 0
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 46
    invoke-interface {p1}, Lcom/xuexiang/xtask/core/ITaskChainEngine;->destroy()V

    .line 47
    return-void
.end method

.method public onTaskChainError(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 0
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 52
    return-void
.end method

.method public onTaskChainStart(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V
    .locals 0
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;

    .line 42
    return-void
.end method
