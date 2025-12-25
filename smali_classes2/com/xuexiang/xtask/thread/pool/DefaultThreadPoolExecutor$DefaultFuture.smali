.class public Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;
.super Ljava/util/concurrent/FutureTask;
.source "DefaultThreadPoolExecutor.java"

# interfaces
.implements Lcom/xuexiang/xtask/thread/pool/cancel/IFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TV;>;",
        "Lcom/xuexiang/xtask/thread/pool/cancel/IFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "TV;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture<TV;>;"
    .local p2, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture<TV;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 123
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 131
    .local p0, "this":Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;, "Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture<TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xuexiang/xtask/thread/pool/DefaultThreadPoolExecutor$DefaultFuture;->cancel(Z)Z

    .line 132
    return-void
.end method
