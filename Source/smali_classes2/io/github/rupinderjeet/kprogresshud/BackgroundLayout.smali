.class public Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;
.super Landroid/widget/LinearLayout;
.source "BackgroundLayout.java"


# instance fields
.field private mBackgroundColor:I

.field private mCornerRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->init()V

    .line 45
    return-void
.end method

.method private init()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lio/github/rupinderjeet/kprogresshud/R$color;->kprogresshud_default_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 49
    .local v0, "color":I
    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->mCornerRadius:F

    invoke-direct {p0, v0, v1}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->initBackground(IF)V

    .line 50
    return-void
.end method

.method private initBackground(IF)V
    .locals 2
    .param p1, "color"    # I
    .param p2, "cornerRadius"    # F

    .line 53
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 54
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 56
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 57
    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method


# virtual methods
.method public setBaseColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 66
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->mBackgroundColor:I

    .line 67
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->mCornerRadius:F

    invoke-direct {p0, p1, v0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->initBackground(IF)V

    .line 68
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 2
    .param p1, "radius"    # F

    .line 61
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->mCornerRadius:F

    .line 62
    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->mBackgroundColor:I

    invoke-direct {p0, v1, v0}, Lio/github/rupinderjeet/kprogresshud/BackgroundLayout;->initBackground(IF)V

    .line 63
    return-void
.end method
