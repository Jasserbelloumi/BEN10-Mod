.class public final enum Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;
.super Ljava/lang/Enum;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorLocation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;",
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
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u0000 \t2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;",
        "",
        "id",
        "",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "TOP",
        "BOTTOM",
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
.field private static final synthetic $VALUES:[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

.field public static final enum BOTTOM:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

.field public static final Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation$Companion;

.field public static final enum TOP:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    new-instance v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    .line 990
    const-string v2, "TOP"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->TOP:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    aput-object v1, v0, v3

    new-instance v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    .line 991
    const-string v2, "BOTTOM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->BOTTOM:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    aput-object v1, v0, v3

    sput-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->$VALUES:[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    new-instance v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->Companion:Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation$Companion;

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

    .line 989
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;
    .locals 1

    const-class v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    return-object p0
.end method

.method public static values()[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;
    .locals 1

    sget-object v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->$VALUES:[Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    invoke-virtual {v0}, [Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 989
    iget v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$IndicatorLocation;->id:I

    return v0
.end method
