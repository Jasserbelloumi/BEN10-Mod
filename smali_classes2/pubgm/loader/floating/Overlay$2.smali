.class Lpubgm/loader/floating/Overlay$2;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/Overlay;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/Overlay;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/Overlay;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/Overlay;

    .line 82
    iput-object p1, p0, Lpubgm/loader/floating/Overlay$2;->this$0:Lpubgm/loader/floating/Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 91
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lpubgm/loader/floating/Overlay$2;->this$0:Lpubgm/loader/floating/Overlay;

    sget-object v1, Lpubgm/loader/activity/MainActivity;->socket:Ljava/lang/String;

    invoke-static {v0, v1}, Lpubgm/loader/floating/Overlay;->access$100(Lpubgm/loader/floating/Overlay;Ljava/lang/String;)V

    .line 92
    return-void
.end method
