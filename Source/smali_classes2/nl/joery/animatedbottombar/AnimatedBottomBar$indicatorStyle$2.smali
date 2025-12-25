.class final Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;
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
        "Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;",
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
        "Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;",
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
.field public static final INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;

    invoke-direct {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;-><init>()V

    sput-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;

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
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$indicatorStyle$2;->invoke()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;
    .locals 10

    .line 41
    new-instance v9, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lnl/joery/animatedbottombar/BottomBarStyle$Indicator;-><init>(IIILnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAppearance;Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method
