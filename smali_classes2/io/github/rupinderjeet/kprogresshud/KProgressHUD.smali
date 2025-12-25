.class public Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
.super Ljava/lang/Object;
.source "KProgressHUD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;,
        Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;
    }
.end annotation


# instance fields
.field private mAnimateSpeed:I

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:F

.field private mDimAmount:F

.field private mFinished:Z

.field private mGraceTimeMs:I

.field private mGraceTimer:Landroid/os/Handler;

.field private mIsAutoDismiss:Z

.field private mMaxProgress:I

.field private mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

.field private mWindowColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-direct {v0, p0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;-><init>(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;Landroid/content/Context;)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mDimAmount:F

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/github/rupinderjeet/kprogresshud/R$color;->kprogresshud_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mWindowColor:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mAnimateSpeed:I

    .line 63
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mCornerRadius:F

    .line 64
    iput-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mIsAutoDismiss:Z

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mGraceTimeMs:I

    .line 66
    iput-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mFinished:Z

    .line 68
    sget-object v0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;->SPIN_INDETERMINATE:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->setStyle(Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)Z
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mFinished:Z

    return v0
.end method

.method static synthetic access$200(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)F
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mDimAmount:F

    return v0
.end method

.method static synthetic access$300(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)I
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mWindowColor:I

    return v0
.end method

.method static synthetic access$400(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)F
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mCornerRadius:F

    return v0
.end method

.method static synthetic access$500(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)I
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mMaxProgress:I

    return v0
.end method

.method static synthetic access$600(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)I
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mAnimateSpeed:I

    return v0
.end method

.method static synthetic access$700(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)Z
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 34
    iget-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mIsAutoDismiss:Z

    return v0
.end method

.method public static create(Landroid/content/Context;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 78
    new-instance v0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-direct {v0, p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;

    .line 89
    new-instance v0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-direct {v0, p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->setStyle(Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mFinished:Z

    .line 328
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->dismiss()V

    .line 331
    :cond_0
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mGraceTimer:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 332
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 333
    iput-object v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mGraceTimer:Landroid/os/Handler;

    .line 335
    :cond_1
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAnimationSpeed(I)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 0
    .param p1, "scale"    # I

    .line 178
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mAnimateSpeed:I

    .line 179
    return-object p0
.end method

.method public setAutoDismiss(Z)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 0
    .param p1, "isAutoDismiss"    # Z

    .line 284
    iput-boolean p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mIsAutoDismiss:Z

    .line 285
    return-object p0
.end method

.method public setBackgroundColor(I)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 0
    .param p1, "color"    # I

    .line 158
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mWindowColor:I

    .line 159
    return-object p0
.end method

.method public setCancellable(Landroid/content/DialogInterface$OnCancelListener;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .line 274
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setCancelable(Z)V

    .line 275
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 276
    return-object p0
.end method

.method public setCancellable(Z)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 2
    .param p1, "isCancellable"    # Z

    .line 259
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setCancelable(Z)V

    .line 260
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 261
    return-object p0
.end method

.method public setCornerRadius(F)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 0
    .param p1, "radius"    # F

    .line 168
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mCornerRadius:F

    .line 169
    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 241
    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setView(Landroid/view/View;)V

    .line 246
    return-object p0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Custom view must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDetailsLabel(Ljava/lang/String;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p1, "detailsLabel"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setDetailsLabel(Ljava/lang/String;)V

    .line 206
    return-object p0
.end method

.method public setDetailsLabel(Ljava/lang/String;I)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p1, "detailsLabel"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 214
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1, p2}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setDetailsLabel(Ljava/lang/String;I)V

    .line 215
    return-object p0
.end method

.method public setDimAmount(F)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p1, "dimAmount"    # F

    .line 124
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 125
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mDimAmount:F

    .line 127
    :cond_0
    return-object p0
.end method

.method public setGraceTime(I)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 0
    .param p1, "graceTimeMs"    # I

    .line 298
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mGraceTimeMs:I

    .line 299
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setLabel(Ljava/lang/String;)V

    .line 188
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;I)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 196
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1, p2}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setLabel(Ljava/lang/String;I)V

    .line 197
    return-object p0
.end method

.method public setMaxProgress(I)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 0
    .param p1, "maxProgress"    # I

    .line 223
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mMaxProgress:I

    .line 224
    return-object p0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 232
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setProgress(I)V

    .line 233
    return-void
.end method

.method public setSize(II)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 137
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0, p1, p2}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setSize(II)V

    .line 138
    return-object p0
.end method

.method public setStyle(Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 3
    .param p1, "style"    # Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "view":Landroid/view/View;
    sget-object v1, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$2;->$SwitchMap$io$github$rupinderjeet$kprogresshud$KProgressHUD$Style:[I

    invoke-virtual {p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$Style;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    new-instance v1, Lio/github/rupinderjeet/kprogresshud/BarView;

    iget-object v2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/github/rupinderjeet/kprogresshud/BarView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_0

    .line 107
    :pswitch_1
    new-instance v1, Lio/github/rupinderjeet/kprogresshud/AnnularView;

    iget-object v2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/github/rupinderjeet/kprogresshud/AnnularView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 108
    goto :goto_0

    .line 104
    :pswitch_2
    new-instance v1, Lio/github/rupinderjeet/kprogresshud/PieView;

    iget-object v2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/github/rupinderjeet/kprogresshud/PieView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 105
    goto :goto_0

    .line 101
    :pswitch_3
    new-instance v1, Lio/github/rupinderjeet/kprogresshud/SpinView;

    iget-object v2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lio/github/rupinderjeet/kprogresshud/SpinView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    .line 102
    nop

    .line 114
    :goto_0
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v1, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setView(Landroid/view/View;)V

    .line 115
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWindowColor(I)Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 0
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 148
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mWindowColor:I

    .line 149
    return-object p0
.end method

.method public show()Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
    .locals 4

    .line 303
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mFinished:Z

    .line 305
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mGraceTimeMs:I

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mProgressDialog:Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;

    invoke-virtual {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->show()V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mGraceTimer:Landroid/os/Handler;

    .line 309
    new-instance v1, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$1;

    invoke-direct {v1, p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$1;-><init>(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)V

    iget v2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->mGraceTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    :cond_1
    :goto_0
    return-object p0
.end method
