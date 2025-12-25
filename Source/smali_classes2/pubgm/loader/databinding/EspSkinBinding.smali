.class public final Lpubgm/loader/databinding/EspSkinBinding;
.super Ljava/lang/Object;
.source "EspSkinBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final aracane:Landroid/widget/CheckBox;

.field public final avalache:Landroid/widget/CheckBox;

.field public final bloodreven:Landroid/widget/CheckBox;

.field public final iridescense:Landroid/widget/CheckBox;

.field public final pharaohskin:Landroid/widget/CheckBox;

.field public final posreidon:Landroid/widget/CheckBox;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final silvanus:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "aracane"    # Landroid/widget/CheckBox;
    .param p3, "avalache"    # Landroid/widget/CheckBox;
    .param p4, "bloodreven"    # Landroid/widget/CheckBox;
    .param p5, "iridescense"    # Landroid/widget/CheckBox;
    .param p6, "pharaohskin"    # Landroid/widget/CheckBox;
    .param p7, "posreidon"    # Landroid/widget/CheckBox;
    .param p8, "silvanus"    # Landroid/widget/CheckBox;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lpubgm/loader/databinding/EspSkinBinding;->rootView:Landroid/widget/LinearLayout;

    .line 47
    iput-object p2, p0, Lpubgm/loader/databinding/EspSkinBinding;->aracane:Landroid/widget/CheckBox;

    .line 48
    iput-object p3, p0, Lpubgm/loader/databinding/EspSkinBinding;->avalache:Landroid/widget/CheckBox;

    .line 49
    iput-object p4, p0, Lpubgm/loader/databinding/EspSkinBinding;->bloodreven:Landroid/widget/CheckBox;

    .line 50
    iput-object p5, p0, Lpubgm/loader/databinding/EspSkinBinding;->iridescense:Landroid/widget/CheckBox;

    .line 51
    iput-object p6, p0, Lpubgm/loader/databinding/EspSkinBinding;->pharaohskin:Landroid/widget/CheckBox;

    .line 52
    iput-object p7, p0, Lpubgm/loader/databinding/EspSkinBinding;->posreidon:Landroid/widget/CheckBox;

    .line 53
    iput-object p8, p0, Lpubgm/loader/databinding/EspSkinBinding;->silvanus:Landroid/widget/CheckBox;

    .line 54
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/EspSkinBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 83
    move-object/from16 v0, p0

    const v1, 0x7f0a00ec

    .line 84
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 85
    .local v2, "aracane":Landroid/widget/CheckBox;
    if-eqz v2, :cond_6

    .line 89
    const v1, 0x7f0a00f7

    .line 90
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/CheckBox;

    .line 91
    .local v12, "avalache":Landroid/widget/CheckBox;
    if-eqz v12, :cond_5

    .line 95
    const v1, 0x7f0a0105

    .line 96
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/CheckBox;

    .line 97
    .local v13, "bloodreven":Landroid/widget/CheckBox;
    if-eqz v13, :cond_4

    .line 101
    const v1, 0x7f0a01e4

    .line 102
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/CheckBox;

    .line 103
    .local v14, "iridescense":Landroid/widget/CheckBox;
    if-eqz v14, :cond_3

    .line 107
    const v1, 0x7f0a02ac

    .line 108
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/CheckBox;

    .line 109
    .local v15, "pharaohskin":Landroid/widget/CheckBox;
    if-eqz v15, :cond_2

    .line 113
    const v1, 0x7f0a02b5

    .line 114
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/CheckBox;

    .line 115
    .local v16, "posreidon":Landroid/widget/CheckBox;
    if-eqz v16, :cond_1

    .line 119
    const v1, 0x7f0a0322

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/CheckBox;

    .line 121
    .local v17, "silvanus":Landroid/widget/CheckBox;
    if-eqz v17, :cond_0

    .line 125
    new-instance v18, Lpubgm/loader/databinding/EspSkinBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lpubgm/loader/databinding/EspSkinBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    return-object v18

    .line 122
    :cond_0
    goto :goto_0

    .line 116
    .end local v17    # "silvanus":Landroid/widget/CheckBox;
    :cond_1
    goto :goto_0

    .line 110
    .end local v16    # "posreidon":Landroid/widget/CheckBox;
    :cond_2
    goto :goto_0

    .line 104
    .end local v15    # "pharaohskin":Landroid/widget/CheckBox;
    :cond_3
    goto :goto_0

    .line 98
    .end local v14    # "iridescense":Landroid/widget/CheckBox;
    :cond_4
    goto :goto_0

    .line 92
    .end local v13    # "bloodreven":Landroid/widget/CheckBox;
    :cond_5
    goto :goto_0

    .line 86
    .end local v12    # "avalache":Landroid/widget/CheckBox;
    :cond_6
    nop

    .line 128
    .end local v2    # "aracane":Landroid/widget/CheckBox;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/EspSkinBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 64
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/EspSkinBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/EspSkinBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/EspSkinBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 70
    const v0, 0x7f0d003e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 74
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/EspSkinBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/EspSkinBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lpubgm/loader/databinding/EspSkinBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 59
    iget-object v0, p0, Lpubgm/loader/databinding/EspSkinBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
