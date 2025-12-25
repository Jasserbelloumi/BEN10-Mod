.class public Lorg/jdeferred/DeferredFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "DeferredFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TD;>;"
    }
.end annotation


# instance fields
.field protected final deferred:Lorg/jdeferred/Deferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/Deferred<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation
.end field

.field protected final startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 54
    .local p0, "this":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 55
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 56
    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TD;>;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TD;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 49
    new-instance v0, Lorg/jdeferred/impl/DeferredObject;

    invoke-direct {v0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 50
    sget-object v0, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredCallable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DeferredCallable<",
            "TD;TP;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    .local p1, "callable":Lorg/jdeferred/DeferredCallable;, "Lorg/jdeferred/DeferredCallable<TD;TP;>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 61
    invoke-virtual {p1}, Lorg/jdeferred/DeferredCallable;->getDeferred()Lorg/jdeferred/Deferred;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 62
    invoke-virtual {p1}, Lorg/jdeferred/DeferredCallable;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/DeferredRunnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DeferredRunnable<",
            "TP;>;)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    .local p1, "runnable":Lorg/jdeferred/DeferredRunnable;, "Lorg/jdeferred/DeferredRunnable<TP;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p1}, Lorg/jdeferred/DeferredRunnable;->getDeferred()Lorg/jdeferred/Deferred;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    .line 69
    invoke-virtual {p1}, Lorg/jdeferred/DeferredRunnable;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    .line 70
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 79
    .local p0, "this":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/DeferredFutureTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-interface {v0, v1}, Lorg/jdeferred/Deferred;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/jdeferred/DeferredFutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    .line 83
    .local v0, "result":Ljava/lang/Object;, "TD;"
    iget-object v1, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    invoke-interface {v1, v0}, Lorg/jdeferred/Deferred;->resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    nop

    .end local v0    # "result":Ljava/lang/Object;, "TD;"
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    iget-object v1, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/jdeferred/Deferred;->reject(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v0

    .line 87
    nop

    .line 88
    :goto_0
    return-void
.end method

.method public getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;
    .locals 1

    .line 91
    .local p0, "this":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    iget-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->startPolicy:Lorg/jdeferred/DeferredManager$StartPolicy;

    return-object v0
.end method

.method public promise()Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    iget-object v0, p0, Lorg/jdeferred/DeferredFutureTask;->deferred:Lorg/jdeferred/Deferred;

    invoke-interface {v0}, Lorg/jdeferred/Deferred;->promise()Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method
