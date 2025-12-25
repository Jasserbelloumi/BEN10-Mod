.class Lio/github/rupinderjeet/kprogresshud/SpinView;
.super Landroid/widget/ImageView;
.source "SpinView.java"

# interfaces
.implements Lio/github/rupinderjeet/kprogresshud/Indeterminate;


# instance fields
.field private mFrameTime:I

.field private mNeedToUpdateView:Z

.field private mRotateDegrees:F

.field private mUpdateViewRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/SpinView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/SpinView;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lio/github/rupinderjeet/kprogresshud/SpinView;)F
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/SpinView;

    .line 24
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mRotateDegrees:F

    return v0
.end method

.method static synthetic access$002(Lio/github/rupinderjeet/kprogresshud/SpinView;F)F
    .locals 0
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/SpinView;
    .param p1, "x1"    # F

    .line 24
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mRotateDegrees:F

    return p1
.end method

.method static synthetic access$016(Lio/github/rupinderjeet/kprogresshud/SpinView;F)F
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/SpinView;
    .param p1, "x1"    # F

    .line 24
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mRotateDegrees:F

    add-float/2addr v0, p1

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mRotateDegrees:F

    return v0
.end method

.method static synthetic access$100(Lio/github/rupinderjeet/kprogresshud/SpinView;)Z
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/SpinView;

    .line 24
    iget-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mNeedToUpdateView:Z

    return v0
.end method

.method static synthetic access$200(Lio/github/rupinderjeet/kprogresshud/SpinView;)I
    .locals 1
    .param p0, "x0"    # Lio/github/rupinderjeet/kprogresshud/SpinView;

    .line 24
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mFrameTime:I

    return v0
.end method

.method private init()V
    .locals 1

    .line 42
    sget v0, Lio/github/rupinderjeet/kprogresshud/R$drawable;->kprogresshud_spinner:I

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/SpinView;->setImageResource(I)V

    .line 43
    const/16 v0, 0x53

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mFrameTime:I

    .line 44
    new-instance v0, Lio/github/rupinderjeet/kprogresshud/SpinView$1;

    invoke-direct {v0, p0}, Lio/github/rupinderjeet/kprogresshud/SpinView$1;-><init>(Lio/github/rupinderjeet/kprogresshud/SpinView;)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mUpdateViewRunnable:Ljava/lang/Runnable;

    .line 55
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mNeedToUpdateView:Z

    .line 72
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mUpdateViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lio/github/rupinderjeet/kprogresshud/SpinView;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mNeedToUpdateView:Z

    .line 78
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 79
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 64
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mRotateDegrees:F

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/SpinView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/SpinView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 65
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 66
    return-void
.end method

.method public setAnimationSpeed(F)V
    .locals 1
    .param p1, "scale"    # F

    .line 59
    const/high16 v0, 0x42a60000    # 83.0f

    div-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/SpinView;->mFrameTime:I

    .line 60
    return-void
.end method
