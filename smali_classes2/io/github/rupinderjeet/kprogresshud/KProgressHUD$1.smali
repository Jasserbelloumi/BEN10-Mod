.class Lio/github/rupinderjeet/kprogresshud/KProgressHUD$1;
.super Ljava/lang/Object;
.source "KProgressHUD.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->show()Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;


# direct methods
.method constructor <init>(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)V
    .locals 0
    .param p1, "this$0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 309
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$1;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 312
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$1;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$000(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$1;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$100(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$1;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$000(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->show()V

    .line 315
    :cond_0
    return-void
.end method
