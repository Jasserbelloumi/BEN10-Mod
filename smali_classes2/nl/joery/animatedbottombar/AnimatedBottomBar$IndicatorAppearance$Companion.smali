.class public final Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance$Companion;
.super Ljava/lang/Object;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance$Companion;",
        "",
        "()V",
        "fromId",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;",
        "id",
        "",
        "nl.joery.animatedbottombar.library"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 1008
    invoke-direct {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromId(I)Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;
    .locals 5
    .param p1, "id"    # I

    .line 1010
    invoke-static {}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;->values()[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1011
    .local v3, "f":Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;
    invoke-virtual {v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    return-object v3

    .line 1010
    :cond_0
    nop

    .end local v3    # "f":Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1013
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method
