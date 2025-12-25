.class public final Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;
.super Ljava/lang/Object;
.source "NavigationComponentHelper.kt"

# interfaces
.implements Landroidx/navigation/NavController$OnDestinationChangedListener;


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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "nl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2",
        "Landroidx/navigation/NavController$OnDestinationChangedListener;",
        "onDestinationChanged",
        "",
        "controller",
        "Landroidx/navigation/NavController;",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "arguments",
        "Landroid/os/Bundle;",
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
.field final synthetic $bottomBar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

.field final synthetic $menu:Landroid/view/Menu;

.field final synthetic $navController:Landroidx/navigation/NavController;

.field final synthetic $weakReference:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;Landroid/view/Menu;Lnl/joery/animatedbottombar/AnimatedBottomBar;)V
    .locals 0
    .param p1, "$captured_local_variable$0"    # Ljava/lang/ref/WeakReference;
    .param p2, "$captured_local_variable$1"    # Landroidx/navigation/NavController;
    .param p3, "$captured_local_variable$2"    # Landroid/view/Menu;
    .param p4, "$captured_local_variable$3"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 37
    iput-object p1, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$weakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$navController:Landroidx/navigation/NavController;

    iput-object p3, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$menu:Landroid/view/Menu;

    iput-object p4, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$bottomBar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestinationChanged(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "controller"    # Landroidx/navigation/NavController;
    .param p2, "destination"    # Landroidx/navigation/NavDestination;
    .param p3, "arguments"    # Landroid/os/Bundle;

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 47
    .local v0, "view":Lnl/joery/animatedbottombar/AnimatedBottomBar;
    if-nez v0, :cond_0

    .line 48
    iget-object v1, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$navController:Landroidx/navigation/NavController;

    move-object v2, p0

    check-cast v2, Landroidx/navigation/NavController$OnDestinationChangedListener;

    invoke-virtual {v1, v2}, Landroidx/navigation/NavController;->removeOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 49
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$menu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 53
    .local v3, "h":I
    iget-object v4, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$menu:Landroid/view/Menu;

    invoke-interface {v4, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 54
    .local v4, "menuItem":Landroid/view/MenuItem;
    sget-object v5, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;->INSTANCE:Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;

    const-string v6, "menuItem"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-static {v5, p2, v6}, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;->access$matchDestination(Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;Landroidx/navigation/NavDestination;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 56
    iget-object v5, p0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;->$bottomBar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v5, v3, v2, v6, v7}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->selectTabAt$default(Lnl/joery/animatedbottombar/AnimatedBottomBar;IZILjava/lang/Object;)V

    .line 52
    .end local v4    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    nop

    .end local v3    # "h":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    :cond_2
    return-void
.end method
