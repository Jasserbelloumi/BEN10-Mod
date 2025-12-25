.class public Lorg/jdeferred/android/AndroidDeferredObject;
.super Lorg/jdeferred/impl/DeferredObject;
.source "AndroidDeferredObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;,
        Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;
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
        ">",
        "Lorg/jdeferred/impl/DeferredObject<",
        "TD;TF;TP;>;"
    }
.end annotation


# static fields
.field private static final MESSAGE_POST_ALWAYS:I = 0x4

.field private static final MESSAGE_POST_DONE:I = 0x1

.field private static final MESSAGE_POST_FAIL:I = 0x3

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final sHandler:Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;


# instance fields
.field private final defaultAndroidExecutionScope:Lorg/jdeferred/android/AndroidExecutionScope;

.field protected final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;

    invoke-direct {v0}, Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;-><init>()V

    sput-object v0, Lorg/jdeferred/android/AndroidDeferredObject;->sHandler:Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;

    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    .local p1, "promise":Lorg/jdeferred/Promise;, "Lorg/jdeferred/Promise<TD;TF;TP;>;"
    sget-object v0, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    invoke-direct {p0, p1, v0}, Lorg/jdeferred/android/AndroidDeferredObject;-><init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/jdeferred/Promise;Lorg/jdeferred/android/AndroidExecutionScope;)V
    .locals 2
    .param p2, "defaultAndroidExecutionScope"    # Lorg/jdeferred/android/AndroidExecutionScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/Promise<",
            "TD;TF;TP;>;",
            "Lorg/jdeferred/android/AndroidExecutionScope;",
            ")V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    .local p1, "promise":Lorg/jdeferred/Promise;, "Lorg/jdeferred/Promise<TD;TF;TP;>;"
    invoke-direct {p0}, Lorg/jdeferred/impl/DeferredObject;-><init>()V

    .line 40
    const-class v0, Lorg/jdeferred/android/AndroidDeferredObject;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jdeferred/android/AndroidDeferredObject;->log:Lorg/slf4j/Logger;

    .line 51
    iput-object p2, p0, Lorg/jdeferred/android/AndroidDeferredObject;->defaultAndroidExecutionScope:Lorg/jdeferred/android/AndroidExecutionScope;

    .line 52
    new-instance v0, Lorg/jdeferred/android/AndroidDeferredObject$3;

    invoke-direct {v0, p0}, Lorg/jdeferred/android/AndroidDeferredObject$3;-><init>(Lorg/jdeferred/android/AndroidDeferredObject;)V

    invoke-interface {p1, v0}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/android/AndroidDeferredObject$2;

    invoke-direct {v1, p0}, Lorg/jdeferred/android/AndroidDeferredObject$2;-><init>(Lorg/jdeferred/android/AndroidDeferredObject;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->progress(Lorg/jdeferred/ProgressCallback;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lorg/jdeferred/android/AndroidDeferredObject$1;

    invoke-direct {v1, p0}, Lorg/jdeferred/android/AndroidDeferredObject$1;-><init>(Lorg/jdeferred/android/AndroidDeferredObject;)V

    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;

    .line 69
    return-void
.end method


# virtual methods
.method protected determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;
    .locals 2
    .param p1, "callback"    # Ljava/lang/Object;

    .line 145
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    const/4 v0, 0x0

    .line 146
    .local v0, "scope":Lorg/jdeferred/android/AndroidExecutionScope;
    instance-of v1, p1, Lorg/jdeferred/android/AndroidExecutionScopeable;

    if-eqz v1, :cond_0

    .line 147
    move-object v1, p1

    check-cast v1, Lorg/jdeferred/android/AndroidExecutionScopeable;

    invoke-interface {v1}, Lorg/jdeferred/android/AndroidExecutionScopeable;->getExecutionScope()Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    .line 149
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lorg/jdeferred/android/AndroidDeferredObject;->defaultAndroidExecutionScope:Lorg/jdeferred/android/AndroidExecutionScope;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
    .param p1, "what"    # I
    .param p3, "state"    # Lorg/jdeferred/Promise$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Callback:",
            "Ljava/lang/Object;",
            ">(ITCallback;",
            "Lorg/jdeferred/Promise$State;",
            "TD;TF;TP;)V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    .local p2, "callback":Ljava/lang/Object;, "TCallback;"
    .local p4, "resolve":Ljava/lang/Object;, "TD;"
    .local p5, "reject":Ljava/lang/Object;, "TF;"
    .local p6, "progress":Ljava/lang/Object;, "TP;"
    sget-object v0, Lorg/jdeferred/android/AndroidDeferredObject;->sHandler:Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;

    new-instance v8, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;-><init>(Lorg/jdeferred/Deferred;Ljava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v8}, Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 141
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method

.method protected triggerAlways(Lorg/jdeferred/AlwaysCallback;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9
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

    .line 128
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/AlwaysCallback;, "Lorg/jdeferred/AlwaysCallback<TD;TF;>;"
    .local p3, "resolve":Ljava/lang/Object;, "TD;"
    .local p4, "reject":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v3, 0x4

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jdeferred/impl/DeferredObject;->triggerAlways(Lorg/jdeferred/AlwaysCallback;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :goto_0
    return-void
.end method

.method protected triggerDone(Lorg/jdeferred/DoneCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/DoneCallback<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/DoneCallback;, "Lorg/jdeferred/DoneCallback<TD;>;"
    .local p2, "resolved":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    .line 101
    const/4 v3, 0x1

    sget-object v5, Lorg/jdeferred/Promise$State;->RESOLVED:Lorg/jdeferred/Promise$State;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/impl/DeferredObject;->triggerDone(Lorg/jdeferred/DoneCallback;Ljava/lang/Object;)V

    .line 106
    :goto_0
    return-void
.end method

.method protected triggerFail(Lorg/jdeferred/FailCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/FailCallback<",
            "TF;>;TF;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/FailCallback;, "Lorg/jdeferred/FailCallback<TF;>;"
    .local p2, "rejected":Ljava/lang/Object;, "TF;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    .line 110
    const/4 v3, 0x3

    sget-object v5, Lorg/jdeferred/Promise$State;->REJECTED:Lorg/jdeferred/Promise$State;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/impl/DeferredObject;->triggerFail(Lorg/jdeferred/FailCallback;Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void
.end method

.method protected triggerProgress(Lorg/jdeferred/ProgressCallback;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdeferred/ProgressCallback<",
            "TP;>;TP;)V"
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/jdeferred/android/AndroidDeferredObject;, "Lorg/jdeferred/android/AndroidDeferredObject<TD;TF;TP;>;"
    .local p1, "callback":Lorg/jdeferred/ProgressCallback;, "Lorg/jdeferred/ProgressCallback<TP;>;"
    .local p2, "progress":Ljava/lang/Object;, "TP;"
    invoke-virtual {p0, p1}, Lorg/jdeferred/android/AndroidDeferredObject;->determineAndroidExecutionScope(Ljava/lang/Object;)Lorg/jdeferred/android/AndroidExecutionScope;

    move-result-object v0

    sget-object v1, Lorg/jdeferred/android/AndroidExecutionScope;->UI:Lorg/jdeferred/android/AndroidExecutionScope;

    if-ne v0, v1, :cond_0

    .line 119
    const/4 v3, 0x2

    sget-object v5, Lorg/jdeferred/Promise$State;->PENDING:Lorg/jdeferred/Promise$State;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lorg/jdeferred/android/AndroidDeferredObject;->executeInUiThread(ILjava/lang/Object;Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jdeferred/impl/DeferredObject;->triggerProgress(Lorg/jdeferred/ProgressCallback;Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-void
.end method
