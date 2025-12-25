.class Lpubgm/loader/activity/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/LoginActivity;->OverlayPermision()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/LoginActivity;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/LoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/LoginActivity;

    .line 238
    iput-object p1, p0, Lpubgm/loader/activity/LoginActivity$5;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "p1"    # Landroid/content/DialogInterface;
    .param p2, "p2"    # I

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x7c988c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x7cae8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lpubgm/loader/activity/LoginActivity$5;->this$0:Lpubgm/loader/activity/LoginActivity;

    invoke-virtual {v3}, Lpubgm/loader/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lpubgm/loader/activity/LoginActivity$5;->this$0:Lpubgm/loader/activity/LoginActivity;

    sget v2, Lpubgm/loader/activity/LoginActivity;->REQUEST_OVERLAY_PERMISSION:I

    invoke-virtual {v1, v0, v2}, Lpubgm/loader/activity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    return-void
.end method
