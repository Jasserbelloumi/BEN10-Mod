.class final Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PowerSpinnerView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;->show(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $xOff:I

.field final synthetic $yOff:I

.field final synthetic this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public static synthetic $r8$lambda$9L6iJUfPewtkBjmdP9yqHfc5ocU(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 0

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->invoke$lambda-0(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    return-void
.end method

.method constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;II)V
    .locals 1

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    iput p2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->$xOff:I

    iput p3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->$yOff:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda-0(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 3
    .param p0, "this$0"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 709
    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWidth(Lcom/skydoves/powerspinner/PowerSpinnerView;)I

    move-result v1

    invoke-static {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerHeight(Lcom/skydoves/powerspinner/PowerSpinnerView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->update(II)V

    .line 710
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 698
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 699
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$setShowing$p(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    .line 701
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$animateArrow(Lcom/skydoves/powerspinner/PowerSpinnerView;Z)V

    .line 702
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$applyWindowAnimation(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 703
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWidth(Lcom/skydoves/powerspinner/PowerSpinnerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 704
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerHeight(Lcom/skydoves/powerspinner/PowerSpinnerView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerHeight(Lcom/skydoves/powerspinner/PowerSpinnerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-static {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->access$getSpinnerWindow$p(Lcom/skydoves/powerspinner/PowerSpinnerView;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    check-cast v1, Landroid/view/View;

    iget v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->$xOff:I

    iget v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->$yOff:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 708
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView$show$1$$ExternalSyntheticLambda0;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->post(Ljava/lang/Runnable;)Z

    .line 712
    :cond_1
    return-void
.end method
