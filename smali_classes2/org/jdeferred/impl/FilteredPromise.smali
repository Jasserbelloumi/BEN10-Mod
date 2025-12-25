.class public Lorg/jdeferred/impl/FilteredPromise;
.super Lorg/jdeferred/impl/DeferredObject;
.source "FilteredPromise.java"

# interfaces
.implements Lorg/jdeferred/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;,
        Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;,
        Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        "D_OUT:",
        "Ljava/lang/Object;",
        "F_OUT:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jdeferred/impl/DeferredObject<",
        "TD_OUT;TF_OUT;TP_OUT;>;",
        "Lorg/jdeferred/Promise<",
        "TD_OUT;TF_OUT;TP_OUT;>;"
    }
.end annotation


# static fields
.field protected static final NO_OP_DONE_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

.field protected static final NO_OP_FAIL_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

.field protected static final NO_OP_PROGRESS_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;


# instance fields
.field private final doneFilter:Lorg/jdeferred/DoneFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;"
        }
    .end annotation
.end field

.field private final failFilter:Lorg/jdeferred/FailFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;"
        }
    .end annotation
.end field

.field private final progressFilter:Lorg/jdeferred/ProgressFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdeferred/ProgressFilter<",
            "TP;TP_OUT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

    invoke-direct {v0}, Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;-><init>()V

    sput-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_DONE_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

    .line 29
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

    invoke-direct {v0}, Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;-><init>()V

    sput-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_FAIL_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

    .line 30
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;

    invoke-direct {v0}, Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;-><init>()V

    sput-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_PROGRESS_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;Lorg/jdeferred/DoneFilter;Lorg/jdeferred/FailFilter;Lorg/jdeferred/ProgressFilter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lorg/jdeferred/DoneFilter<",
            "TD;TD_OUT;>;",
            "Lorg/jdeferred/FailFilter<",
            "TF;TF_OUT;>;",
            "Lorg/jdeferred/ProgressFilter<",
            "TP;TP_OUT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/jdeferred/impl/FilteredPromise;, "Lorg/jdeferred/impl/FilteredPromise<TD;TF;TP;TD_OUT;TF_OUT;TP_OUT;>;"
    .local p1, "promise":Lorg/jdeferred/Promise;, "Lorg/jdeferred/Promise<TD;TF;TP;>;"
    .local p2, "doneFilter":Lorg/jdeferred/DoneFilter;, "Lorg/jdeferred/DoneFilter<TD;TD_OUT;>;"
    .local p3, "failFilter":Lorg/jdeferred/FailFilter;, "Lorg/jdeferred/FailFilter<TF;TF_OUT;>;"
    .local p4, "progressFilter":Lorg/jdeferred/ProgressFilter;, "Lorg/jdeferred/ProgressFilter<TP;TP_OUT;>;"
    invoke-direct {p0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    .line 37
    if-nez p2, :cond_0

    sget-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_DONE_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lorg/jdeferred/impl/FilteredPromise;->doneFilter:Lorg/jdeferred/DoneFilter;

    .line 38
    if-nez p3, :cond_1

    sget-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_FAIL_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpFailFilter;

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lorg/jdeferred/impl/FilteredPromise;->failFilter:Lorg/jdeferred/FailFilter;

    .line 39
    if-nez p4, :cond_2

    sget-object v0, Lorg/jdeferred/impl/FilteredPromise;->NO_OP_PROGRESS_FILTER:Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;

    goto :goto_2

    :cond_2
    move-object v0, p4

    :goto_2
    iput-object v0, p0, Lorg/jdeferred/impl/FilteredPromise;->progressFilter:Lorg/jdeferred/ProgressFilter;

    .line 41
    new-instance v0, Lorg/jdeferred/impl/FilteredPromise$3;

    invoke-direct {v0, p0}, Lorg/jdeferred/impl/FilteredPromise$3;-><init>(Lorg/jdeferred/impl/FilteredPromise;)V

    invoke-interface {p1, v0}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/impl/FilteredPromise$2;

    invoke-direct {v1, p0}, Lorg/jdeferred/impl/FilteredPromise$2;-><init>(Lorg/jdeferred/impl/FilteredPromise;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/impl/FilteredPromise$1;

    invoke-direct {v1, p0}, Lorg/jdeferred/impl/FilteredPromise$1;-><init>(Lorg/jdeferred/impl/FilteredPromise;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/jdeferred/impl/FilteredPromise;)Lorg/jdeferred/ProgressFilter;
    .locals 1
    .param p0, "x0"    # Lorg/jdeferred/impl/FilteredPromise;

    .line 27
    iget-object v0, p0, Lorg/jdeferred/impl/FilteredPromise;->progressFilter:Lorg/jdeferred/ProgressFilter;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jdeferred/impl/FilteredPromise;)Lorg/jdeferred/FailFilter;
    .locals 1
    .param p0, "x0"    # Lorg/jdeferred/impl/FilteredPromise;

    .line 27
    iget-object v0, p0, Lorg/jdeferred/impl/FilteredPromise;->failFilter:Lorg/jdeferred/FailFilter;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jdeferred/impl/FilteredPromise;)Lorg/jdeferred/DoneFilter;
    .locals 1
    .param p0, "x0"    # Lorg/jdeferred/impl/FilteredPromise;

    .line 27
    iget-object v0, p0, Lorg/jdeferred/impl/FilteredPromise;->doneFilter:Lorg/jdeferred/DoneFilter;

    return-object v0
.end method
