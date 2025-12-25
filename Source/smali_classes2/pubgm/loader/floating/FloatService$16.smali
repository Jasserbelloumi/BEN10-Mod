.class Lpubgm/loader/floating/FloatService$16;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->setupPlayerNationItem(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;

    .line 906
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$16;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 909
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 910
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$16;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v1}, Lpubgm/loader/floating/FloatService;->access$1900(Lpubgm/loader/floating/FloatService;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lpubgm/loader/floating/FloatService;->access$1902(Lpubgm/loader/floating/FloatService;Z)Z

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 912
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$16;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v2}, Lpubgm/loader/floating/FloatService;->access$1900(Lpubgm/loader/floating/FloatService;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v2, 0x7f0800da

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 914
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lpubgm/loader/floating/FightMode;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 915
    .local v2, "fightModeIntent":Landroid/content/Intent;
    iget-object v3, p0, Lpubgm/loader/floating/FloatService$16;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v3}, Lpubgm/loader/floating/FloatService;->access$1900(Lpubgm/loader/floating/FloatService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 917
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1

    .line 920
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 922
    :goto_1
    return-void
.end method
