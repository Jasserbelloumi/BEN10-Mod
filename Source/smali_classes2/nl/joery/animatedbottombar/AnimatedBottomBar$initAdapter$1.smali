.class final Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedBottomBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function5<",
        "Ljava/lang/Integer;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "Ljava/lang/Integer;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\tH\n\u00a2\u0006\u0002\u0008\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "lastIndex",
        "",
        "lastTab",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "newIndex",
        "newTab",
        "animated",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;


# direct methods
.method constructor <init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;)V
    .locals 0

    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    move-object v2, p2

    check-cast v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v3

    move-object v4, p4

    check-cast v4, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;->invoke(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V
    .locals 1
    .param p1, "lastIndex"    # I
    .param p2, "lastTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p3, "newIndex"    # I
    .param p4, "newTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p5, "animated"    # Z

    const-string v0, "newTab"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-static {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->access$getTabIndicator$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Lnl/joery/animatedbottombar/TabIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p5}, Lnl/joery/animatedbottombar/TabIndicator;->setSelectedIndex(IIZ)V

    .line 244
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-static {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->access$getViewPager$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-static {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->access$getViewPager2$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 247
    :cond_1
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-static {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->access$getOnTabSelectListener$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2, p3, p4}, Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;->onTabSelected(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 248
    :cond_2
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$1;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getOnTabSelected()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-void
.end method
