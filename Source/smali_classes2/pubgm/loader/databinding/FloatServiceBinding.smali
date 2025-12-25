.class public final Lpubgm/loader/databinding/FloatServiceBinding;
.super Ljava/lang/Object;
.source "FloatServiceBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final closeBtn:Landroid/widget/ImageView;

.field public final espTabbar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

.field public final layoutIconControlView:Landroid/widget/RelativeLayout;

.field public final layoutMainView:Landroid/widget/LinearLayout;

.field public final layoutView:Landroid/widget/LinearLayout;

.field public final menuf1:Landroid/widget/LinearLayout;

.field public final menuf2:Landroid/widget/LinearLayout;

.field public final menuf3:Landroid/widget/LinearLayout;

.field public final menuf4:Landroid/widget/LinearLayout;

.field public final menuf5:Landroid/widget/LinearLayout;

.field public final menuf6:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/FrameLayout;
    .param p2, "closeBtn"    # Landroid/widget/ImageView;
    .param p3, "espTabbar"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p4, "layoutIconControlView"    # Landroid/widget/RelativeLayout;
    .param p5, "layoutMainView"    # Landroid/widget/LinearLayout;
    .param p6, "layoutView"    # Landroid/widget/LinearLayout;
    .param p7, "menuf1"    # Landroid/widget/LinearLayout;
    .param p8, "menuf2"    # Landroid/widget/LinearLayout;
    .param p9, "menuf3"    # Landroid/widget/LinearLayout;
    .param p10, "menuf4"    # Landroid/widget/LinearLayout;
    .param p11, "menuf5"    # Landroid/widget/LinearLayout;
    .param p12, "menuf6"    # Landroid/widget/LinearLayout;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lpubgm/loader/databinding/FloatServiceBinding;->rootView:Landroid/widget/FrameLayout;

    .line 64
    iput-object p2, p0, Lpubgm/loader/databinding/FloatServiceBinding;->closeBtn:Landroid/widget/ImageView;

    .line 65
    iput-object p3, p0, Lpubgm/loader/databinding/FloatServiceBinding;->espTabbar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 66
    iput-object p4, p0, Lpubgm/loader/databinding/FloatServiceBinding;->layoutIconControlView:Landroid/widget/RelativeLayout;

    .line 67
    iput-object p5, p0, Lpubgm/loader/databinding/FloatServiceBinding;->layoutMainView:Landroid/widget/LinearLayout;

    .line 68
    iput-object p6, p0, Lpubgm/loader/databinding/FloatServiceBinding;->layoutView:Landroid/widget/LinearLayout;

    .line 69
    iput-object p7, p0, Lpubgm/loader/databinding/FloatServiceBinding;->menuf1:Landroid/widget/LinearLayout;

    .line 70
    iput-object p8, p0, Lpubgm/loader/databinding/FloatServiceBinding;->menuf2:Landroid/widget/LinearLayout;

    .line 71
    iput-object p9, p0, Lpubgm/loader/databinding/FloatServiceBinding;->menuf3:Landroid/widget/LinearLayout;

    .line 72
    iput-object p10, p0, Lpubgm/loader/databinding/FloatServiceBinding;->menuf4:Landroid/widget/LinearLayout;

    .line 73
    iput-object p11, p0, Lpubgm/loader/databinding/FloatServiceBinding;->menuf5:Landroid/widget/LinearLayout;

    .line 74
    iput-object p12, p0, Lpubgm/loader/databinding/FloatServiceBinding;->menuf6:Landroid/widget/LinearLayout;

    .line 75
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/FloatServiceBinding;
    .locals 27
    .param p0, "rootView"    # Landroid/view/View;

    .line 104
    move-object/from16 v0, p0

    const v1, 0x7f0a012d

    .line 105
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 106
    .local v2, "closeBtn":Landroid/widget/ImageView;
    if-eqz v2, :cond_a

    .line 110
    const v1, 0x7f0a0180

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 112
    .local v16, "espTabbar":Lnl/joery/animatedbottombar/AnimatedBottomBar;
    if-eqz v16, :cond_9

    .line 116
    const v1, 0x7f0a020d

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/RelativeLayout;

    .line 118
    .local v17, "layoutIconControlView":Landroid/widget/RelativeLayout;
    if-eqz v17, :cond_8

    .line 122
    const v1, 0x7f0a020e

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/LinearLayout;

    .line 124
    .local v18, "layoutMainView":Landroid/widget/LinearLayout;
    if-eqz v18, :cond_7

    .line 128
    const v1, 0x7f0a020f

    .line 129
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/LinearLayout;

    .line 130
    .local v19, "layoutView":Landroid/widget/LinearLayout;
    if-eqz v19, :cond_6

    .line 134
    const v1, 0x7f0a0250

    .line 135
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/LinearLayout;

    .line 136
    .local v20, "menuf1":Landroid/widget/LinearLayout;
    if-eqz v20, :cond_5

    .line 140
    const v1, 0x7f0a0251

    .line 141
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/LinearLayout;

    .line 142
    .local v21, "menuf2":Landroid/widget/LinearLayout;
    if-eqz v21, :cond_4

    .line 146
    const v1, 0x7f0a0252

    .line 147
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/LinearLayout;

    .line 148
    .local v22, "menuf3":Landroid/widget/LinearLayout;
    if-eqz v22, :cond_3

    .line 152
    const v1, 0x7f0a0253

    .line 153
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/LinearLayout;

    .line 154
    .local v23, "menuf4":Landroid/widget/LinearLayout;
    if-eqz v23, :cond_2

    .line 158
    const v1, 0x7f0a0254

    .line 159
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/LinearLayout;

    .line 160
    .local v24, "menuf5":Landroid/widget/LinearLayout;
    if-eqz v24, :cond_1

    .line 164
    const v1, 0x7f0a0255

    .line 165
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/LinearLayout;

    .line 166
    .local v25, "menuf6":Landroid/widget/LinearLayout;
    if-eqz v25, :cond_0

    .line 170
    new-instance v26, Lpubgm/loader/databinding/FloatServiceBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    move-object/from16 v3, v26

    move-object v5, v2

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v15, v25

    invoke-direct/range {v3 .. v15}, Lpubgm/loader/databinding/FloatServiceBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v26

    .line 167
    :cond_0
    goto :goto_0

    .line 161
    .end local v25    # "menuf6":Landroid/widget/LinearLayout;
    :cond_1
    goto :goto_0

    .line 155
    .end local v24    # "menuf5":Landroid/widget/LinearLayout;
    :cond_2
    goto :goto_0

    .line 149
    .end local v23    # "menuf4":Landroid/widget/LinearLayout;
    :cond_3
    goto :goto_0

    .line 143
    .end local v22    # "menuf3":Landroid/widget/LinearLayout;
    :cond_4
    goto :goto_0

    .line 137
    .end local v21    # "menuf2":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 131
    .end local v20    # "menuf1":Landroid/widget/LinearLayout;
    :cond_6
    goto :goto_0

    .line 125
    .end local v19    # "layoutView":Landroid/widget/LinearLayout;
    :cond_7
    goto :goto_0

    .line 119
    .end local v18    # "layoutMainView":Landroid/widget/LinearLayout;
    :cond_8
    goto :goto_0

    .line 113
    .end local v17    # "layoutIconControlView":Landroid/widget/RelativeLayout;
    :cond_9
    goto :goto_0

    .line 107
    .end local v16    # "espTabbar":Lnl/joery/animatedbottombar/AnimatedBottomBar;
    :cond_a
    nop

    .line 174
    .end local v2    # "closeBtn":Landroid/widget/ImageView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/FloatServiceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/FloatServiceBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/FloatServiceBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/FloatServiceBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 91
    const v0, 0x7f0d0042

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 95
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/FloatServiceBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/FloatServiceBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lpubgm/loader/databinding/FloatServiceBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 1

    .line 80
    iget-object v0, p0, Lpubgm/loader/databinding/FloatServiceBinding;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method
