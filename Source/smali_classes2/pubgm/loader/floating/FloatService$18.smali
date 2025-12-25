.class Lpubgm/loader/floating/FloatService$18;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->items(Landroid/view/View;)V
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

    .line 1012
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$18;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 1015
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1016
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 1017
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1018
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$18;->this$0:Lpubgm/loader/floating/FloatService;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lpubgm/loader/floating/FloatService;->access$2000(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)Z

    move-result v2

    .line 1019
    .local v2, "currentState":Z
    xor-int/lit8 v3, v2, 0x1

    .line 1022
    .local v3, "newState":Z
    if-eqz v3, :cond_0

    const v4, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v4, 0x7f0800da

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1025
    iget-object v4, p0, Lpubgm/loader/floating/FloatService$18;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v4, v1, v3}, Lpubgm/loader/floating/FloatService;->access$2100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V

    .line 1027
    .end local v0    # "textView":Landroid/widget/TextView;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "currentState":Z
    .end local v3    # "newState":Z
    :cond_1
    return-void
.end method
