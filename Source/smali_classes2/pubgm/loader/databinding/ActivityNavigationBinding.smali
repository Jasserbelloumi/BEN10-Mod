.class public final Lpubgm/loader/databinding/ActivityNavigationBinding;
.super Ljava/lang/Object;
.source "ActivityNavigationBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final effecthome:Landroid/widget/LinearLayout;

.field public final effectsetting:Landroid/widget/LinearLayout;

.field public final imenu1:Landroid/widget/LinearLayout;

.field public final imenu2:Landroid/widget/LinearLayout;

.field public final imghome:Landroid/widget/ImageView;

.field public final imgsett:Landroid/widget/ImageView;

.field public final navhome:Landroid/widget/LinearLayout;

.field public final navsetting:Landroid/widget/LinearLayout;

.field public final progress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final sidebar:Landroid/widget/ImageView;

.field public final textroot:Landroid/widget/TextView;

.field public final txthome:Landroid/widget/TextView;

.field public final txtsett:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "effecthome"    # Landroid/widget/LinearLayout;
    .param p3, "effectsetting"    # Landroid/widget/LinearLayout;
    .param p4, "imenu1"    # Landroid/widget/LinearLayout;
    .param p5, "imenu2"    # Landroid/widget/LinearLayout;
    .param p6, "imghome"    # Landroid/widget/ImageView;
    .param p7, "imgsett"    # Landroid/widget/ImageView;
    .param p8, "navhome"    # Landroid/widget/LinearLayout;
    .param p9, "navsetting"    # Landroid/widget/LinearLayout;
    .param p10, "progress"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .param p11, "sidebar"    # Landroid/widget/ImageView;
    .param p12, "textroot"    # Landroid/widget/TextView;
    .param p13, "txthome"    # Landroid/widget/TextView;
    .param p14, "txtsett"    # Landroid/widget/TextView;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 71
    iput-object p2, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->effecthome:Landroid/widget/LinearLayout;

    .line 72
    iput-object p3, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->effectsetting:Landroid/widget/LinearLayout;

    .line 73
    iput-object p4, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->imenu1:Landroid/widget/LinearLayout;

    .line 74
    iput-object p5, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->imenu2:Landroid/widget/LinearLayout;

    .line 75
    iput-object p6, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->imghome:Landroid/widget/ImageView;

    .line 76
    iput-object p7, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->imgsett:Landroid/widget/ImageView;

    .line 77
    iput-object p8, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->navhome:Landroid/widget/LinearLayout;

    .line 78
    iput-object p9, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->navsetting:Landroid/widget/LinearLayout;

    .line 79
    iput-object p10, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->progress:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 80
    iput-object p11, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->sidebar:Landroid/widget/ImageView;

    .line 81
    iput-object p12, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->textroot:Landroid/widget/TextView;

    .line 82
    iput-object p13, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->txthome:Landroid/widget/TextView;

    .line 83
    iput-object p14, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->txtsett:Landroid/widget/TextView;

    .line 84
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/ActivityNavigationBinding;
    .locals 31
    .param p0, "rootView"    # Landroid/view/View;

    .line 113
    move-object/from16 v0, p0

    const v1, 0x7f0a0174

    .line 114
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 115
    .local v2, "effecthome":Landroid/widget/LinearLayout;
    if-eqz v2, :cond_c

    .line 119
    const v1, 0x7f0a0175

    .line 120
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/LinearLayout;

    .line 121
    .local v18, "effectsetting":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_b

    .line 125
    const v1, 0x7f0a01d1

    .line 126
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/LinearLayout;

    .line 127
    .local v19, "imenu1":Landroid/widget/LinearLayout;
    if-eqz v19, :cond_a

    .line 131
    const v1, 0x7f0a01d2

    .line 132
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/LinearLayout;

    .line 133
    .local v20, "imenu2":Landroid/widget/LinearLayout;
    if-eqz v20, :cond_9

    .line 137
    const v1, 0x7f0a01d3

    .line 138
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/ImageView;

    .line 139
    .local v21, "imghome":Landroid/widget/ImageView;
    if-eqz v21, :cond_8

    .line 143
    const v1, 0x7f0a01d4

    .line 144
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/ImageView;

    .line 145
    .local v22, "imgsett":Landroid/widget/ImageView;
    if-eqz v22, :cond_7

    .line 149
    const v1, 0x7f0a027d

    .line 150
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/LinearLayout;

    .line 151
    .local v23, "navhome":Landroid/widget/LinearLayout;
    if-eqz v23, :cond_6

    .line 155
    const v1, 0x7f0a0286

    .line 156
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/LinearLayout;

    .line 157
    .local v24, "navsetting":Landroid/widget/LinearLayout;
    if-eqz v24, :cond_5

    .line 161
    const v1, 0x7f0a02c0

    .line 162
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 163
    .local v25, "progress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    if-eqz v25, :cond_4

    .line 167
    const v1, 0x7f0a0321

    .line 168
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/ImageView;

    .line 169
    .local v26, "sidebar":Landroid/widget/ImageView;
    if-eqz v26, :cond_3

    .line 173
    const v1, 0x7f0a0389

    .line 174
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 175
    .local v27, "textroot":Landroid/widget/TextView;
    if-eqz v27, :cond_2

    .line 179
    const v1, 0x7f0a03b7

    .line 180
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/TextView;

    .line 181
    .local v28, "txthome":Landroid/widget/TextView;
    if-eqz v28, :cond_1

    .line 185
    const v1, 0x7f0a03b8

    .line 186
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/TextView;

    .line 187
    .local v29, "txtsett":Landroid/widget/TextView;
    if-eqz v29, :cond_0

    .line 191
    new-instance v30, Lpubgm/loader/databinding/ActivityNavigationBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v30

    move-object v5, v2

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v13, v25

    move-object/from16 v14, v26

    move-object/from16 v15, v27

    move-object/from16 v16, v28

    move-object/from16 v17, v29

    invoke-direct/range {v3 .. v17}, Lpubgm/loader/databinding/ActivityNavigationBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v30

    .line 188
    :cond_0
    goto :goto_0

    .line 182
    .end local v29    # "txtsett":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 176
    .end local v28    # "txthome":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 170
    .end local v27    # "textroot":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 164
    .end local v26    # "sidebar":Landroid/widget/ImageView;
    :cond_4
    goto :goto_0

    .line 158
    .end local v25    # "progress":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    :cond_5
    goto :goto_0

    .line 152
    .end local v24    # "navsetting":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 146
    .end local v23    # "navhome":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 140
    .end local v22    # "imgsett":Landroid/widget/ImageView;
    :cond_8
    goto :goto_0

    .line 134
    .end local v21    # "imghome":Landroid/widget/ImageView;
    :cond_9
    goto :goto_0

    .line 128
    .end local v20    # "imenu2":Landroid/widget/LinearLayout;
    :cond_a
    goto :goto_0

    .line 122
    .end local v19    # "imenu1":Landroid/widget/LinearLayout;
    :cond_b
    goto :goto_0

    .line 116
    .end local v18    # "effectsetting":Landroid/widget/LinearLayout;
    :cond_c
    nop

    .line 195
    .end local v2    # "effecthome":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/ActivityNavigationBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/ActivityNavigationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/ActivityNavigationBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/ActivityNavigationBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 100
    const v0, 0x7f0d001e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/ActivityNavigationBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/ActivityNavigationBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lpubgm/loader/databinding/ActivityNavigationBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 89
    iget-object v0, p0, Lpubgm/loader/databinding/ActivityNavigationBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
