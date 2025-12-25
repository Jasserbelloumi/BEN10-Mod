.class Lpubgm/loader/floating/FloatService$5;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$code:I

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 645
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$5;->this$0:Lpubgm/loader/floating/FloatService;

    iput-object p2, p0, Lpubgm/loader/floating/FloatService$5;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lpubgm/loader/floating/FloatService$5;->val$textView:Landroid/widget/TextView;

    iput p4, p0, Lpubgm/loader/floating/FloatService$5;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 648
    iget-object v0, p0, Lpubgm/loader/floating/FloatService$5;->this$0:Lpubgm/loader/floating/FloatService;

    iget-object v1, p0, Lpubgm/loader/floating/FloatService$5;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 649
    .local v0, "newState":Z
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$5;->this$0:Lpubgm/loader/floating/FloatService;

    iget-object v2, p0, Lpubgm/loader/floating/FloatService$5;->val$key:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lpubgm/loader/floating/FloatService;->access$1100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V

    .line 650
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$5;->val$textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v2, 0x7f0800da

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 651
    iget-object v1, p0, Lpubgm/loader/floating/FloatService$5;->this$0:Lpubgm/loader/floating/FloatService;

    iget v2, p0, Lpubgm/loader/floating/FloatService$5;->val$code:I

    invoke-virtual {v1, v2}, Lpubgm/loader/floating/FloatService;->SkinHack(I)V

    .line 652
    return-void
.end method
