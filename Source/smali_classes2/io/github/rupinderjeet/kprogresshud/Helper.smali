.class Lio/github/rupinderjeet/kprogresshud/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field private static scale:F


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dpToPixel(FLandroid/content/Context;)I
    .locals 2
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    sget v0, Lio/github/rupinderjeet/kprogresshud/Helper;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lio/github/rupinderjeet/kprogresshud/Helper;->scale:F

    .line 29
    :cond_0
    sget v0, Lio/github/rupinderjeet/kprogresshud/Helper;->scale:F

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method
