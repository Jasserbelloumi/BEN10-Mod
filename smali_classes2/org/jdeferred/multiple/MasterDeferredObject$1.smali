.class Lorg/jdeferred/multiple/MasterDeferredObject$1;
.super Ljava/lang/Object;
.source "MasterDeferredObject.java"

# interfaces
.implements Lorg/jdeferred/DoneCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jdeferred/multiple/MasterDeferredObject;-><init>([Lorg/jdeferred/Promise;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

.field final synthetic val$index:I

.field final synthetic val$promise:Lorg/jdeferred/Promise;


# direct methods
.method constructor <init>(Lorg/jdeferred/multiple/MasterDeferredObject;ILorg/jdeferred/Promise;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    iput p2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->val$index:I

    iput-object p3, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->val$promise:Lorg/jdeferred/Promise;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-virtual {v1}, Lorg/jdeferred/multiple/MasterDeferredObject;->isPending()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    monitor-exit v0

    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v1}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$000(Lorg/jdeferred/multiple/MasterDeferredObject;)Lorg/jdeferred/multiple/MultipleResults;

    move-result-object v1

    iget v2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->val$index:I

    new-instance v3, Lorg/jdeferred/multiple/OneResult;

    iget v4, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->val$index:I

    iget-object v5, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->val$promise:Lorg/jdeferred/Promise;

    invoke-direct {v3, v4, v5, p1}, Lorg/jdeferred/multiple/OneResult;-><init>(ILorg/jdeferred/Promise;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3}, Lorg/jdeferred/multiple/MultipleResults;->set(ILorg/jdeferred/multiple/OneResult;)V

    .line 99
    iget-object v1, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v1}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$100(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 101
    .local v1, "done":I
    iget-object v2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    new-instance v3, Lorg/jdeferred/multiple/MasterProgress;

    iget-object v4, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v4}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$200(Lorg/jdeferred/multiple/MasterDeferredObject;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v5, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v5}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$300(Lorg/jdeferred/multiple/MasterDeferredObject;)I

    move-result v5

    invoke-direct {v3, v1, v4, v5}, Lorg/jdeferred/multiple/MasterProgress;-><init>(III)V

    invoke-virtual {v2, v3}, Lorg/jdeferred/multiple/MasterDeferredObject;->notify(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    .line 106
    iget-object v2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v2}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$300(Lorg/jdeferred/multiple/MasterDeferredObject;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 107
    iget-object v2, p0, Lorg/jdeferred/multiple/MasterDeferredObject$1;->this$0:Lorg/jdeferred/multiple/MasterDeferredObject;

    invoke-static {v2}, Lorg/jdeferred/multiple/MasterDeferredObject;->access$000(Lorg/jdeferred/multiple/MasterDeferredObject;)Lorg/jdeferred/multiple/MultipleResults;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdeferred/multiple/MasterDeferredObject;->resolve(Ljava/lang/Object;)Lorg/jdeferred/Deferred;

    .line 109
    .end local v1    # "done":I
    :cond_1
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
