.class Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;
.super Landroid/app/Dialog;
.source "KProgressHUD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/rupinderjeet/kprogresshud/KProgressHUD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressDialog"
.end annotation


# instance fields
.field private mBackgroundLayout:Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDetailColor:I

.field private mDetailsLabel:Ljava/lang/String;

.field private mDetailsText:Landroid/widget/TextView;

.field private mDeterminateView:Lio/github/rupinderjeet/kprogresshud/Determinate;

.field private mHeight:I

.field private mIndeterminateView:Lio/github/rupinderjeet/kprogresshud/Indeterminate;

.field private mLabel:Ljava/lang/String;

.field private mLabelColor:I

.field private mLabelText:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWidth:I

.field final synthetic this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;


# direct methods
.method public constructor <init>(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 352
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    .line 353
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 349
    const/4 p1, -0x1

    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelColor:I

    .line 350
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailColor:I

    .line 354
    return-void
.end method

.method private addViewToFrame(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 400
    if-nez p1, :cond_0

    return-void

    .line 401
    :cond_0
    const/4 v0, -0x2

    .line 402
    .local v0, "wrapParam":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 403
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 376
    sget v0, Lio/github/rupinderjeet/kprogresshud/R$id;->background:I

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mBackgroundLayout:Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;

    .line 377
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$300(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->setBaseColor(I)V

    .line 378
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mBackgroundLayout:Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;

    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$400(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)F

    move-result v1

    invoke-virtual {v0, v1}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->setCornerRadius(F)V

    .line 379
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mWidth:I

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->updateBackgroundSize()V

    .line 383
    :cond_0
    sget v0, Lio/github/rupinderjeet/kprogresshud/R$id;->container:I

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 384
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->addViewToFrame(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDeterminateView:Lio/github/rupinderjeet/kprogresshud/Determinate;

    if-eqz v0, :cond_1

    .line 387
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$500(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)I

    move-result v1

    invoke-interface {v0, v1}, Lio/github/rupinderjeet/kprogresshud/Determinate;->setMax(I)V

    .line 389
    :cond_1
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mIndeterminateView:Lio/github/rupinderjeet/kprogresshud/Indeterminate;

    if-eqz v0, :cond_2

    .line 390
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$600(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0, v1}, Lio/github/rupinderjeet/kprogresshud/Indeterminate;->setAnimationSpeed(F)V

    .line 393
    :cond_2
    sget v0, Lio/github/rupinderjeet/kprogresshud/R$id;->label:I

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelText:Landroid/widget/TextView;

    .line 394
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabel:Ljava/lang/String;

    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelColor:I

    invoke-virtual {p0, v0, v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setLabel(Ljava/lang/String;I)V

    .line 395
    sget v0, Lio/github/rupinderjeet/kprogresshud/R$id;->details_label:I

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsText:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsLabel:Ljava/lang/String;

    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailColor:I

    invoke-virtual {p0, v0, v1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setDetailsLabel(Ljava/lang/String;I)V

    .line 397
    return-void
.end method

.method private updateBackgroundSize()V
    .locals 3

    .line 407
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mBackgroundLayout:Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;

    invoke-virtual {v0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 408
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 409
    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 410
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mBackgroundLayout:Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;

    invoke-virtual {v1, v0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 358
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 359
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->requestWindowFeature(I)Z

    .line 360
    sget v0, Lio/github/rupinderjeet/kprogresshud/R$layout;->kprogresshud_hud:I

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setContentView(I)V

    .line 362
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 363
    .local v0, "window":Landroid/view/Window;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 364
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 365
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 366
    .local v1, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v3}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$200(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)F

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 367
    const/16 v3, 0x11

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 370
    invoke-virtual {p0, v2}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 372
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->initViews()V

    .line 373
    return-void
.end method

.method public setDetailsLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "detailsLabel"    # Ljava/lang/String;

    .line 451
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsLabel:Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 453
    if-eqz p1, :cond_0

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 457
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    :cond_1
    :goto_0
    return-void
.end method

.method public setDetailsLabel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "detailsLabel"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 477
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsLabel:Ljava/lang/String;

    .line 478
    iput p2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailColor:I

    .line 479
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 480
    if-eqz p1, :cond_0

    .line 481
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDetailsText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 485
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 488
    :cond_1
    :goto_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .line 439
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabel:Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 441
    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 445
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    :cond_1
    :goto_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 463
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabel:Ljava/lang/String;

    .line 464
    iput p2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelColor:I

    .line 465
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 466
    if-eqz p1, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 469
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mLabelText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 471
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 474
    :cond_1
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 414
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDeterminateView:Lio/github/rupinderjeet/kprogresshud/Determinate;

    if-eqz v0, :cond_0

    .line 415
    invoke-interface {v0, p1}, Lio/github/rupinderjeet/kprogresshud/Determinate;->setProgress(I)V

    .line 416
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$700(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->this$0:Lio/github/rupinderjeet/kprogresshud/KProgressHUD;

    invoke-static {v0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD;->access$500(Lio/github/rupinderjeet/kprogresshud/KProgressHUD;)I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->dismiss()V

    .line 420
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 491
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mWidth:I

    .line 492
    iput p2, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mHeight:I

    .line 493
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mBackgroundLayout:Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->updateBackgroundSize()V

    .line 496
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 423
    if-eqz p1, :cond_2

    .line 424
    instance-of v0, p1, Lio/github/rupinderjeet/kprogresshud/Determinate;

    if-eqz v0, :cond_0

    .line 425
    move-object v0, p1

    check-cast v0, Lio/github/rupinderjeet/kprogresshud/Determinate;

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mDeterminateView:Lio/github/rupinderjeet/kprogresshud/Determinate;

    .line 427
    :cond_0
    instance-of v0, p1, Lio/github/rupinderjeet/kprogresshud/Indeterminate;

    if-eqz v0, :cond_1

    .line 428
    move-object v0, p1

    check-cast v0, Lio/github/rupinderjeet/kprogresshud/Indeterminate;

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mIndeterminateView:Lio/github/rupinderjeet/kprogresshud/Indeterminate;

    .line 430
    :cond_1
    iput-object p1, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mView:Landroid/view/View;

    .line 431
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 433
    invoke-direct {p0, p1}, Lio/github/rupinderjeet/kprogresshud/KProgressHUD$ProgressDialog;->addViewToFrame(Landroid/view/View;)V

    .line 436
    :cond_2
    return-void
.end method
