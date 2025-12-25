.class Lpubgm/loader/activity/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/activity/SplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/activity/SplashActivity;


# direct methods
.method constructor <init>(Lpubgm/loader/activity/SplashActivity;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/activity/SplashActivity;

    .line 21
    iput-object p1, p0, Lpubgm/loader/activity/SplashActivity$1;->this$0:Lpubgm/loader/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lpubgm/loader/activity/SplashActivity;->mahyong:Z

    .line 25
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lpubgm/loader/activity/SplashActivity$1;->this$0:Lpubgm/loader/activity/SplashActivity;

    const-class v2, Lpubgm/loader/activity/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lpubgm/loader/activity/SplashActivity$1;->this$0:Lpubgm/loader/activity/SplashActivity;

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    iget-object v1, p0, Lpubgm/loader/activity/SplashActivity$1;->this$0:Lpubgm/loader/activity/SplashActivity;

    invoke-virtual {v1}, Lpubgm/loader/activity/SplashActivity;->finish()V

    .line 28
    return-void
.end method
