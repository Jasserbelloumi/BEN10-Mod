.class public final Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;
.super Ljava/lang/Object;
.source "PowerspinnerItemDefaultPowerBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final itemDefaultText:Landroidx/appcompat/widget/AppCompatTextView;

.field private final rootView:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method private constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/appcompat/widget/AppCompatTextView;
    .param p2, "itemDefaultText"    # Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->rootView:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    iput-object p2, p0, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->itemDefaultText:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;
    .locals 3
    .param p0, "rootView"    # Landroid/view/View;

    .line 51
    if-eqz p0, :cond_0

    .line 55
    move-object v0, p0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .local v0, "itemDefaultText":Landroidx/appcompat/widget/AppCompatTextView;
    new-instance v1, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    move-object v2, p0

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {v1, v2, v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;-><init>(Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v1

    .line 52
    .end local v0    # "itemDefaultText":Landroidx/appcompat/widget/AppCompatTextView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "rootView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 42
    sget v0, Lcom/skydoves/powerspinner/R$layout;->powerspinner_item_default_power:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->bind(Landroid/view/View;)Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->rootView:Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method
