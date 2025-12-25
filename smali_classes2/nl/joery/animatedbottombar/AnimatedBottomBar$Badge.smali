.class public final Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;
.super Ljava/lang/Object;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Badge"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B5\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0008R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\u000e\u0010\nR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\u000f\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "",
        "text",
        "",
        "backgroundColor",
        "",
        "textColor",
        "textSize",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "getBackgroundColor",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getText",
        "()Ljava/lang/String;",
        "getTextColor",
        "getTextSize",
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
.field private final backgroundColor:Ljava/lang/Integer;

.field private final text:Ljava/lang/String;

.field private final textColor:Ljava/lang/Integer;

.field private final textSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "backgroundColor"    # Ljava/lang/Integer;
    .param p3, "textColor"    # Ljava/lang/Integer;
    .param p4, "textSize"    # Ljava/lang/Integer;

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->text:Ljava/lang/String;

    iput-object p2, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->backgroundColor:Ljava/lang/Integer;

    iput-object p3, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->textColor:Ljava/lang/Integer;

    iput-object p4, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->textSize:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    .line 954
    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 955
    move-object p2, v0

    check-cast p2, Ljava/lang/Integer;

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 956
    move-object p3, v0

    check-cast p3, Ljava/lang/Integer;

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 957
    move-object p4, v0

    check-cast p4, Ljava/lang/Integer;

    move-object p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 955
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->backgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 954
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()Ljava/lang/Integer;
    .locals 1

    .line 956
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->textColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTextSize()Ljava/lang/Integer;
    .locals 1

    .line 957
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->textSize:Ljava/lang/Integer;

    return-object v0
.end method
