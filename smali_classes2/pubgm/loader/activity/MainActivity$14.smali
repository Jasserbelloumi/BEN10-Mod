.class Lpubgm/loader/activity/MainActivity$14;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/MainActivity;->executeWithRetries(Ljava/lang/String;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/MainActivity;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$intervalMs:J

.field final synthetic val$maxDurationMs:J

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;JJLandroid/os/Handler;J)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1380
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$14;->this$0:Lpubgm/loader/activity/MainActivity;

    iput-object p2, p0, Lpubgm/loader/activity/MainActivity$14;->val$cmd:Ljava/lang/String;

    iput-wide p3, p0, Lpubgm/loader/activity/MainActivity$14;->val$startTime:J

    iput-wide p5, p0, Lpubgm/loader/activity/MainActivity$14;->val$maxDurationMs:J

    iput-object p7, p0, Lpubgm/loader/activity/MainActivity$14;->val$handler:Landroid/os/Handler;

    iput-wide p8, p0, Lpubgm/loader/activity/MainActivity$14;->val$intervalMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1383
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$14;->this$0:Lpubgm/loader/activity/MainActivity;

    iget-object v1, p0, Lpubgm/loader/activity/MainActivity$14;->val$cmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->Execc(Ljava/lang/String;)V

    .line 1384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lpubgm/loader/activity/MainActivity$14;->val$startTime:J

    sub-long/2addr v0, v2

    .line 1385
    .local v0, "elapsed":J
    iget-wide v2, p0, Lpubgm/loader/activity/MainActivity$14;->val$maxDurationMs:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1386
    iget-object v2, p0, Lpubgm/loader/activity/MainActivity$14;->val$handler:Landroid/os/Handler;

    iget-wide v3, p0, Lpubgm/loader/activity/MainActivity$14;->val$intervalMs:J

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1388
    :cond_0
    return-void
.end method
