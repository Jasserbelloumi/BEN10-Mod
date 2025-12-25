.class public final Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;
.super Ljava/lang/Object;
.source "PowerspinnerLayoutPreferenceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final powerSpinnerPreference:Landroid/widget/LinearLayout;

.field public final preferenceTitle:Landroidx/appcompat/widget/AppCompatTextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "powerSpinnerPreference"    # Landroid/widget/LinearLayout;
    .param p3, "preferenceTitle"    # Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;->rootView:Landroid/widget/LinearLayout;

    .line 31
    iput-object p2, p0, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;->powerSpinnerPreference:Landroid/widget/LinearLayout;

    .line 32
    iput-object p3, p0, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;->preferenceTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 33
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 62
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 64
    .local v0, "powerSpinnerPreference":Landroid/widget/LinearLayout;
    sget v1, Lcom/skydoves/powerspinner/R$id;->preference_title:I

    .line 65
    .local v1, "id":I
    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 66
    .local v2, "preferenceTitle":Landroidx/appcompat/widget/AppCompatTextView;
    if-eqz v2, :cond_0

    .line 70
    new-instance v3, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-direct {v3, v4, v0, v2}, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatTextView;)V

    return-object v3

    .line 67
    :cond_0
    nop

    .line 73
    .end local v0    # "powerSpinnerPreference":Landroid/widget/LinearLayout;
    .end local v2    # "preferenceTitle":Landroidx/appcompat/widget/AppCompatTextView;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 49
    sget v0, Lcom/skydoves/powerspinner/R$layout;->powerspinner_layout_preference:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    :cond_0
    invoke-static {v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;->bind(Landroid/view/View;)Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/skydoves/powerspinner/databinding/PowerspinnerLayoutPreferenceBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
