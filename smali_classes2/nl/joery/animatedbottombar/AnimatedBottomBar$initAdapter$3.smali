.class final Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedBottomBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


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
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/Integer;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "Ljava/lang/Integer;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "Ljava/lang/Boolean;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0008"
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

    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$3;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    check-cast p4, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$3;->invoke(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)Z
    .locals 1
    .param p1, "lastIndex"    # I
    .param p2, "lastTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p3, "newIndex"    # I
    .param p4, "newTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "newTab"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$3;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-static {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->access$getOnTabInterceptListener$p(Lnl/joery/animatedbottombar/AnimatedBottomBar;)Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabInterceptListener;->onTabIntercepted(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)Z

    move-result v0

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$initAdapter$3;->this$0:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getOnTabIntercepted()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method
