.class public final Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;
.super Ljava/lang/Object;
.source "ProgressDialog.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/techiness/progressdialoglibrary/ProgressDialog;->startTimeTrackingLoop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1",
        "Ljava/lang/Runnable;",
        "run",
        "",
        "progressdialoglibrary_release"
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
.field final synthetic $currentTime:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $difference:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $hoursDifference:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $message:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $minutesDifference:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $secondsDifference:Lkotlin/jvm/internal/Ref$LongRef;

.field final synthetic $startTime:Ljava/util/Date;

.field final synthetic this$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/techiness/progressdialoglibrary/ProgressDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$LongRef;Ljava/util/Date;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/techiness/progressdialoglibrary/ProgressDialog;
    .param p2, "$currentTime"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .param p3, "$difference"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p4, "$startTime"    # Ljava/util/Date;
    .param p5, "$secondsDifference"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p6, "$minutesDifference"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p7, "$hoursDifference"    # Lkotlin/jvm/internal/Ref$LongRef;
    .param p8, "$message"    # Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/techiness/progressdialoglibrary/ProgressDialog;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/Date;",
            ">;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Ljava/util/Date;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->this$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

    iput-object p2, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$currentTime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$difference:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p4, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$startTime:Ljava/util/Date;

    iput-object p5, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$secondsDifference:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p6, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$minutesDifference:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p7, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$hoursDifference:Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p8, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$message:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 805
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 809
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->this$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

    invoke-virtual {v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->hasProgressReachedMaxValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "handler"

    if-nez v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$currentTime:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 812
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$difference:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$currentTime:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$startTime:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 813
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$secondsDifference:Lkotlin/jvm/internal/Ref$LongRef;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$difference:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v4, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    const/16 v5, 0x3c

    int-to-long v5, v5

    rem-long/2addr v3, v5

    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 814
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$minutesDifference:Lkotlin/jvm/internal/Ref$LongRef;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$difference:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v7, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v3

    rem-long/2addr v3, v5

    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 815
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$hoursDifference:Lkotlin/jvm/internal/Ref$LongRef;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$difference:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v7, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v3

    rem-long/2addr v3, v5

    iput-wide v3, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 816
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$message:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$hoursDifference:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v3, v3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x30

    invoke-static {v3, v4, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$minutesDifference:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v6, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$secondsDifference:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v7, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5}, Lkotlin/text/StringsKt;->padStart(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time Elapsed: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "h: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "m: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 817
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->this$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

    invoke-static {v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->access$getBinding$p(Lcom/techiness/progressdialoglibrary/ProgressDialog;)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->$message:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->this$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

    invoke-static {v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->access$getHandler$p(Lcom/techiness/progressdialoglibrary/ProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/ProgressDialog$startTimeTrackingLoop$1;->this$0:Lcom/techiness/progressdialoglibrary/ProgressDialog;

    invoke-static {v0}, Lcom/techiness/progressdialoglibrary/ProgressDialog;->access$getHandler$p(Lcom/techiness/progressdialoglibrary/ProgressDialog;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    move-object v0, p0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 824
    :goto_2
    return-void
.end method
