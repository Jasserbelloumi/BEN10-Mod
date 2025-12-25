.class final Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedBottomBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
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
.field public static final INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;

    invoke-direct {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;-><init>()V

    sput-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;->INSTANCE:Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-virtual {p0, p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$onTabReselected$1;->invoke(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 1
    .param p1, "it"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    return-void
.end method
