.class public final Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;->setupWithViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "nl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "previousState",
        "",
        "userScrollChange",
        "",
        "onPageScrollStateChanged",
        "",
        "state",
        "onPageSelected",
        "position",
        "nl.joery.animatedbottombar.library"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private previousState:I

.field final synthetic this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

.field private userScrollChange:Z


# direct methods
.method constructor <init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 614
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 619
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    .line 621
    nop

    .line 622
    iget v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;->previousState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    if-ne p1, v1, :cond_0

    .line 624
    iput-boolean v2, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;->userScrollChange:Z

    goto :goto_0

    .line 625
    :cond_0
    nop

    .line 626
    if-ne v0, v1, :cond_1

    if-nez p1, :cond_1

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;->userScrollChange:Z

    .line 629
    :cond_1
    :goto_0
    nop

    .line 630
    iput p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;->previousState:I

    .line 631
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .line 634
    iget-boolean v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;->userScrollChange:Z

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$setupWithViewPager2$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTabAt$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;IZILjava/lang/Object;)V

    .line 638
    :cond_0
    return-void
.end method
