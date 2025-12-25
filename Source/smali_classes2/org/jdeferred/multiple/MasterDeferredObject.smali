.class public Lorg/jdeferred/multiple/MasterDeferredObject;
.super Lorg/jdeferred/impl/DeferredObject;
.source "MasterDeferredObject.java"

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jdeferred/impl/DeferredObject<",
        "Lorg/jdeferred/multiple/MultipleResults;",
        "Lorg/jdeferred/multiple/OneReject;",
        "Lorg/jdeferred/multiple/MasterProgress;",
        ">;",
        "Lorg/jdeferred/Promise<",
        "Lorg/jdeferred/multiple/MultipleResults;",
        "Lorg/jdeferred/multiple/OneReject;",
        "Lorg/jdeferred/multiple/MasterProgress;",
        ">;"
    }
.end annotation


# instance fields
.field private final doneCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final failCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final numberOfPromises:I

.field private final results:Lorg/jdeferred/multiple/MultipleResults;


# direct methods
.method public varargs constructor <init>([Lorg/jdeferred/Promise;)V
    .locals 8
    .param p1, "promises"    # [Lorg/jdeferred/Promise;

    .line 55
    invoke-direct {p0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->doneCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->failCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 58
    array-length v0, p1

    iput v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->numberOfPromises:I

    .line 59
    new-instance v1, Lorg/jdeferred/multiple/MultipleResults;

    invoke-direct {v1, v0}, Lorg/jdeferred/multiple/MultipleResults;-><init>(I)V

    iput-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->results:Lorg/jdeferred/multiple/MultipleResults;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "count":I
    move-object v1, p1

    .local v1, "arr$":[Lorg/jdeferred/Promise;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 63
    .local v4, "promise":Lorg/jdeferred/Promise;
    add-int/lit8 v5, v0, 0x1

    .line 64
    .local v0, "index":I
    .local v5, "count":I
    new-instance v6, Lorg/jdeferred/multiple/MasterDeferredObject$3;

    invoke-direct {v6, p0, v0, v4}, Lorg/jdeferred/multiple/MasterDeferredObject$3;-><init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V

    invoke-interface {v4, v6}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object v6

    new-instance v7, Lorg/jdeferred/multiple/MasterDeferredObject$2;

    invoke-direct {v7, p0, v0, v4}, Lorg/jdeferred/multiple/MasterDeferredObject$2;-><init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V

    invoke-interface {v6, v7}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    move-result-object v6

    new-instance v7, Lorg/jdeferred/multiple/MasterDeferredObject$1;

    invoke-direct {v7, p0, v0, v4}, Lorg/jdeferred/multiple/MasterDeferredObject$1;-><init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V

    invoke-interface {v6, v7}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    .line 62
    .end local v0    # "index":I
    .end local v4    # "promise":Lorg/jdeferred/Promise;
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    .line 113
    .end local v1    # "arr$":[Lorg/jdeferred/Promise;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v5    # "count":I
    .local v0, "count":I
    :cond_0
    return-void

    .line 57
    .end local v0    # "count":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Promises is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/jdeferred/multiple/MasterDeferredObject;)Lorg/jdeferred/multiple/MultipleResults;
    .locals 1
    .param p0, "x0"    # Lorg/jdeferred/multiple/MasterDeferredObject;

    .line 46
    iget-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->results:Lorg/jdeferred/multiple/MultipleResults;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/jdeferred/multiple/MasterDeferredObject;

    .line 46
    iget-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->doneCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/jdeferred/multiple/MasterDeferredObject;

    .line 46
    iget-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->failCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jdeferred/multiple/MasterDeferredObject;)I
    .locals 1
    .param p0, "x0"    # Lorg/jdeferred/multiple/MasterDeferredObject;

    .line 46
    iget v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject;->numberOfPromises:I

    return v0
.end method
