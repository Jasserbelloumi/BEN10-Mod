.class public final Lcom/skydoves/powerspinner/IconSpinnerAdapter$IconSpinnerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IconSpinnerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/powerspinner/IconSpinnerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconSpinnerViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIconSpinnerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IconSpinnerAdapter.kt\ncom/skydoves/powerspinner/IconSpinnerAdapter$IconSpinnerViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001d\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/IconSpinnerAdapter$IconSpinnerViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;",
        "(Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;)V",
        "bind",
        "",
        "item",
        "Lcom/skydoves/powerspinner/IconSpinnerItem;",
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

    .line 105
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    iput-object p1, p0, Lcom/skydoves/powerspinner/IconSpinnerAdapter$IconSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    return-void
.end method


# virtual methods
.method public final bind$powerspinner_release(Lcom/skydoves/powerspinner/IconSpinnerItem;Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 6
    .param p1, "item"    # Lcom/skydoves/powerspinner/IconSpinnerItem;
    .param p2, "spinnerView"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "spinnerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/skydoves/powerspinner/IconSpinnerAdapter$IconSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    iget-object v0, v0, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->itemDefaultText:Landroidx/appcompat/widget/AppCompatTextView;

    .local v0, "$this$bind_u24lambda_u2d2":Landroidx/appcompat/widget/AppCompatTextView;
    const/4 v1, 0x0

    .line 109
    .local v1, "$i$a$-apply-IconSpinnerAdapter$IconSpinnerViewHolder$bind$1":I
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getTextTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 142
    .local v2, "it":Landroid/graphics/Typeface;
    :cond_0
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$a$-let-IconSpinnerAdapter$IconSpinnerViewHolder$bind$1$1":I
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .end local v2    # "it":Landroid/graphics/Typeface;
    .end local v4    # "$i$a$-let-IconSpinnerAdapter$IconSpinnerViewHolder$bind$1$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getTextStyle()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getGravity()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getGravity()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setGravity(I)V

    .line 112
    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getTextSize()Ljava/lang/Float;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getTextSize()F

    move-result v4

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    :goto_2
    invoke-virtual {v0, v2, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 113
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getTextColor()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getCurrentTextColor()I

    move-result v2

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 114
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getIconPadding()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getCompoundDrawablePadding()I

    move-result v2

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_4
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablePadding(I)V

    .line 115
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getIconRes()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v3

    goto :goto_5

    :cond_6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .local v2, "it":I
    const/4 v4, 0x0

    .line 116
    .local v4, "$i$a$-let-IconSpinnerAdapter$IconSpinnerViewHolder$bind$1$icon$1":I
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2, v3}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 115
    .end local v2    # "it":I
    .end local v4    # "$i$a$-let-IconSpinnerAdapter$IconSpinnerViewHolder$bind$1$icon$1":I
    nop

    :goto_5
    if-nez v2, :cond_7

    .line 117
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 115
    :cond_7
    nop

    .line 118
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/IconSpinnerItem;->getIconGravity()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_6

    .line 122
    :sswitch_0
    invoke-virtual {v0, v3, v3, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 120
    :sswitch_1
    invoke-virtual {v0, v2, v3, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 126
    :sswitch_2
    invoke-virtual {v0, v3, v3, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 124
    :sswitch_3
    invoke-virtual {v0, v3, v2, v3, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    :goto_6
    nop

    .line 108
    .end local v0    # "$this$bind_u24lambda_u2d2":Landroidx/appcompat/widget/AppCompatTextView;
    .end local v1    # "$i$a$-apply-IconSpinnerAdapter$IconSpinnerViewHolder$bind$1":I
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    nop

    .line 129
    iget-object v0, p0, Lcom/skydoves/powerspinner/IconSpinnerAdapter$IconSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingLeft()I

    move-result v1

    .line 131
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingTop()I

    move-result v2

    .line 132
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingRight()I

    move-result v3

    .line 133
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getPaddingBottom()I

    move-result v4

    .line 129
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setPadding(IIII)V

    .line 135
    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerItemHeight()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_8

    .line 136
    iget-object v0, p0, Lcom/skydoves/powerspinner/IconSpinnerAdapter$IconSpinnerViewHolder;->binding:Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    invoke-virtual {v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerItemHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setHeight(I)V

    .line 138
    :cond_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x50 -> :sswitch_2
        0x800003 -> :sswitch_1
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method
