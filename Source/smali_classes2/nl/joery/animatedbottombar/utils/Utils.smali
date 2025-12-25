.class public final Lnl/joery/animatedbottombar/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/utils/Utils;",
        "",
        "()V",
        "loadInterpolator",
        "Landroid/view/animation/Interpolator;",
        "context",
        "Landroid/content/Context;",
        "resId",
        "",
        "defaultInterpolator",
        "nl.joery.animatedbottombar.library"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnl/joery/animatedbottombar/utils/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lnl/joery/animatedbottombar/utils/Utils;

    invoke-direct {v0}, Lnl/joery/animatedbottombar/utils/Utils;-><init>()V

    sput-object v0, Lnl/joery/animatedbottombar/utils/Utils;->INSTANCE:Lnl/joery/animatedbottombar/utils/Utils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadInterpolator(Landroid/content/Context;ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "defaultInterpolator"    # Landroid/view/animation/Interpolator;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultInterpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    if-lez p2, :cond_0

    .line 16
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    const-string v1, "AnimationUtils.loadInterpolator(context, resId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 19
    :cond_0
    return-object p3
.end method
