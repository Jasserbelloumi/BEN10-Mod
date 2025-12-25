.class public final Lpubgm/loader/databinding/BottomUpdateBinding;
.super Ljava/lang/Object;
.source "BottomUpdateBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btn:Landroid/widget/Button;

.field public final btnCancle:Landroid/widget/Button;

.field public final icon:Landroid/widget/ImageView;

.field public final msg:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final title:Landroid/widget/TextView;

.field public final updateee:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "btn"    # Landroid/widget/Button;
    .param p3, "btnCancle"    # Landroid/widget/Button;
    .param p4, "icon"    # Landroid/widget/ImageView;
    .param p5, "msg"    # Landroid/widget/TextView;
    .param p6, "title"    # Landroid/widget/TextView;
    .param p7, "updateee"    # Landroid/widget/Button;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->rootView:Landroid/widget/LinearLayout;

    .line 46
    iput-object p2, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->btn:Landroid/widget/Button;

    .line 47
    iput-object p3, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->btnCancle:Landroid/widget/Button;

    .line 48
    iput-object p4, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->icon:Landroid/widget/ImageView;

    .line 49
    iput-object p5, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->msg:Landroid/widget/TextView;

    .line 50
    iput-object p6, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->title:Landroid/widget/TextView;

    .line 51
    iput-object p7, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->updateee:Landroid/widget/Button;

    .line 52
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/BottomUpdateBinding;
    .locals 17
    .param p0, "rootView"    # Landroid/view/View;

    .line 81
    move-object/from16 v0, p0

    const v1, 0x7f0a010f

    .line 82
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 83
    .local v2, "btn":Landroid/widget/Button;
    if-eqz v2, :cond_5

    .line 87
    const v1, 0x7f0a0110

    .line 88
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/widget/Button;

    .line 89
    .local v11, "btnCancle":Landroid/widget/Button;
    if-eqz v11, :cond_4

    .line 93
    const v1, 0x7f0a01c6

    .line 94
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/ImageView;

    .line 95
    .local v12, "icon":Landroid/widget/ImageView;
    if-eqz v12, :cond_3

    .line 99
    const v1, 0x7f0a0263

    .line 100
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 101
    .local v13, "msg":Landroid/widget/TextView;
    if-eqz v13, :cond_2

    .line 105
    const v1, 0x7f0a038e

    .line 106
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 107
    .local v14, "title":Landroid/widget/TextView;
    if-eqz v14, :cond_1

    .line 111
    const v1, 0x7f0a03bd

    .line 112
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/Button;

    .line 113
    .local v15, "updateee":Landroid/widget/Button;
    if-eqz v15, :cond_0

    .line 117
    new-instance v16, Lpubgm/loader/databinding/BottomUpdateBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    move-object/from16 v3, v16

    move-object v5, v2

    move-object v6, v11

    move-object v7, v12

    move-object v8, v13

    move-object v9, v14

    move-object v10, v15

    invoke-direct/range {v3 .. v10}, Lpubgm/loader/databinding/BottomUpdateBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    return-object v16

    .line 114
    :cond_0
    goto :goto_0

    .line 108
    .end local v15    # "updateee":Landroid/widget/Button;
    :cond_1
    goto :goto_0

    .line 102
    .end local v14    # "title":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 96
    .end local v13    # "msg":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 90
    .end local v12    # "icon":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 84
    .end local v11    # "btnCancle":Landroid/widget/Button;
    :cond_5
    nop

    .line 120
    .end local v2    # "btn":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/BottomUpdateBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/BottomUpdateBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/BottomUpdateBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/BottomUpdateBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 68
    const v0, 0x7f0d0026

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/BottomUpdateBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/BottomUpdateBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lpubgm/loader/databinding/BottomUpdateBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lpubgm/loader/databinding/BottomUpdateBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
