.class public final Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
.super Ljava/lang/Object;
.source "BrvahAsyncDiffer.kt"

# interfaces
.implements Lcom/chad/library/adapter/base/diff/DifferImp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/chad/library/adapter/base/diff/DifferImp<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001/B%\u0012\u0010\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0013\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0015J\u001b\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0017J\u0016\u0010\u0018\u001a\u00020\u00132\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u001aJ\u0016\u0010\u001b\u001a\u00020\u00132\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nH\u0016J%\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00028\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0002\u0010 J\u0006\u0010!\u001a\u00020\u0013J(\u0010\"\u001a\u00020\u00132\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00028\u00000\t2\u0006\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0002J \u0010(\u001a\u00020\u00132\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001a2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0002J\u0013\u0010*\u001a\u00020\u00132\u0006\u0010+\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010,\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u000eJ\u0014\u0010-\u001a\u00020\u00132\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\nJ$\u0010.\u001a\u00020\u00132\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\'H\u0007R\u0018\u0010\u0003\u001a\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;",
        "T",
        "Lcom/chad/library/adapter/base/diff/DifferImp;",
        "adapter",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "config",
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;",
        "(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V",
        "mListeners",
        "",
        "Lcom/chad/library/adapter/base/diff/ListChangeListener;",
        "mMainThreadExecutor",
        "Ljava/util/concurrent/Executor;",
        "mMaxScheduledGeneration",
        "",
        "mUpdateCallback",
        "Landroidx/recyclerview/widget/ListUpdateCallback;",
        "sMainThreadExecutor",
        "addData",
        "",
        "data",
        "(Ljava/lang/Object;)V",
        "index",
        "(ILjava/lang/Object;)V",
        "addList",
        "list",
        "",
        "addListListener",
        "listener",
        "changeData",
        "newData",
        "payload",
        "(ILjava/lang/Object;Ljava/lang/Object;)V",
        "clearAllListListener",
        "latchList",
        "newList",
        "diffResult",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "onCurrentListChanged",
        "previousList",
        "remove",
        "t",
        "removeAt",
        "removeListListener",
        "submitList",
        "MainThreadExecutor",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/diff/ListChangeListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field private mMaxScheduledGeneration:I

.field private final mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

.field private final sMainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$KWVBWkalJ-gy9Y7qQwH77p3y1k8(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList$lambda-1$lambda-0(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eezhYJeBp9mI_Rs6E8hBioZtDHk(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList$lambda-1(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;)V
    .locals 2
    .param p1, "adapter"    # Lcom/chad/library/adapter/base/BaseQuickAdapter;
    .param p2, "config"    # Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/BaseQuickAdapter<",
            "TT;*>;",
            "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 13
    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    .line 14
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;

    invoke-direct {v0, p1}, Lcom/chad/library/adapter/base/diff/BrvahListUpdateCallback;-><init>(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V

    check-cast v0, Landroidx/recyclerview/widget/ListUpdateCallback;

    iput-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    .line 24
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;

    invoke-direct {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;-><init>()V

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->sMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 26
    nop

    .line 27
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 28
    nop

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    .line 12
    return-void
.end method

.method public static final synthetic access$getConfig$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
    .locals 1
    .param p0, "$this"    # Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    .line 12
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    return-object v0
.end method

.method private final latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "newList"    # Ljava/util/List;
    .param p2, "diffResult"    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .param p3, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, "previousList":Ljava/util/List;
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 182
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    .line 183
    invoke-direct {p0, v0, p3}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method

.method private final onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "previousList"    # Ljava/util/List;
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/diff/ListChangeListener;

    .line 189
    .local v1, "listener":Lcom/chad/library/adapter/base/diff/ListChangeListener;
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/chad/library/adapter/base/diff/ListChangeListener;->onCurrentListChanged(Ljava/util/List;Ljava/util/List;)V

    .end local v1    # "listener":Lcom/chad/library/adapter/base/diff/ListChangeListener;
    goto :goto_0

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 192
    :cond_1
    return-void
.end method

.method public static synthetic submitList$default(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V
    .locals 0

    .line 100
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final submitList$lambda-1(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 8
    .param p0, "this$0"    # Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
    .param p1, "$oldList"    # Ljava/util/List;
    .param p2, "$newList"    # Ljava/util/List;
    .param p3, "$runGeneration"    # I
    .param p4, "$commitCallback"    # Ljava/lang/Runnable;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$oldList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;-><init>(Ljava/util/List;Ljava/util/List;Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v5

    const-string v0, "@JvmOverloads\n    fun su\u2026        }\n        }\n    }"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .local v5, "result":Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$$ExternalSyntheticLambda0;-><init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method private static final submitList$lambda-1$lambda-0(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;ILjava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "this$0"    # Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
    .param p1, "$runGeneration"    # I
    .param p2, "$newList"    # Ljava/util/List;
    .param p3, "$result"    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .param p4, "$commitCallback"    # Ljava/lang/Runnable;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    iget v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMaxScheduledGeneration:I

    if-ne v0, p1, :cond_0

    .line 169
    invoke-direct {p0, p2, p3, p4}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->latchList(Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    .line 171
    :cond_0
    return-void
.end method


# virtual methods
.method public final addData(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "previousList":Ljava/util/List;
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 40
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 41
    return-void
.end method

.method public final addData(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "previousList":Ljava/util/List;
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 48
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public final addList(Ljava/util/List;)V
    .locals 4
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 52
    if-nez p1, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 54
    .local v0, "previousList":Ljava/util/List;
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 58
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public addListListener(Lcom/chad/library/adapter/base/diff/ListChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/chad/library/adapter/base/diff/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/diff/ListChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public final changeData(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "newData"    # Ljava/lang/Object;
    .param p3, "payload"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;TT;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "previousList":Ljava/util/List;
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2, p3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 70
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method

.method public final clearAllListListener()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 219
    return-void
.end method

.method public final remove(Ljava/lang/Object;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "previousList":Ljava/util/List;
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 89
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 95
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public final removeAt(I)V
    .locals 3
    .param p1, "index"    # I

    .line 77
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "previousList":Ljava/util/List;
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 83
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public final removeListListener(Lcom/chad/library/adapter/base/diff/ListChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/chad/library/adapter/base/diff/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/diff/ListChangeListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public final submitList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList$default(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public final submitList(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "newList"    # Ljava/util/List;
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMaxScheduledGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMaxScheduledGeneration:I

    iget v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mMaxScheduledGeneration:I

    .line 103
    .local v0, "runGeneration":I
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 105
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 106
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v7

    .line 110
    .local v7, "oldList":Ljava/util/List;
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 111
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 112
    .local v2, "countRemoved":I
    iget-object v3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 114
    iget-object v3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {v3, v1, v2}, Landroidx/recyclerview/widget/ListUpdateCallback;->onRemoved(II)V

    .line 115
    invoke-direct {p0, v7, p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 116
    return-void

    .line 119
    .end local v2    # "countRemoved":I
    :cond_2
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->adapter:Lcom/chad/library/adapter/base/BaseQuickAdapter;

    invoke-virtual {v2, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setData$com_github_CymChad_brvah(Ljava/util/List;)V

    .line 122
    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->mUpdateCallback:Landroidx/recyclerview/widget/ListUpdateCallback;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v1, v3}, Landroidx/recyclerview/widget/ListUpdateCallback;->onInserted(II)V

    .line 123
    invoke-direct {p0, v7, p2}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->onCurrentListChanged(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 124
    return-void

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->config:Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v9, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move-object v3, v7

    move-object v4, p1

    move v5, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$$ExternalSyntheticLambda1;-><init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method
