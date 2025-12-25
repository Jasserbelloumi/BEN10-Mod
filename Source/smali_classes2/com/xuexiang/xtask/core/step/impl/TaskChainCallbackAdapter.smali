.class public abstract Lcom/xuexiang/xtask/core/step/impl/TaskChainCallbackAdapter;
.super Ljava/lang/Object;
.source "TaskChainCallbackAdapter.java"

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
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskChainCancelled(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V
    .locals 0
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;

    .line 52
    return-void
.end method

.method public onTaskChainError(Lcom/xuexiang/xtask/core/ITaskChainEngine;Lcom/xuexiang/xtask/core/param/ITaskResult;)V
    .locals 0
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;
    .param p2, "result"    # Lcom/xuexiang/xtask/core/param/ITaskResult;

    .line 47
    return-void
.end method

.method public onTaskChainStart(Lcom/xuexiang/xtask/core/ITaskChainEngine;)V
    .locals 0
    .param p1, "engine"    # Lcom/xuexiang/xtask/core/ITaskChainEngine;

    .line 42
    return-void
.end method
