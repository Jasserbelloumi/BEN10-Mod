.class public abstract Lorg/jdeferred/impl/AbstractPromise;
.super Ljava/lang/Object;
.source "AbstractPromise.java"

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdeferred/Promise<",
        "TD;TF;TP;>;"
    }
.end annotation


# instance fields
.field protected final alwaysCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdeferred/AlwaysCallback<",
            "TD;TF;>;>;"
        }
    .end annotation
.end field

.field protected final doneCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;>;"
        }
    .end annotation
.end field

.field protected final failCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;>;"
        }
    .end annotation
.end field

.field protected final log:Lorg/slf4j/Logger;

.field protected final progressCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;>;"
        }
    .end annotation
.end field

.field protected rejectResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field protected resolveResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field

.field protected volatile state:Lorg/jdeferred/Promise$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-class v0, Lorg/jdeferred/impl/AbstractPromise;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->log:Lorg/slf4j/Logger;

    .line 44
    sget-object v0, Lorg/jdeferred/Promise$State;->PENDING:Lorg/jdeferred/Promise$State;

    iput-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->state:Lorg/jdeferred/Promise$State;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->doneCallbacks:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->failCallbacks:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->progressCallbacks:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->alwaysCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public always(Lorg/jdeferred/AlwaysCallback;)Lorg/jdeferred/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/AlwaysCallback<",
            "TD;TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/AlwaysCallback;, "Lorg/jdeferred/AlwaysCallback<TD;TF;>;"
    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/impl/AbstractPromise;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->alwaysCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->state:Lorg/jdeferred/Promise$State;

    iget-object v1, p0, Lorg/jdeferred/impl/AbstractPromise;->resolveResult:Ljava/lang/Object;

    iget-object v2, p0, Lorg/jdeferred/impl/AbstractPromise;->rejectResult:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/jdeferred/impl/AbstractPromise;->triggerAlways(Lorg/jdeferred/AlwaysCallback;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    :goto_0
    monitor-exit p0

    .line 92
    return-object p0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    monitor-enter p0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/impl/AbstractPromise;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->resolveResult:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/jdeferred/impl/AbstractPromise;->triggerDone(Lorg/jdeferred/DoneCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->doneCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    monitor-exit p0

    .line 68
    return-object p0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/FailCallback;, "Lorg/jdeferred/FailCallback<TF;>;"
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/impl/AbstractPromise;->isRejected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->rejectResult:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lorg/jdeferred/impl/AbstractPromise;->triggerFail(Lorg/jdeferred/FailCallback;Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->failCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :goto_0
    monitor-exit p0

    .line 80
    return-object p0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPending()Z
    .locals 2

    .line 227
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->state:Lorg/jdeferred/Promise$State;

    sget-object v1, Lorg/jdeferred/Promise$State;->PENDING:Lorg/jdeferred/Promise$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRejected()Z
    .locals 2

    .line 237
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->state:Lorg/jdeferred/Promise$State;

    sget-object v1, Lorg/jdeferred/Promise$State;->REJECTED:Lorg/jdeferred/Promise$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResolved()Z
    .locals 2

    .line 232
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->state:Lorg/jdeferred/Promise$State;

    sget-object v1, Lorg/jdeferred/Promise$State;->RESOLVED:Lorg/jdeferred/Promise$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/ProgressCallback;, "Lorg/jdeferred/ProgressCallback<TP;>;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->progressCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-object p0
.end method

.method public state()Lorg/jdeferred/Promise$State;
    .locals 1

    .line 56
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->state:Lorg/jdeferred/Promise$State;

    return-object v0
.end method

.method public then(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractPromise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object v0

    return-object v0
.end method

.method public then(Lorg/jdeferred/DoneCallback;Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneCallback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    .local p2, "failCallback":Lorg/jdeferred/FailCallback;, "Lorg/jdeferred/FailCallback<TF;>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractPromise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    .line 172
    invoke-virtual {p0, p2}, Lorg/jdeferred/impl/AbstractPromise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    .line 173
    return-object p0
.end method

.method public then(Lorg/jdeferred/DoneCallback;Lorg/jdeferred/FailCallback;Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;)",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneCallback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    .local p2, "failCallback":Lorg/jdeferred/FailCallback;, "Lorg/jdeferred/FailCallback<TF;>;"
    .local p3, "progressCallback":Lorg/jdeferred/ProgressCallback;, "Lorg/jdeferred/ProgressCallback<TP;>;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/impl/AbstractPromise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    .line 180
    invoke-virtual {p0, p2}, Lorg/jdeferred/impl/AbstractPromise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    .line 181
    invoke-virtual {p0, p3}, Lorg/jdeferred/impl/AbstractPromise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    .line 182
    return-object p0
.end method

.method public then(Lorg/jdeferred/DoneFilter;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneFilter":Lorg/jdeferred/DoneFilter;, "Lorg/jdeferred/DoneFilter<TD;TD_OUT;>;"
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/jdeferred/impl/FilteredPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)V

    return-object v0
.end method

.method public then(Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;",
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneFilter":Lorg/jdeferred/DoneFilter;, "Lorg/jdeferred/DoneFilter<TD;TD_OUT;>;"
    .local p2, "failFilter":Lorg/jdeferred/FailFilter;, "Lorg/jdeferred/FailFilter<TF;TF_OUT;>;"
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/jdeferred/impl/FilteredPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)V

    return-object v0
.end method

.method public then(Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;",
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;",
            "Lorg/jdeferred/ProgressFilter<",
            "TP;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneFilter":Lorg/jdeferred/DoneFilter;, "Lorg/jdeferred/DoneFilter<TD;TD_OUT;>;"
    .local p2, "failFilter":Lorg/jdeferred/FailFilter;, "Lorg/jdeferred/FailFilter<TF;TF_OUT;>;"
    .local p3, "progressFilter":Lorg/jdeferred/ProgressFilter;, "Lorg/jdeferred/ProgressFilter<TP;TP_OUT;>;"
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jdeferred/impl/FilteredPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)V

    return-object v0
.end method

.method public then(Lorg/jdeferred/DonePipe;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DonePipe<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneFilter":Lorg/jdeferred/DonePipe;, "Lorg/jdeferred/DonePipe<TD;TD_OUT;TF_OUT;TP_OUT;>;"
    new-instance v0, Lorg/jdeferred/impl/PipedPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lorg/jdeferred/impl/PipedPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)V

    return-object v0
.end method

.method public then(Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;)Lorg/jdeferred/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DonePipe<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/FailPipe<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneFilter":Lorg/jdeferred/DonePipe;, "Lorg/jdeferred/DonePipe<TD;TD_OUT;TF_OUT;TP_OUT;>;"
    .local p2, "failFilter":Lorg/jdeferred/FailPipe;, "Lorg/jdeferred/FailPipe<TF;TD_OUT;TF_OUT;TP_OUT;>;"
    new-instance v0, Lorg/jdeferred/impl/PipedPromise;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/jdeferred/impl/PipedPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)V

    return-object v0
.end method

.method public then(Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)Lorg/jdeferred/Promise;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D_OUT:",
            "Ljava/lang/Object;",
            "F_OUT:",
            "Ljava/lang/Object;",
            "P_OUT:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/jdeferred/DonePipe<",
            "TD;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/FailPipe<",
            "TF;TD_OUT;TF_OUT;TP_OUT;>;",
            "Lorg/jdeferred/ProgressPipe<",
            "TP;TD_OUT;TF_OUT;TP_OUT;>;)",
            "Lorg/jdeferred/Promise<",
            "TD_OUT;TF_OUT;TP_OUT;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "doneFilter":Lorg/jdeferred/DonePipe;, "Lorg/jdeferred/DonePipe<TD;TD_OUT;TF_OUT;TP_OUT;>;"
    .local p2, "failFilter":Lorg/jdeferred/FailPipe;, "Lorg/jdeferred/FailPipe<TF;TD_OUT;TF_OUT;TP_OUT;>;"
    .local p3, "progressFilter":Lorg/jdeferred/ProgressPipe;, "Lorg/jdeferred/ProgressPipe<TP;TD_OUT;TF_OUT;TP_OUT;>;"
    new-instance v0, Lorg/jdeferred/impl/PipedPromise;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jdeferred/impl/PipedPromise;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DonePipe;Lorg/jdeferred/FailPipe;Lorg/jdeferred/ProgressPipe;)V

    return-object v0
.end method

.method protected triggerAlways(Lorg/jdeferred/AlwaysCallback;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "state"    # Lorg/jdeferred/Promise$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/AlwaysCallback<",
            "TD;TF;>;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;)V"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/AlwaysCallback;, "Lorg/jdeferred/AlwaysCallback<TD;TF;>;"
    .local p3, "resolve":Ljava/lang/Object;, "TD;"
    .local p4, "reject":Ljava/lang/Object;, "TF;"
    invoke-interface {p1, p2, p3, p4}, Lorg/jdeferred/AlwaysCallback;->onAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method protected triggerAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lorg/jdeferred/Promise$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;)V"
        }
    .end annotation

    .line 140
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p2, "resolve":Ljava/lang/Object;, "TD;"
    .local p3, "reject":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->alwaysCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdeferred/AlwaysCallback;

    .line 142
    .local v1, "callback":Lorg/jdeferred/AlwaysCallback;, "Lorg/jdeferred/AlwaysCallback<TD;TF;>;"
    :try_start_0
    invoke-virtual {p0, v1, p1, p2, p3}, Lorg/jdeferred/impl/AbstractPromise;->triggerAlways(Lorg/jdeferred/AlwaysCallback;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jdeferred/impl/AbstractPromise;->log:Lorg/slf4j/Logger;

    const-string v4, "an uncaught exception occured in a AlwaysCallback"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    .end local v1    # "callback":Lorg/jdeferred/AlwaysCallback;, "Lorg/jdeferred/AlwaysCallback<TD;TF;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 147
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->alwaysCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 149
    monitor-enter p0

    .line 150
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit p0

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected triggerDone(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "resolved":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->doneCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdeferred/DoneCallback;

    .line 98
    .local v1, "callback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/jdeferred/impl/AbstractPromise;->triggerDone(Lorg/jdeferred/DoneCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_1

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jdeferred/impl/AbstractPromise;->log:Lorg/slf4j/Logger;

    const-string v4, "an uncaught exception occured in a DoneCallback"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v1    # "callback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 103
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->doneCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    return-void
.end method

.method protected triggerDone(Lorg/jdeferred/DoneCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    .local p2, "resolved":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p2}, Lorg/jdeferred/DoneCallback;->onDone(Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method protected triggerFail(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "rejected":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->failCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdeferred/FailCallback;

    .line 113
    .local v1, "callback":Lorg/jdeferred/FailCallback;, "Lorg/jdeferred/FailCallback<TF;>;"
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/jdeferred/impl/AbstractPromise;->triggerFail(Lorg/jdeferred/FailCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_1

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jdeferred/impl/AbstractPromise;->log:Lorg/slf4j/Logger;

    const-string v4, "an uncaught exception occured in a FailCallback"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .end local v1    # "callback":Lorg/jdeferred/FailCallback;, "Lorg/jdeferred/FailCallback<TF;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 118
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->failCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 119
    return-void
.end method

.method protected triggerFail(Lorg/jdeferred/FailCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;TF;)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/FailCallback;, "Lorg/jdeferred/FailCallback<TF;>;"
    .local p2, "rejected":Ljava/lang/Object;, "TF;"
    invoke-interface {p1, p2}, Lorg/jdeferred/FailCallback;->onFail(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method protected triggerProgress(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "progress":Ljava/lang/Object;, "TP;"
    iget-object v0, p0, Lorg/jdeferred/impl/AbstractPromise;->progressCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdeferred/ProgressCallback;

    .line 128
    .local v1, "callback":Lorg/jdeferred/ProgressCallback;, "Lorg/jdeferred/ProgressCallback<TP;>;"
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lorg/jdeferred/impl/AbstractPromise;->triggerProgress(Lorg/jdeferred/ProgressCallback;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_1

    .line 129
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/jdeferred/impl/AbstractPromise;->log:Lorg/slf4j/Logger;

    const-string v4, "an uncaught exception occured in a ProgressCallback"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .end local v1    # "callback":Lorg/jdeferred/ProgressCallback;, "Lorg/jdeferred/ProgressCallback<TP;>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 133
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected triggerProgress(Lorg/jdeferred/ProgressCallback;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;TP;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/ProgressCallback;, "Lorg/jdeferred/ProgressCallback<TP;>;"
    .local p2, "progress":Ljava/lang/Object;, "TP;"
    invoke-interface {p1, p2}, Lorg/jdeferred/ProgressCallback;->onProgress(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public waitSafely()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 241
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/jdeferred/impl/AbstractPromise;->waitSafely(J)V

    .line 242
    return-void
.end method

.method public waitSafely(J)V
    .locals 8
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/jdeferred/impl/AbstractPromise;, "Lorg/jdeferred/impl/AbstractPromise<TD;TF;TP;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 245
    .local v0, "startTime":J
    monitor-enter p0

    .line 246
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/jdeferred/impl/AbstractPromise;->isPending()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 248
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_1

    .line 249
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 251
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 252
    .local v4, "elapsed":J
    sub-long v6, p1, v4

    .line 253
    .local v6, "waitTime":J
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    .end local v4    # "elapsed":J
    .end local v6    # "waitTime":J
    :goto_0
    nop

    .line 260
    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-ltz v2, :cond_0

    .line 261
    monitor-exit p0

    return-void

    .line 255
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 257
    nop

    .end local v0    # "startTime":J
    .end local p1    # "timeout":J
    throw v2

    .line 266
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "startTime":J
    .restart local p1    # "timeout":J
    :cond_2
    monitor-exit p0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
