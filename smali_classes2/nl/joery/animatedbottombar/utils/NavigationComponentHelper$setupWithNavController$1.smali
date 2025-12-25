.class public final Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1;
.super Ljava/lang/Object;
.source "NavigationComponentHelper.kt"

# interfaces
.implements Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;->setupWithNavController(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroid/view/Menu;Landroidx/navigation/NavController;)V
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0007H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "nl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;",
        "onTabSelected",
        "",
        "lastIndex",
        "",
        "lastTab",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "newIndex",
        "newTab",
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
.field final synthetic $menu:Landroid/view/Menu;

.field final synthetic $navController:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroid/view/Menu;Landroidx/navigation/NavController;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Landroid/view/Menu;
    .param p2, "$captured_local_variable$1"    # Landroidx/navigation/NavController;

    .line 25
    iput-object p1, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1;->$menu:Landroid/view/Menu;

    iput-object p2, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1;->$navController:Landroidx/navigation/NavController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p0, p1, p2}, Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener$DefaultImpls;->onTabReselected(Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    return-void
.end method

.method public onTabSelected(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 2
    .param p1, "lastIndex"    # I
    .param p2, "lastTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p3, "newIndex"    # I
    .param p4, "newTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "newTab"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1;->$menu:Landroid/view/Menu;

    invoke-interface {v0, p3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1;->$navController:Landroidx/navigation/NavController;

    invoke-static {v0, v1}, Landroidx/navigation/ui/NavigationUI;->onNavDestinationSelected(Landroid/view/MenuItem;Landroidx/navigation/NavController;)Z

    .line 33
    return-void
.end method
