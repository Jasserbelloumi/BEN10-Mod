.class public abstract Lorg/jdeferred/impl/AbstractDeferredManager;
.super Ljava/lang/Object;
.source "AbstractDeferredManager.java"

# interfaces
.implements Lorg/jdeferred/DeferredManager;


# instance fields
.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lorg/jdeferred/impl/AbstractDeferredManager;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/impl/AbstractDeferredManager;->log:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method protected assertNotEmpty([Ljava/lang/Object;)V
    .locals 2
    .param p1, "objects"    # [Ljava/lang/Object;

    .line 216
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    .line 219
    return-void

    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments is null or its length is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract isAutoSubmit()Z
.end method

.method protected abstract submit(Ljava/lang/Runnable;)V
.end method

.method protected abstract submit(Ljava/util/concurrent/Callable;)V
.end method

.method public when(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Lorg/jdeferred/DeferredFutureTask;

    invoke-direct {v0, p1}, Lorg/jdeferred/DeferredFutureTask;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public when(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 166
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TD;>;"
    new-instance v0, Lorg/jdeferred/DeferredFutureTask;

    invoke-direct {v0, p1}, Lorg/jdeferred/DeferredFutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public when(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 199
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TD;>;"
    new-instance v0, Lorg/jdeferred/impl/AbstractDeferredManager$1;

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

    invoke-direct {v0, p0, v1, p1}, Lorg/jdeferred/impl/AbstractDeferredManager$1;-><init>(Lorg/jdeferred/impl/AbstractDeferredManager;Lorg/jdeferred/DeferredManager$StartPolicy;Ljava/util/concurrent/Future;)V

    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredCallable;)Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public when(Lorg/jdeferred/DeferredCallable;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DeferredCallable<",
            "TD;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .line 156
    .local p1, "runnable":Lorg/jdeferred/DeferredCallable;, "Lorg/jdeferred/DeferredCallable<TD;TP;>;"
    new-instance v0, Lorg/jdeferred/DeferredFutureTask;

    invoke-direct {v0, p1}, Lorg/jdeferred/DeferredFutureTask;-><init>(Lorg/jdeferred/DeferredCallable;)V

    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DeferredFutureTask<",
            "TD;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .line 188
    .local p1, "task":Lorg/jdeferred/DeferredFutureTask;, "Lorg/jdeferred/DeferredFutureTask<TD;TP;>;"
    invoke-virtual {p1}, Lorg/jdeferred/DeferredFutureTask;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->AUTO:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jdeferred/DeferredFutureTask;->getStartPolicy()Lorg/jdeferred/DeferredManager$StartPolicy;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/DeferredManager$StartPolicy;->DEFAULT:Lorg/jdeferred/DeferredManager$StartPolicy;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/jdeferred/impl/AbstractDeferredManager;->isAutoSubmit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->submit(Ljava/lang/Runnable;)V

    .line 192
    :cond_1
    invoke-virtual {p1}, Lorg/jdeferred/DeferredFutureTask;->promise()Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public when(Lorg/jdeferred/DeferredRunnable;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DeferredRunnable<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "Ljava/lang/Void;",
            "Ljava/lang/Throwable;",
            "TP;>;"
        }
    .end annotation

    .line 151
    .local p1, "runnable":Lorg/jdeferred/DeferredRunnable;, "Lorg/jdeferred/DeferredRunnable<TP;>;"
    new-instance v0, Lorg/jdeferred/DeferredFutureTask;

    invoke-direct {v0, p1}, Lorg/jdeferred/DeferredFutureTask;-><init>(Lorg/jdeferred/DeferredRunnable;)V

    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public when(Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            "F:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 146
    .local p1, "promise":Lorg/jdeferred/Promise;, "Lorg/jdeferred/Promise<TD;TF;TP;>;"
    return-object p1
.end method

.method public varargs when([Ljava/lang/Runnable;)Lorg/jdeferred/Promise;
    .locals 3
    .param p1, "runnables"    # [Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Runnable;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 60
    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    .line 62
    .local v0, "promises":[Lorg/jdeferred/Promise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 63
    aget-object v2, p1, v1

    instance-of v2, v2, Lorg/jdeferred/DeferredRunnable;

    if-eqz v2, :cond_0

    .line 64
    aget-object v2, p1, v1

    check-cast v2, Lorg/jdeferred/DeferredRunnable;

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredRunnable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 66
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    .line 62
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object v1

    return-object v1
.end method

.method public varargs when([Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Callable<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 74
    .local p1, "callables":[Ljava/util/concurrent/Callable;, "[Ljava/util/concurrent/Callable<*>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 76
    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    .line 78
    .local v0, "promises":[Lorg/jdeferred/Promise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 79
    aget-object v2, p1, v1

    instance-of v2, v2, Lorg/jdeferred/DeferredCallable;

    if-eqz v2, :cond_0

    .line 80
    aget-object v2, p1, v1

    check-cast v2, Lorg/jdeferred/DeferredCallable;

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredCallable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 82
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Ljava/util/concurrent/Callable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object v1

    return-object v1
.end method

.method public varargs when([Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/concurrent/Future<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 128
    .local p1, "futures":[Ljava/util/concurrent/Future;, "[Ljava/util/concurrent/Future<*>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 130
    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    .line 132
    .local v0, "promises":[Lorg/jdeferred/Promise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 133
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Ljava/util/concurrent/Future;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object v1

    return-object v1
.end method

.method public varargs when([Lorg/jdeferred/DeferredCallable;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/DeferredCallable<",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 103
    .local p1, "callables":[Lorg/jdeferred/DeferredCallable;, "[Lorg/jdeferred/DeferredCallable<**>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 105
    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    .line 107
    .local v0, "promises":[Lorg/jdeferred/Promise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 108
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredCallable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object v1

    return-object v1
.end method

.method public varargs when([Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/DeferredFutureTask<",
            "**>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 116
    .local p1, "tasks":[Lorg/jdeferred/DeferredFutureTask;, "[Lorg/jdeferred/DeferredFutureTask<**>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 118
    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    .line 120
    .local v0, "promises":[Lorg/jdeferred/Promise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 121
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredFutureTask;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object v1

    return-object v1
.end method

.method public varargs when([Lorg/jdeferred/DeferredRunnable;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/DeferredRunnable<",
            "*>;)",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 90
    .local p1, "runnables":[Lorg/jdeferred/DeferredRunnable;, "[Lorg/jdeferred/DeferredRunnable<*>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 92
    array-length v0, p1

    new-array v0, v0, [Lorg/jdeferred/Promise;

    .line 94
    .local v0, "promises":[Lorg/jdeferred/Promise;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 95
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lorg/jdeferred/impl/AbstractDeferredManager;->when(Lorg/jdeferred/DeferredRunnable;)Lorg/jdeferred/Promise;

    move-result-object v2

    aput-object v2, v0, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdeferred/impl/AbstractDeferredManager;->when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;

    move-result-object v1

    return-object v1
.end method

.method public varargs when([Lorg/jdeferred/Promise;)Lorg/jdeferred/Promise;
    .locals 1
    .param p1, "promises"    # [Lorg/jdeferred/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/jdeferred/Promise;",
            ")",
            "Lorg/jdeferred/Promise<",
            "Lorg/jdeferred/multiple/MultipleResults;",
            "Lorg/jdeferred/multiple/OneReject;",
            "Lorg/jdeferred/multiple/MasterProgress;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractDeferredManager;->assertNotEmpty([Ljava/lang/Object;)V

    .line 141
    new-instance v0, Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-direct {v0, p1}, Lorg/jdeferred/multiple/MasterDeferredObject;-><init>([Lorg/jdeferred/Promise;)V

    invoke-virtual {v0}, Lorg/jdeferred/multiple/MasterDeferredObject;->promise()Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method
