.class Lpubgm/loader/floating/Overlay$1;
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

    .line 75
    iput-object p1, p0, Lpubgm/loader/floating/Overlay$1;->this$0:Lpubgm/loader/floating/Overlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 78
    iget-object v0, p0, Lpubgm/loader/floating/Overlay$1;->this$0:Lpubgm/loader/floating/Overlay;

    invoke-static {v0}, Lpubgm/loader/floating/Overlay;->access$000(Lpubgm/loader/floating/Overlay;)Z

    .line 79
    return-void
.end method
