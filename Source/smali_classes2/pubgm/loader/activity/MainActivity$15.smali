.class Lpubgm/loader/activity/MainActivity$15;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/MainActivity;->launchbypass()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/MainActivity;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/MainActivity;

    .line 1466
    iput-object p1, p0, Lpubgm/loader/activity/MainActivity$15;->this$0:Lpubgm/loader/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1469
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$15;->this$0:Lpubgm/loader/activity/MainActivity;

    const-wide v1, -0x7d968c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->Execc(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity$15;->this$0:Lpubgm/loader/activity/MainActivity;

    const-wide v1, -0x7d9c8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->Execc(Ljava/lang/String;)V

    .line 1473
    return-void
.end method
