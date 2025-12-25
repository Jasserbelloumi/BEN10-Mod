.class public final enum Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;
.super Ljava/lang/Enum;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorAnimation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;",
        "",
        "id",
        "",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "NONE",
        "SLIDE",
        "FADE",
        "Companion",
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
.field private static final synthetic $VALUES:[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

.field public static final Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation$Companion;

.field public static final enum FADE:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

.field public static final enum NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

.field public static final enum SLIDE:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    new-instance v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    .line 1019
    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    aput-object v1, v0, v3

    new-instance v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    .line 1020
    const-string v2, "SLIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->SLIDE:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    aput-object v1, v0, v3

    new-instance v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    .line 1021
    const-string v2, "FADE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->FADE:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    aput-object v1, v0, v3

    sput-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->$VALUES:[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1018
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;
    .locals 1

    const-class v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    return-object p0
.end method

.method public static values()[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;
    .locals 1

    sget-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->$VALUES:[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    invoke-virtual {v0}, [Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 1018
    iget v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorAnimation;->id:I

    return v0
.end method
