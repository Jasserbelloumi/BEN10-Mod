.class public final Lpubgm/loader/databinding/DrawerHeaderBinding;
.super Ljava/lang/Object;
.source "DrawerHeaderBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final InternalProgressBar:Landroid/widget/ProgressBar;

.field public final editProfileIcon:Landroid/widget/ImageView;

.field public final keydisplay:Landroid/widget/TextView;

.field public final keyexpiry:Landroid/widget/TextView;

.field public final percentageStorageText:Landroid/widget/TextView;

.field public final percentageText:Landroid/widget/TextView;

.field public final profileCard:Landroidx/cardview/widget/CardView;

.field public final profileImage:Landroid/widget/ImageView;

.field public final profileName:Landroid/widget/EditText;

.field public final ramTextView:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final storageInfoText:Landroid/widget/TextView;

.field public final storageProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/LinearLayout;
    .param p2, "InternalProgressBar"    # Landroid/widget/ProgressBar;
    .param p3, "editProfileIcon"    # Landroid/widget/ImageView;
    .param p4, "keydisplay"    # Landroid/widget/TextView;
    .param p5, "keyexpiry"    # Landroid/widget/TextView;
    .param p6, "percentageStorageText"    # Landroid/widget/TextView;
    .param p7, "percentageText"    # Landroid/widget/TextView;
    .param p8, "profileCard"    # Landroidx/cardview/widget/CardView;
    .param p9, "profileImage"    # Landroid/widget/ImageView;
    .param p10, "profileName"    # Landroid/widget/EditText;
    .param p11, "ramTextView"    # Landroid/widget/TextView;
    .param p12, "storageInfoText"    # Landroid/widget/TextView;
    .param p13, "storageProgressBar"    # Landroid/widget/ProgressBar;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    .line 70
    iput-object p2, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->InternalProgressBar:Landroid/widget/ProgressBar;

    .line 71
    iput-object p3, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->editProfileIcon:Landroid/widget/ImageView;

    .line 72
    iput-object p4, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->keydisplay:Landroid/widget/TextView;

    .line 73
    iput-object p5, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->keyexpiry:Landroid/widget/TextView;

    .line 74
    iput-object p6, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->percentageStorageText:Landroid/widget/TextView;

    .line 75
    iput-object p7, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->percentageText:Landroid/widget/TextView;

    .line 76
    iput-object p8, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->profileCard:Landroidx/cardview/widget/CardView;

    .line 77
    iput-object p9, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->profileImage:Landroid/widget/ImageView;

    .line 78
    iput-object p10, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->profileName:Landroid/widget/EditText;

    .line 79
    iput-object p11, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->ramTextView:Landroid/widget/TextView;

    .line 80
    iput-object p12, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->storageInfoText:Landroid/widget/TextView;

    .line 81
    iput-object p13, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->storageProgressBar:Landroid/widget/ProgressBar;

    .line 82
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/DrawerHeaderBinding;
    .locals 29
    .param p0, "rootView"    # Landroid/view/View;

    .line 111
    move-object/from16 v0, p0

    const v1, 0x7f0a0042

    .line 112
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 113
    .local v2, "InternalProgressBar":Landroid/widget/ProgressBar;
    if-eqz v2, :cond_b

    .line 117
    const v1, 0x7f0a0172

    .line 118
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/ImageView;

    .line 119
    .local v17, "editProfileIcon":Landroid/widget/ImageView;
    if-eqz v17, :cond_a

    .line 123
    const v1, 0x7f0a0205

    .line 124
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/TextView;

    .line 125
    .local v18, "keydisplay":Landroid/widget/TextView;
    if-eqz v18, :cond_9

    .line 129
    const v1, 0x7f0a0206

    .line 130
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/TextView;

    .line 131
    .local v19, "keyexpiry":Landroid/widget/TextView;
    if-eqz v19, :cond_8

    .line 135
    const v1, 0x7f0a02a9

    .line 136
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 137
    .local v20, "percentageStorageText":Landroid/widget/TextView;
    if-eqz v20, :cond_7

    .line 141
    const v1, 0x7f0a02aa

    .line 142
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 143
    .local v21, "percentageText":Landroid/widget/TextView;
    if-eqz v21, :cond_6

    .line 147
    const v1, 0x7f0a02bd

    .line 148
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroidx/cardview/widget/CardView;

    .line 149
    .local v22, "profileCard":Landroidx/cardview/widget/CardView;
    if-eqz v22, :cond_5

    .line 153
    const v1, 0x7f0a02be

    .line 154
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/ImageView;

    .line 155
    .local v23, "profileImage":Landroid/widget/ImageView;
    if-eqz v23, :cond_4

    .line 159
    const v1, 0x7f0a02bf

    .line 160
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/EditText;

    .line 161
    .local v24, "profileName":Landroid/widget/EditText;
    if-eqz v24, :cond_3

    .line 165
    const v1, 0x7f0a02c7

    .line 166
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/TextView;

    .line 167
    .local v25, "ramTextView":Landroid/widget/TextView;
    if-eqz v25, :cond_2

    .line 171
    const v1, 0x7f0a034a

    .line 172
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 173
    .local v26, "storageInfoText":Landroid/widget/TextView;
    if-eqz v26, :cond_1

    .line 177
    const v1, 0x7f0a034b

    .line 178
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/ProgressBar;

    .line 179
    .local v27, "storageProgressBar":Landroid/widget/ProgressBar;
    if-eqz v27, :cond_0

    .line 183
    new-instance v28, Lpubgm/loader/databinding/DrawerHeaderBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

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

    invoke-direct/range {v3 .. v16}, Lpubgm/loader/databinding/DrawerHeaderBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/cardview/widget/CardView;Landroid/widget/ImageView;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    return-object v28

    .line 180
    :cond_0
    goto :goto_0

    .line 174
    .end local v27    # "storageProgressBar":Landroid/widget/ProgressBar;
    :cond_1
    goto :goto_0

    .line 168
    .end local v26    # "storageInfoText":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 162
    .end local v25    # "ramTextView":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 156
    .end local v24    # "profileName":Landroid/widget/EditText;
    :cond_4
    goto :goto_0

    .line 150
    .end local v23    # "profileImage":Landroid/widget/ImageView;
    :cond_5
    goto :goto_0

    .line 144
    .end local v22    # "profileCard":Landroidx/cardview/widget/CardView;
    :cond_6
    goto :goto_0

    .line 138
    .end local v21    # "percentageText":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 132
    .end local v20    # "percentageStorageText":Landroid/widget/TextView;
    :cond_8
    goto :goto_0

    .line 126
    .end local v19    # "keyexpiry":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 120
    .end local v18    # "keydisplay":Landroid/widget/TextView;
    :cond_a
    goto :goto_0

    .line 114
    .end local v17    # "editProfileIcon":Landroid/widget/ImageView;
    :cond_b
    nop

    .line 187
    .end local v2    # "InternalProgressBar":Landroid/widget/ProgressBar;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/DrawerHeaderBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/DrawerHeaderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/DrawerHeaderBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/DrawerHeaderBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 98
    const v0, 0x7f0d003a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/DrawerHeaderBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/DrawerHeaderBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lpubgm/loader/databinding/DrawerHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 87
    iget-object v0, p0, Lpubgm/loader/databinding/DrawerHeaderBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
