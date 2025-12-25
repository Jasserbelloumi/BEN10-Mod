.class public final Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
.super Ljava/lang/Object;
.source "AnimatedBottomBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/AnimatedBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B7\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "",
        "icon",
        "Landroid/graphics/drawable/Drawable;",
        "title",
        "",
        "id",
        "",
        "badge",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "enabled",
        "",
        "(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;Z)V",
        "getBadge",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "setBadge",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V",
        "getEnabled",
        "()Z",
        "setEnabled",
        "(Z)V",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "getId",
        "()I",
        "getTitle",
        "()Ljava/lang/String;",
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
.field private badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

.field private enabled:Z

.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final id:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;Z)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "badge"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;
    .param p5, "enabled"    # Z

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->title:Ljava/lang/String;

    iput p3, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->id:I

    iput-object p4, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    iput-boolean p5, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->enabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 948
    const/4 p3, -0x1

    move v3, p3

    goto :goto_0

    .line 0
    :cond_0
    move v3, p3

    .line 948
    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 949
    const/4 p4, 0x0

    move-object p3, p4

    check-cast p3, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    move-object v4, p4

    goto :goto_1

    .line 948
    :cond_1
    move-object v4, p4

    .line 949
    :goto_1
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_2

    .line 950
    const/4 p5, 0x1

    move v5, p5

    goto :goto_2

    .line 949
    :cond_2
    move v5, p5

    .line 950
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;Z)V

    return-void
.end method


# virtual methods
.method public final getBadge()Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;
    .locals 1

    .line 949
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    return-object v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 950
    iget-boolean v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->enabled:Z

    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 946
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 948
    iget v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->id:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 947
    iget-object v0, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V
    .locals 0
    .param p1, "<set-?>"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    .line 949
    iput-object p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 950
    iput-boolean p1, p0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->enabled:Z

    return-void
.end method
