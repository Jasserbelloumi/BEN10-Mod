.class Lpubgm/loader/activity/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/LoginActivity;->Login(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$loginHandler:Landroid/os/Handler;

.field final synthetic val$m_Context:Lpubgm/loader/activity/LoginActivity;

.field final synthetic val$userKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 287
    iput-object p1, p0, Lpubgm/loader/activity/LoginActivity$7;->val$m_Context:Lpubgm/loader/activity/LoginActivity;

    iput-object p2, p0, Lpubgm/loader/activity/LoginActivity$7;->val$userKey:Ljava/lang/String;

    iput-object p3, p0, Lpubgm/loader/activity/LoginActivity$7;->val$loginHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 290
    iget-object v0, p0, Lpubgm/loader/activity/LoginActivity$7;->val$m_Context:Lpubgm/loader/activity/LoginActivity;

    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$7;->val$userKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lpubgm/loader/activity/LoginActivity;->access$400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "result":Ljava/lang/String;
    const-wide v1, -0x7c7f8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$7;->val$loginHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 294
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 295
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 296
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object v2, p0, Lpubgm/loader/activity/LoginActivity$7;->val$loginHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void
.end method
