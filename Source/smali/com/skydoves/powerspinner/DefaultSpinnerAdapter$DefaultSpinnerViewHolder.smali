.class public final Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DefaultSpinnerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpinnerViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;",
        "(Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;)V",
        "bind",
        "",
        "item",
        "",
        "spinnerView",
        "Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "bind$powerspinner_release",
        "powerspinner_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;


# direct methods
.method public constructor <init>(Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;)V
    .locals 1
    .param p1, "binding"    # Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    iput-object p1, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    return-void
.end method


# virtual methods
.method public final bind$powerspinner_release(Ljava/lang/CharSequence;Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 5
    .param p1, "item"    # Ljava/lang/CharSequence;
    .param p2, "spinnerView"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spinnerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    iget-object v0, v0, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->itemDefaultText:Landroidx/appcompat/widget/AppCompatTextView;

    .local v0, "$this$bind_u24lambda_u2d0":Landroidx/appcompat/widget/AppCompatTextView;
    const/4 v1, 0x0

    .line 85
    .local v1, "$i$a$-apply-DefaultSpinnerAdapter$DefaultSpinnerViewHolder$bind$1":I
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 87
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getGravity()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 88
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getTextSize()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 89
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 90
    nop

    .line 84
    .end local v0    # "$this$bind_u24lambda_u2d0":Landroidx/appcompat/widget/AppCompatTextView;
    .end local v1    # "$i$a$-apply-DefaultSpinnerAdapter$DefaultSpinnerViewHolder$bind$1":I
    nop

    .line 91
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    .line 92
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingLeft()I

    move-result v1

    .line 93
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingTop()I

    move-result v2

    .line 94
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingRight()I

    move-result v3

    .line 95
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingBottom()I

    move-result v4

    .line 91
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 97
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerItemHeight()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerItemHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setHeight(I)V

    .line 100
    :cond_0
    return-void
.end method
