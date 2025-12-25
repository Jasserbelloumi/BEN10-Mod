.class Lorg/jdeferred/android/AndroidDeferredObject$InternalHandler;
.super Landroid/os/Handler;
.source "AndroidDeferredObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/android/AndroidDeferredObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;

    .line 80
    .local v0, "result":Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;, "Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage<****>;"
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    iget-object v1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/AlwaysCallback;

    iget-object v2, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->state:Lorg/jdeferred/Promise$State;

    iget-object v3, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->resolved:Ljava/lang/Object;

    iget-object v4, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->rejected:Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lorg/jdeferred/AlwaysCallback;->onAlways(Lorg/jdeferred/Promise$State;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/FailCallback;

    iget-object v2, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->rejected:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/jdeferred/FailCallback;->onFail(Ljava/lang/Object;)V

    .line 90
    goto :goto_0

    .line 85
    :pswitch_2
    iget-object v1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/ProgressCallback;

    iget-object v2, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->progress:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/jdeferred/ProgressCallback;->onProgress(Ljava/lang/Object;)V

    .line 87
    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v1, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->callback:Ljava/lang/Object;

    check-cast v1, Lorg/jdeferred/DoneCallback;

    iget-object v2, v0, Lorg/jdeferred/android/AndroidDeferredObject$CallbackMessage;->resolved:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/jdeferred/DoneCallback;->onDone(Ljava/lang/Object;)V

    .line 83
    nop

    .line 96
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
