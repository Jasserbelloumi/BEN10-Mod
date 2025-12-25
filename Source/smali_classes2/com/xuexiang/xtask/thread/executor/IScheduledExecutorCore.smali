.class public interface abstract Lcom/xuexiang/xtask/thread/executor/IScheduledExecutorCore;
.super Ljava/lang/Object;
.source "IScheduledExecutorCore.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/executor/IExecutorCore;


# virtual methods
.method public abstract schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method

.method public abstract scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/xuexiang/xtask/thread/pool/cancel/ICancelable;
.end method
