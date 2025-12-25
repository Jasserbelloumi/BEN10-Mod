.class Lio/github/rupinderjeet/kprogresshud/PieView;
.super Landroid/view/View;
.source "PieView.java"

# interfaces
.implements Lio/github/rupinderjeet/kprogresshud/Determinate;


# instance fields
.field private mBound:Landroid/graphics/RectF;

.field private mGreyPaint:Landroid/graphics/Paint;

.field private mMax:I

.field private mProgress:I

.field private mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mMax:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mProgress:I

    .line 37
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mMax:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mProgress:I

    .line 42
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/16 v0, 0x64

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mMax:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mProgress:I

    .line 47
    invoke-direct {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 4

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mWhitePaint:Landroid/graphics/Paint;

    .line 52
    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v2}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 54
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mWhitePaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mGreyPaint:Landroid/graphics/Paint;

    .line 57
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3, v1}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 59
    iget-object v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mBound:Landroid/graphics/RectF;

    .line 62
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget v0, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 75
    .local v0, "mAngle":F
    iget-object v3, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mBound:Landroid/graphics/RectF;

    iget-object v7, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mWhitePaint:Landroid/graphics/Paint;

    const/high16 v4, 0x43870000    # 270.0f

    const/4 v6, 0x1

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2, v1}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v1

    .line 77
    .local v1, "padding":I
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 82
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 83
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    .line 84
    .local v0, "dimension":I
    invoke-virtual {p0, v0, v0}, Lio/github/rupinderjeet/kprogresshud/PieView;->setMeasuredDimension(II)V

    .line 85
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 67
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1, v0}, Lio/github/rupinderjeet/kprogresshud/Helper;->dpToPixel(FLandroid/content/Context;)I

    move-result v0

    .line 68
    .local v0, "padding":I
    iget-object v1, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mBound:Landroid/graphics/RectF;

    int-to-float v2, v0

    int-to-float v3, v0

    sub-int v4, p1, v0

    int-to-float v4, v4

    sub-int v5, p2, v0

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 69
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 89
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mMax:I

    .line 90
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 94
    iput p1, p0, Lio/github/rupinderjeet/kprogresshud/PieView;->mProgress:I

    .line 95
    invoke-virtual {p0}, Lio/github/rupinderjeet/kprogresshud/PieView;->invalidate()V

    .line 96
    return-void
.end method
