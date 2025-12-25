.class public final Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;
.super Ljava/lang/Object;
.source "LayoutProgressdialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final layoutContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final negativeButton:Lcom/google/android/material/button/MaterialButton;

.field public final progressTextView:Landroid/widget/TextView;

.field public final progressbarDeterminate:Landroid/widget/ProgressBar;

.field public final progressbarIndeterminate:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final textViewDeterminate:Landroid/widget/TextView;

.field public final textViewIndeterminate:Landroid/widget/TextView;

.field public final timeElapsedTextView:Landroid/widget/TextView;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "dialogLayout"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p3, "layoutContent"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p4, "negativeButton"    # Lcom/google/android/material/button/MaterialButton;
    .param p5, "progressTextView"    # Landroid/widget/TextView;
    .param p6, "progressbarDeterminate"    # Landroid/widget/ProgressBar;
    .param p7, "progressbarIndeterminate"    # Landroid/widget/ProgressBar;
    .param p8, "textViewDeterminate"    # Landroid/widget/TextView;
    .param p9, "textViewIndeterminate"    # Landroid/widget/TextView;
    .param p10, "timeElapsedTextView"    # Landroid/widget/TextView;
    .param p11, "titleView"    # Landroid/widget/TextView;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    iput-object p2, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->dialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iput-object p3, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->layoutContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    iput-object p4, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->negativeButton:Lcom/google/android/material/button/MaterialButton;

    .line 64
    iput-object p5, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressTextView:Landroid/widget/TextView;

    .line 65
    iput-object p6, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarDeterminate:Landroid/widget/ProgressBar;

    .line 66
    iput-object p7, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->progressbarIndeterminate:Landroid/widget/ProgressBar;

    .line 67
    iput-object p8, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewDeterminate:Landroid/widget/TextView;

    .line 68
    iput-object p9, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->textViewIndeterminate:Landroid/widget/TextView;

    .line 69
    iput-object p10, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->timeElapsedTextView:Landroid/widget/TextView;

    .line 70
    iput-object p11, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->titleView:Landroid/widget/TextView;

    .line 71
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;
    .locals 25
    .param p0, "rootView"    # Landroid/view/View;

    .line 100
    move-object/from16 v0, p0

    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->dialog_layout:I

    .line 101
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 102
    .local v2, "dialogLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v2, :cond_9

    .line 106
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->layoutContent:I

    .line 107
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    .local v15, "layoutContent":Landroidx/constraintlayout/widget/ConstraintLayout;
    if-eqz v15, :cond_8

    .line 112
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->negativeButton:I

    .line 113
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lcom/google/android/material/button/MaterialButton;

    .line 114
    .local v16, "negativeButton":Lcom/google/android/material/button/MaterialButton;
    if-eqz v16, :cond_7

    .line 118
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->progressTextView:I

    .line 119
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 120
    .local v17, "progressTextView":Landroid/widget/TextView;
    if-eqz v17, :cond_6

    .line 124
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->progressbar_determinate:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/ProgressBar;

    .line 126
    .local v18, "progressbarDeterminate":Landroid/widget/ProgressBar;
    if-eqz v18, :cond_5

    .line 130
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->progressbar_indeterminate:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/ProgressBar;

    .line 132
    .local v19, "progressbarIndeterminate":Landroid/widget/ProgressBar;
    if-eqz v19, :cond_4

    .line 136
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->textView_determinate:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/TextView;

    .line 138
    .local v20, "textViewDeterminate":Landroid/widget/TextView;
    if-eqz v20, :cond_3

    .line 142
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->textView_indeterminate:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/TextView;

    .line 144
    .local v21, "textViewIndeterminate":Landroid/widget/TextView;
    if-eqz v21, :cond_2

    .line 148
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->timeElapsedTextView:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/TextView;

    .line 150
    .local v22, "timeElapsedTextView":Landroid/widget/TextView;
    if-eqz v22, :cond_1

    .line 154
    sget v1, Lcom/techiness/progressdialoglibrary/R$id;->titleView:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/TextView;

    .line 156
    .local v23, "titleView":Landroid/widget/TextView;
    if-eqz v23, :cond_0

    .line 160
    new-instance v24, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object/from16 v3, v24

    move-object v5, v2

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    move-object/from16 v13, v22

    move-object/from16 v14, v23

    invoke-direct/range {v3 .. v14}, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v24

    .line 157
    :cond_0
    goto :goto_0

    .line 151
    .end local v23    # "titleView":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 145
    .end local v22    # "timeElapsedTextView":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 139
    .end local v21    # "textViewIndeterminate":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 133
    .end local v20    # "textViewDeterminate":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 127
    .end local v19    # "progressbarIndeterminate":Landroid/widget/ProgressBar;
    :cond_5
    goto :goto_0

    .line 121
    .end local v18    # "progressbarDeterminate":Landroid/widget/ProgressBar;
    :cond_6
    goto :goto_0

    .line 115
    .end local v17    # "progressTextView":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 109
    .end local v16    # "negativeButton":Lcom/google/android/material/button/MaterialButton;
    :cond_8
    goto :goto_0

    .line 103
    .end local v15    # "layoutContent":Landroidx/constraintlayout/widget/ConstraintLayout;
    :cond_9
    nop

    .line 165
    .end local v2    # "dialogLayout":Landroidx/constraintlayout/widget/ConstraintLayout;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 87
    sget v0, Lcom/techiness/progressdialoglibrary/R$layout;->layout_progressdialog:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 88
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {v0}, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->bind(Landroid/view/View;)Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/techiness/progressdialoglibrary/databinding/LayoutProgressdialogBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
