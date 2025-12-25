.class public final Lpubgm/loader/databinding/ActivityOtherBinding;
.super Ljava/lang/Object;
.source "ActivityOtherBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final InstallFb:Landroidx/appcompat/widget/AppCompatButton;

.field public final InstallTwitter:Landroidx/appcompat/widget/AppCompatButton;

.field public final esp32:Lcom/google/android/material/button/MaterialButton;

.field public final esp64:Lcom/google/android/material/button/MaterialButton;

.field public final espsafe:Lcom/google/android/material/button/MaterialButton;

.field public final espunsafe:Lcom/google/android/material/button/MaterialButton;

.field public final exportsetting:Landroid/widget/LinearLayout;

.field public final hiderecord:Lcom/google/android/material/button/MaterialButton;

.field public final kernel:Lcom/google/android/material/button/MaterialButton;

.field public final resetsetting:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final savesetting:Landroid/widget/LinearLayout;

.field public final system:Lcom/google/android/material/button/MaterialButton;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "InstallFb"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "InstallTwitter"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p4, "esp32"    # Lcom/google/android/material/button/MaterialButton;
    .param p5, "esp64"    # Lcom/google/android/material/button/MaterialButton;
    .param p6, "espsafe"    # Lcom/google/android/material/button/MaterialButton;
    .param p7, "espunsafe"    # Lcom/google/android/material/button/MaterialButton;
    .param p8, "exportsetting"    # Landroid/widget/LinearLayout;
    .param p9, "hiderecord"    # Lcom/google/android/material/button/MaterialButton;
    .param p10, "kernel"    # Lcom/google/android/material/button/MaterialButton;
    .param p11, "resetsetting"    # Landroid/widget/LinearLayout;
    .param p12, "savesetting"    # Landroid/widget/LinearLayout;
    .param p13, "system"    # Lcom/google/android/material/button/MaterialButton;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p2, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->InstallFb:Landroidx/appcompat/widget/AppCompatButton;

    .line 69
    iput-object p3, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->InstallTwitter:Landroidx/appcompat/widget/AppCompatButton;

    .line 70
    iput-object p4, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->esp32:Lcom/google/android/material/button/MaterialButton;

    .line 71
    iput-object p5, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->esp64:Lcom/google/android/material/button/MaterialButton;

    .line 72
    iput-object p6, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->espsafe:Lcom/google/android/material/button/MaterialButton;

    .line 73
    iput-object p7, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->espunsafe:Lcom/google/android/material/button/MaterialButton;

    .line 74
    iput-object p8, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->exportsetting:Landroid/widget/LinearLayout;

    .line 75
    iput-object p9, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->hiderecord:Lcom/google/android/material/button/MaterialButton;

    .line 76
    iput-object p10, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->kernel:Lcom/google/android/material/button/MaterialButton;

    .line 77
    iput-object p11, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->resetsetting:Landroid/widget/LinearLayout;

    .line 78
    iput-object p12, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->savesetting:Landroid/widget/LinearLayout;

    .line 79
    iput-object p13, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->system:Lcom/google/android/material/button/MaterialButton;

    .line 80
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/ActivityOtherBinding;
    .locals 29
    .param p0, "rootView"    # Landroid/view/View;

    .line 109
    move-object/from16 v0, p0

    const v1, 0x7f0a003c

    .line 110
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 111
    .local v2, "InstallFb":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v2, :cond_b

    .line 115
    const v1, 0x7f0a0040

    .line 116
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroidx/appcompat/widget/AppCompatButton;

    .line 117
    .local v17, "InstallTwitter":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v17, :cond_a

    .line 121
    const v1, 0x7f0a017e

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/google/android/material/button/MaterialButton;

    .line 123
    .local v18, "esp32":Lcom/google/android/material/button/MaterialButton;
    if-eqz v18, :cond_9

    .line 127
    const v1, 0x7f0a017f

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/google/android/material/button/MaterialButton;

    .line 129
    .local v19, "esp64":Lcom/google/android/material/button/MaterialButton;
    if-eqz v19, :cond_8

    .line 133
    const v1, 0x7f0a0181

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/google/android/material/button/MaterialButton;

    .line 135
    .local v20, "espsafe":Lcom/google/android/material/button/MaterialButton;
    if-eqz v20, :cond_7

    .line 139
    const v1, 0x7f0a0182

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Lcom/google/android/material/button/MaterialButton;

    .line 141
    .local v21, "espunsafe":Lcom/google/android/material/button/MaterialButton;
    if-eqz v21, :cond_6

    .line 145
    const v1, 0x7f0a0186

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/LinearLayout;

    .line 147
    .local v22, "exportsetting":Landroid/widget/LinearLayout;
    if-eqz v22, :cond_5

    .line 151
    const v1, 0x7f0a01be

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/google/android/material/button/MaterialButton;

    .line 153
    .local v23, "hiderecord":Lcom/google/android/material/button/MaterialButton;
    if-eqz v23, :cond_4

    .line 157
    const v1, 0x7f0a0204

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Lcom/google/android/material/button/MaterialButton;

    .line 159
    .local v24, "kernel":Lcom/google/android/material/button/MaterialButton;
    if-eqz v24, :cond_3

    .line 163
    const v1, 0x7f0a02de

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/LinearLayout;

    .line 165
    .local v25, "resetsetting":Landroid/widget/LinearLayout;
    if-eqz v25, :cond_2

    .line 169
    const v1, 0x7f0a02f1

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/LinearLayout;

    .line 171
    .local v26, "savesetting":Landroid/widget/LinearLayout;
    if-eqz v26, :cond_1

    .line 175
    const v1, 0x7f0a0352

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Lcom/google/android/material/button/MaterialButton;

    .line 177
    .local v27, "system":Lcom/google/android/material/button/MaterialButton;
    if-eqz v27, :cond_0

    .line 181
    new-instance v28, Lpubgm/loader/databinding/ActivityOtherBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v28

    move-object v5, v2

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v15, v26

    move-object/from16 v16, v27

    invoke-direct/range {v3 .. v16}, Lpubgm/loader/databinding/ActivityOtherBinding;-><init>(Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;)V

    return-object v28

    .line 178
    :cond_0
    goto :goto_0

    .line 172
    .end local v27    # "system":Lcom/google/android/material/button/MaterialButton;
    :cond_1
    goto :goto_0

    .line 166
    .end local v26    # "savesetting":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 160
    .end local v25    # "resetsetting":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 154
    .end local v24    # "kernel":Lcom/google/android/material/button/MaterialButton;
    :cond_4
    goto :goto_0

    .line 148
    .end local v23    # "hiderecord":Lcom/google/android/material/button/MaterialButton;
    :cond_5
    goto :goto_0

    .line 142
    .end local v22    # "exportsetting":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 136
    .end local v21    # "espunsafe":Lcom/google/android/material/button/MaterialButton;
    :cond_7
    goto :goto_0

    .line 130
    .end local v20    # "espsafe":Lcom/google/android/material/button/MaterialButton;
    :cond_8
    goto :goto_0

    .line 124
    .end local v19    # "esp64":Lcom/google/android/material/button/MaterialButton;
    :cond_9
    goto :goto_0

    .line 118
    .end local v18    # "esp32":Lcom/google/android/material/button/MaterialButton;
    :cond_a
    goto :goto_0

    .line 112
    .end local v17    # "InstallTwitter":Landroidx/appcompat/widget/AppCompatButton;
    :cond_b
    nop

    .line 185
    .end local v2    # "InstallFb":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/ActivityOtherBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/ActivityOtherBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/ActivityOtherBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/ActivityOtherBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 96
    const v0, 0x7f0d001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 100
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/ActivityOtherBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/ActivityOtherBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lpubgm/loader/databinding/ActivityOtherBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 85
    iget-object v0, p0, Lpubgm/loader/databinding/ActivityOtherBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
