.class Lpubgm/loader/activity/LoginActivity$6;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/LoginActivity;->Login(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dialogloading:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$m_Context:Lpubgm/loader/activity/LoginActivity;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/LoginActivity;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lpubgm/loader/activity/LoginActivity$6;->val$m_Context:Lpubgm/loader/activity/LoginActivity;

    iput-object p2, p0, Lpubgm/loader/activity/LoginActivity$6;->val$dialogloading:Landroidx/appcompat/app/AlertDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lpubgm/loader/activity/LoginActivity$6;->val$m_Context:Lpubgm/loader/activity/LoginActivity;

    const-wide v3, -0x7c558c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 267
    const-wide v3, -0x7c478c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet_62v/external/MetaActivationManager;->activateSdk(Ljava/lang/String;)V

    .line 268
    new-instance v0, Lpubgm/loader/Component/DownC;

    iget-object v3, p0, Lpubgm/loader/activity/LoginActivity$6;->val$m_Context:Lpubgm/loader/activity/LoginActivity;

    invoke-direct {v0, v3}, Lpubgm/loader/Component/DownC;-><init>(Landroid/content/Context;)V

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Lpubgm/loader/server/ApiServer;->mainURL()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lpubgm/loader/Component/DownC;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 269
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_1

    .line 270
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$6;->val$m_Context:Lpubgm/loader/activity/LoginActivity;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 271
    .local v0, "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$6;->val$m_Context:Lpubgm/loader/activity/LoginActivity;

    const v3, 0x7f130064

    invoke-virtual {v1, v3}, Lpubgm/loader/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 272
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 273
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 274
    const-wide v1, -0x7c7a8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lpubgm/loader/activity/LoginActivity$6$1;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/LoginActivity$6$1;-><init>(Lpubgm/loader/activity/LoginActivity$6;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 282
    .end local v0    # "builder":Landroidx/appcompat/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    iget-object v0, p0, Lpubgm/loader/activity/LoginActivity$6;->val$dialogloading:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 283
    return-void
.end method
