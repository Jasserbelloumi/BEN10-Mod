.class public final Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;
.super Ljava/lang/Object;
.source "NavigationComponentHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u0002J\u001e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;",
        "",
        "()V",
        "matchDestination",
        "",
        "destination",
        "Landroidx/navigation/NavDestination;",
        "destId",
        "",
        "setupWithNavController",
        "",
        "bottomBar",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar;",
        "menu",
        "Landroid/view/Menu;",
        "navController",
        "Landroidx/navigation/NavController;",
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
.field public static final INSTANCE:Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;

    invoke-direct {v0}, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;-><init>()V

    sput-object v0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;->INSTANCE:Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$matchDestination(Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;Landroidx/navigation/NavDestination;I)Z
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;
    .param p1, "destination"    # Landroidx/navigation/NavDestination;
    .param p2, "destId"    # I

    .line 19
    invoke-direct {p0, p1, p2}, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper;->matchDestination(Landroidx/navigation/NavDestination;I)Z

    move-result v0

    return v0
.end method

.method private final matchDestination(Landroidx/navigation/NavDestination;I)Z
    .locals 2
    .param p1, "destination"    # Landroidx/navigation/NavDestination;
    .param p2, "destId"    # I

    .line 67
    move-object v0, p1

    .line 68
    .local v0, "currentDestination":Landroidx/navigation/NavDestination;
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getParent()Landroidx/navigation/NavGraph;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroidx/navigation/NavDestination;

    .line 68
    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroidx/navigation/NavDestination;->getId()I

    move-result v1

    if-ne v1, p2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public final setupWithNavController(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroid/view/Menu;Landroidx/navigation/NavController;)V
    .locals 2
    .param p1, "bottomBar"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "navController"    # Landroidx/navigation/NavController;

    const-string v0, "bottomBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1;

    invoke-direct {v0, p2, p3}, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$1;-><init>(Landroid/view/Menu;Landroidx/navigation/NavController;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;

    invoke-virtual {p1, v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setOnTabSelectListener(Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;)V

    .line 36
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 37
    .local v0, "weakReference":Ljava/lang/ref/WeakReference;
    new-instance v1, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;

    invoke-direct {v1, v0, p3, p2, p1}, Lnl/joery/animatedbottombar/utils/NavigationComponentHelper$setupWithNavController$2;-><init>(Ljava/lang/ref/WeakReference;Landroidx/navigation/NavController;Landroid/view/Menu;Lnl/joery/animatedbottombar/AnimatedBottomBar;)V

    check-cast v1, Landroidx/navigation/NavController$OnDestinationChangedListener;

    invoke-virtual {p3, v1}, Landroidx/navigation/NavController;->addOnDestinationChangedListener(Landroidx/navigation/NavController$OnDestinationChangedListener;)V

    .line 61
    return-void
.end method
