.class final Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedBottomBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lnl/joery/animatedbottombar/BottomBarStyle$Tab;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lnl/joery/animatedbottombar/BottomBarStyle$Tab;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;

    invoke-direct {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;-><init>()V

    sput-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$tabStyle$2;->invoke()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;
    .locals 19

    .line 40
    new-instance v18, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-object/from16 v0, v18

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fff

    const/16 v17, 0x0

    invoke-direct/range {v0 .. v17}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;ILandroid/view/animation/Interpolator;IIIZIILandroid/graphics/Typeface;IILnl/joery/animatedbottombar/BottomBarStyle$Badge;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v18
.end method
