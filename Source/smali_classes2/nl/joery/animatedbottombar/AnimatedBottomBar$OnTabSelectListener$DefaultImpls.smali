.class public final Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener$DefaultImpls;
.super Ljava/lang/Object;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static onTabReselected(Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;
    .param p1, "index"    # I
    .param p2, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1052
    return-void
.end method
