.class Lpubgm/loader/floating/FloatService$17;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpubgm/loader/floating/FloatService;

.field final synthetic val$code:I


# direct methods
.method constructor <init>(Lpubgm/loader/floating/FloatService;I)V
    .locals 0
    .param p1, "this$0"    # Lpubgm/loader/floating/FloatService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 939
    iput-object p1, p0, Lpubgm/loader/floating/FloatService$17;->this$0:Lpubgm/loader/floating/FloatService;

    iput p2, p0, Lpubgm/loader/floating/FloatService$17;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 942
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 943
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "itemKey":Ljava/lang/String;
    iget-object v2, p0, Lpubgm/loader/floating/FloatService$17;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-virtual {v2, v1}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 945
    .local v2, "newState":Z
    iget-object v3, p0, Lpubgm/loader/floating/FloatService$17;->this$0:Lpubgm/loader/floating/FloatService;

    invoke-static {v3, v1, v2}, Lpubgm/loader/floating/FloatService;->access$1100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V

    .line 946
    if-eqz v2, :cond_0

    const v3, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v3, 0x7f0800da

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 947
    iget-object v3, p0, Lpubgm/loader/floating/FloatService$17;->this$0:Lpubgm/loader/floating/FloatService;

    iget v4, p0, Lpubgm/loader/floating/FloatService$17;->val$code:I

    invoke-virtual {v3, v4, v2}, Lpubgm/loader/floating/FloatService;->SettingValue(IZ)V

    .line 948
    return-void
.end method
