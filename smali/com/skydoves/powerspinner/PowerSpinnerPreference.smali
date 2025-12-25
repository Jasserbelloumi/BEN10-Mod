.class public final Lcom/skydoves/powerspinner/PowerSpinnerPreference;
.super Landroidx/preference/Preference;
.source "PowerSpinnerPreference.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J\u0018\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0007H\u0002J\u0010\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0007H\u0014J\u0012\u0010\u0019\u001a\u00020\u000f2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0015H\u0014Jp\u0010\u001a\u001a\u00020\u000f\"\u0004\u0008\u0000\u0010\u001b2b\u0010\u001c\u001a^\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0015\u0012\u0013\u0018\u0001H\u001b\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(!\u0012\u0013\u0012\u00110\u0007\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(\"\u0012\u0013\u0012\u0011H\u001b\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008(#\u0012\u0004\u0012\u00020\u000f0\u001dJ\u001a\u0010\u001a\u001a\u00020\u000f\"\u0004\u0008\u0000\u0010\u001b2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0%J\u0010\u0010&\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R\u000e\u0010\t\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/PowerSpinnerPreference;",
        "Landroidx/preference/Preference;",
        "context",
        "Landroid/content/Context;",
        "attributeSet",
        "Landroid/util/AttributeSet;",
        "defStyle",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defaultValue",
        "powerSpinnerView",
        "Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "getPowerSpinnerView",
        "()Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "getAttrs",
        "",
        "defStyleAttr",
        "onBindViewHolder",
        "holder",
        "Landroidx/preference/PreferenceViewHolder;",
        "onGetDefaultValue",
        "",
        "a",
        "Landroid/content/res/TypedArray;",
        "index",
        "onSetInitialValue",
        "setOnSpinnerItemSelectedListener",
        "T",
        "block",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "oldIndex",
        "oldItem",
        "newIndex",
        "newItem",
        "onSpinnerItemSelectedListener",
        "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;",
        "setTypeArray",
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
.field private defaultValue:I

