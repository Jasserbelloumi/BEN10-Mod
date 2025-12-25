.class public final Lpubgm/loader/databinding/MainBinding;
.super Ljava/lang/Object;
.source "MainBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final AppVersion:Landroid/widget/TextView;

.field public final errorUsername:Landroid/widget/TextView;

.field public final headerContainer:Landroid/widget/LinearLayout;

.field public final loginBtn:Lcom/google/android/material/button/MaterialButton;

.field public final logoSection:Landroid/widget/LinearLayout;

.field public final pasteIcon:Landroid/widget/ImageView;

.field public final resetKeyText:Landroid/widget/ImageView;

.field private final rootView:Landroid/widget/ScrollView;

.field public final splang:Landroid/widget/Spinner;

.field public final textUsername:Landroid/widget/EditText;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Spinner;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/ScrollView;
    .param p2, "AppVersion"    # Landroid/widget/TextView;
    .param p3, "errorUsername"    # Landroid/widget/TextView;
    .param p4, "headerContainer"    # Landroid/widget/LinearLayout;
    .param p5, "loginBtn"    # Lcom/google/android/material/button/MaterialButton;
    .param p6, "logoSection"    # Landroid/widget/LinearLayout;
    .param p7, "pasteIcon"    # Landroid/widget/ImageView;
    .param p8, "resetKeyText"    # Landroid/widget/ImageView;
    .param p9, "splang"    # Landroid/widget/Spinner;
    .param p10, "textUsername"    # Landroid/widget/EditText;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lpubgm/loader/databinding/MainBinding;->rootView:Landroid/widget/ScrollView;

    .line 60
    iput-object p2, p0, Lpubgm/loader/databinding/MainBinding;->AppVersion:Landroid/widget/TextView;

    .line 61
    iput-object p3, p0, Lpubgm/loader/databinding/MainBinding;->errorUsername:Landroid/widget/TextView;

    .line 62
    iput-object p4, p0, Lpubgm/loader/databinding/MainBinding;->headerContainer:Landroid/widget/LinearLayout;

    .line 63
    iput-object p5, p0, Lpubgm/loader/databinding/MainBinding;->loginBtn:Lcom/google/android/material/button/MaterialButton;

    .line 64
    iput-object p6, p0, Lpubgm/loader/databinding/MainBinding;->logoSection:Landroid/widget/LinearLayout;

    .line 65
    iput-object p7, p0, Lpubgm/loader/databinding/MainBinding;->pasteIcon:Landroid/widget/ImageView;

    .line 66
    iput-object p8, p0, Lpubgm/loader/databinding/MainBinding;->resetKeyText:Landroid/widget/ImageView;

    .line 67
    iput-object p9, p0, Lpubgm/loader/databinding/MainBinding;->splang:Landroid/widget/Spinner;

    .line 68
    iput-object p10, p0, Lpubgm/loader/databinding/MainBinding;->textUsername:Landroid/widget/EditText;

    .line 69
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/MainBinding;
    .locals 23
    .param p0, "rootView"    # Landroid/view/View;

    .line 98
    move-object/from16 v0, p0

    const v1, 0x7f0a000a

    .line 99
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 100
    .local v2, "AppVersion":Landroid/widget/TextView;
    if-eqz v2, :cond_8

    .line 104
    const v1, 0x7f0a017d

    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    .line 106
    .local v14, "errorUsername":Landroid/widget/TextView;
    if-eqz v14, :cond_7

    .line 110
    const v1, 0x7f0a01b8

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/LinearLayout;

    .line 112
    .local v15, "headerContainer":Landroid/widget/LinearLayout;
    if-eqz v15, :cond_6

    .line 116
    const v1, 0x7f0a022a

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 118
    .local v16, "loginBtn":Lcom/google/android/material/button/MaterialButton;
    if-eqz v16, :cond_5

    .line 122
    const v1, 0x7f0a022b

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/LinearLayout;

    .line 124
    .local v17, "logoSection":Landroid/widget/LinearLayout;
    if-eqz v17, :cond_4

    .line 128
    const v1, 0x7f0a02a4

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/ImageView;

    .line 130
    .local v18, "pasteIcon":Landroid/widget/ImageView;
    if-eqz v18, :cond_3

    .line 134
    const v1, 0x7f0a02dd

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ImageView;

    .line 136
    .local v19, "resetKeyText":Landroid/widget/ImageView;
    if-eqz v19, :cond_2

    .line 140
    const v1, 0x7f0a0337

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/Spinner;

    .line 142
    .local v20, "splang":Landroid/widget/Spinner;
    if-eqz v20, :cond_1

    .line 146
    const v1, 0x7f0a037a

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/EditText;

    .line 148
    .local v21, "textUsername":Landroid/widget/EditText;
    if-eqz v21, :cond_0

    .line 152
    new-instance v22, Lpubgm/loader/databinding/MainBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    move-object/from16 v3, v22

    move-object v5, v2

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    invoke-direct/range {v3 .. v13}, Lpubgm/loader/databinding/MainBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/Spinner;Landroid/widget/EditText;)V

    return-object v22

    .line 149
    :cond_0
    goto :goto_0

    .line 143
    .end local v21    # "textUsername":Landroid/widget/EditText;
    :cond_1
    goto :goto_0

    .line 137
    .end local v20    # "splang":Landroid/widget/Spinner;
    :cond_2
    goto :goto_0

    .line 131
    .end local v19    # "resetKeyText":Landroid/widget/ImageView;
    :cond_3
    goto :goto_0

    .line 125
    .end local v18    # "pasteIcon":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 119
    .end local v17    # "logoSection":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 113
    .end local v16    # "loginBtn":Lcom/google/android/material/button/MaterialButton;
    :cond_6
    goto :goto_0

    .line 107
    .end local v15    # "headerContainer":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 101
    .end local v14    # "errorUsername":Landroid/widget/TextView;
    :cond_8
    nop

    .line 155
    .end local v2    # "AppVersion":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/MainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/MainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/MainBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/MainBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 85
    const v0, 0x7f0d005b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/MainBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/MainBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lpubgm/loader/databinding/MainBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 1

    .line 74
    iget-object v0, p0, Lpubgm/loader/databinding/MainBinding;->rootView:Landroid/widget/ScrollView;

    return-object v0
.end method
