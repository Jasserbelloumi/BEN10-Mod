.class Lpubgm/loader/floating/FloatService$10;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 710
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$10;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$10;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 714
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$10;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "itemKey":Ljava/lang/String;
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$10;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-virtual {v1, v0}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 716
    .local v1, "newState":Z
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$10;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v2, v0, v1}, Lpubgm/loader/floating/FloatService;->access$1100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V

    .line 717
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$10;->val$textView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v3, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v3, 0x7f0800da

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 718
    return-void
.end method