.field private final powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-direct {v0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 41
    nop

    .line 42
    sget v0, Lcom/skydoves/powerspinner/R$layout;->powerspinner_layout_preference:I

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->setLayoutResource(I)V

    .line 44
    nop

    .line 45
    if-eqz p2, :cond_0

    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    if-eq p3, v0, :cond_0

    .line 46
    invoke-direct {p0, p2, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getAttrs(Landroid/util/AttributeSet;I)V

    goto :goto_0

    .line 47
    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getAttrs(Landroid/util/AttributeSet;)V

    .line 49
    :cond_1
    :goto_0
    nop

    .line 32
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 34
    const/4 p2, 0x0

    .line 32
    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 35
    sget p3, Landroidx/preference/R$attr;->preferenceStyle:I

    .line 32
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    return-void
.end method

.method public static final synthetic access$persistInt(Lcom/skydoves/powerspinner/PowerSpinnerPreference;I)Z
    .locals 1
    .param p0, "$this"    # Lcom/skydoves/powerspinner/PowerSpinnerPreference;
    .param p1, "p0"    # I

    .line 32
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->persistInt(I)Z

    move-result v0

    return v0
.end method

.method private final getAttrs(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;

    .line 52
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026yleable.PowerSpinnerView)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    nop

    .line 54
    :try_start_0
    invoke-direct {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->setTypeArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    nop

    .line 58
    return-void

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private final getAttrs(Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "attributeSet"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .line 61
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 62
    nop

    .line 63
    sget-object v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView:[I

    .line 64
    nop

    .line 65
    nop

    .line 61
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v1, "context.obtainStyledAttr\u2026fStyleAttr,\n      0\n    )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    nop

    .line 68
    :try_start_0
    invoke-direct {p0, v0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->setTypeArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    nop

    .line 72
    return-void

    .line 69
    :catchall_0
    move-exception v1

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private final setTypeArray(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 75
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 76
    nop

    .line 77
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_show:I

    .line 78
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowArrow()Z

    move-result v2

    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowArrow(Z)V

    .line 81
    nop

    .line 82
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_gravity:I

    .line 83
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowGravity()Lcom/skydoves/powerspinner/SpinnerGravity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v1

    .line 81
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 80
    nop

    .line 86
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->START:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->START:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    goto :goto_0

    .line 87
    :cond_0
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->TOP:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->TOP:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    goto :goto_0

    .line 88
    :cond_1
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    goto :goto_0

    .line 89
    :cond_2
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 90
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 91
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 90
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowGravity(Lcom/skydoves/powerspinner/SpinnerGravity;)V

    .line 93
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 94
    nop

    .line 95
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_padding:I

    .line 96
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowPadding()I

    move-result v2

    .line 94
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowPadding(I)V

    .line 98
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 99
    nop

    .line 100
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate:I

    .line 101
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimate()Z

    move-result v2

    .line 99
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimate(Z)V

    .line 103
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 104
    nop

    .line 105
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_arrow_animate_duration:I

    .line 106
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getArrowAnimationDuration()J

    move-result-wide v2

    long-to-int v2, v2

    .line 104
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 107
    int-to-long v1, v1

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setArrowAnimationDuration(J)V

    .line 108
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 109
    nop

    .line 110
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_show:I

    .line 111
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getShowDivider()Z

    move-result v2

    .line 109
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setShowDivider(Z)V

    .line 113
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 114
    nop

    .line 115
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_size:I

    .line 116
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerSize()I

    move-result v2

    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerSize(I)V

    .line 118
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 119
    nop

    .line 120
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_divider_color:I

    .line 121
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDividerColor()I

    move-result v2

    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDividerColor(I)V

    .line 123
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 124
    nop

    .line 125
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_background:I

    .line 124
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupBackground(Landroid/graphics/drawable/Drawable;)V

    .line 128
    nop

    .line 129
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation:I

    .line 130
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimation()Lcom/skydoves/powerspinner/SpinnerAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v1

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 127
    nop

    .line 133
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->DROPDOWN:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 134
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 135
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->DROPDOWN:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 134
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    goto :goto_1

    .line 136
    :cond_4
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->FADE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 137
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 138
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->FADE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 137
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    goto :goto_1

    .line 139
    :cond_5
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->BOUNCE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 140
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 141
    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->BOUNCE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 140
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimation(Lcom/skydoves/powerspinner/SpinnerAnimation;)V

    .line 143
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 144
    nop

    .line 145
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_animation_style:I

    .line 146
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupAnimationStyle()I

    move-result v2

    .line 144
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 143
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupAnimationStyle(I)V

    .line 148
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 149
    nop

    .line 150
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_width:I

    .line 151
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupWidth()I

    move-result v2

    .line 149
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupWidth(I)V

    .line 153
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 154
    nop

    .line 155
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_height:I

    .line 156
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupHeight()I

    move-result v2

    .line 154
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupHeight(I)V

    .line 158
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 159
    nop

    .line 160
    sget v1, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_popup_elevation:I

    .line 161
    iget-object v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerPopupElevation()I

    move-result v2

    .line 159
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setSpinnerPopupElevation(I)V

    .line 163
    sget v0, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_item_array:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 164
    .local v0, "itemArray":I
    if-eq v0, v1, :cond_7

    .line 165
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v1, v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setItems(I)V

    .line 167
    :cond_7
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 168
    nop

    .line 169
    sget v2, Lcom/skydoves/powerspinner/R$styleable;->PowerSpinnerView_spinner_dismiss_notified_select:I

    .line 170
    iget-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    invoke-virtual {v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getDismissWhenNotifiedItemSelected()Z

    move-result v3

    .line 168
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 167
    invoke-virtual {v1, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setDismissWhenNotifiedItemSelected(Z)V

    .line 172
    return-void
.end method


# virtual methods
.method public final getPowerSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 10
    .param p1, "holder"    # Landroidx/preference/PreferenceViewHolder;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .local v0, "$this$onBindViewHolder_u24lambda_u2d0":Lcom/skydoves/powerspinner/PowerSpinnerView;
    const/4 v1, 0x0

    .line 176
    .local v1, "$i$a$-apply-PowerSpinnerPreference$onBindViewHolder$1":I
    iget v2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->defaultValue:I

    invoke-virtual {p0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getPersistedInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->selectItemByIndex(I)V

    .line 177
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSpinnerAdapter()Lcom/skydoves/powerspinner/PowerSpinnerInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/skydoves/powerspinner/PowerSpinnerInterface;->getOnSpinnerItemSelectedListener()Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;

    move-result-object v2

    if-nez v2, :cond_0

    .line 178
    new-instance v2, Lcom/skydoves/powerspinner/PowerSpinnerPreference$onBindViewHolder$1$1;

    invoke-direct {v2, p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$onBindViewHolder$1$1;-><init>(Lcom/skydoves/powerspinner/PowerSpinnerPreference;)V

    check-cast v2, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v2}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(Lkotlin/jvm/functions/Function4;)V

    .line 182
    :cond_0
    nop

    .line 175
    .end local v0    # "$this$onBindViewHolder_u24lambda_u2d0":Lcom/skydoves/powerspinner/PowerSpinnerView;
    .end local v1    # "$i$a$-apply-PowerSpinnerPreference$onBindViewHolder$1":I
    nop

    .line 183
    sget v0, Lcom/skydoves/powerspinner/R$id;->powerSpinner_preference:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    .line 184
    .local v0, "preference":Landroid/view/ViewGroup;
    nop

    .line 185
    iget-object v1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    check-cast v1, Landroid/view/View;

    .line 186
    const/4 v2, -0x1

    .line 187
    const/4 v3, -0x2

    .line 184
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 189
    sget v1, Lcom/skydoves/powerspinner/R$id;->preference_title:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Landroid/widget/TextView;

    .line 190
    .local v1, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 192
    .local v2, "titleParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v3, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 193
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    .line 194
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "context"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result v5

    .line 195
    invoke-virtual {v2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v8

    .line 196
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v7}, Lcom/skydoves/powerspinner/internals/ContextExtensionKt;->dp2Px(Landroid/content/Context;I)I

    move-result v6

    .line 192
    invoke-virtual {v3, v4, v5, v8, v6}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setPadding(IIII)V

    .line 198
    return-void

    .line 191
    .end local v2    # "titleParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    .end local v1    # "titleTextView":Landroid/widget/TextView;
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "preference":Landroid/view/ViewGroup;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .line 222
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    .line 223
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 224
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->defaultValue:I

    .line 226
    :cond_0
    return-void
.end method

.method public final setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V
    .locals 2
    .param p1, "onSpinnerItemSelectedListener"    # Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "onSpinnerItemSelectedListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$1;

    invoke-direct {v1, p1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$1;-><init>(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;Lcom/skydoves/powerspinner/PowerSpinnerPreference;)V

    check-cast v1, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(Lkotlin/jvm/functions/Function4;)V

    .line 206
    return-void
.end method

.method public final synthetic setOnSpinnerItemSelectedListener(Lkotlin/jvm/functions/Function4;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function4;

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->powerSpinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    new-instance v1, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;

    invoke-direct {v1, p1, p0}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;-><init>(Lkotlin/jvm/functions/Function4;Lcom/skydoves/powerspinner/PowerSpinnerPreference;)V

    check-cast v1, Lkotlin/jvm/functions/Function4;

    invoke-virtual {v0, v1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->setOnSpinnerItemSelectedListener(Lkotlin/jvm/functions/Function4;)V

    .line 215
    return-void
.end method
