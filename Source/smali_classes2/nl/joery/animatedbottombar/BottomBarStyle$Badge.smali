.class public final Lnl/joery/animatedbottombar/BottomBarStyle$Badge;
.super Ljava/lang/Object;
.source "BottomBarStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/BottomBarStyle;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J;\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010!\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\"\u001a\u00020#H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\"\u0004\u0008\u0015\u0010\u0011R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u000f\"\u0004\u0008\u0017\u0010\u0011\u00a8\u0006$"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/BottomBarStyle$Badge;",
        "",
        "animation",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;",
        "animationDuration",
        "",
        "backgroundColor",
        "textColor",
        "textSize",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIII)V",
        "getAnimation",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;",
        "setAnimation",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;)V",
        "getAnimationDuration",
        "()I",
        "setAnimationDuration",
        "(I)V",
        "getBackgroundColor",
        "setBackgroundColor",
        "getTextColor",
        "setTextColor",
        "getTextSize",
        "setTextSize",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

.field private animationDuration:I

.field private backgroundColor:I

.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1f

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIII)V
    .locals 1
    .param p1, "animation"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;
    .param p2, "animationDuration"    # I
    .param p3, "backgroundColor"    # I
    .param p4, "textColor"    # I
    .param p5, "textSize"    # I

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    iput p2, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    iput p3, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    iput p4, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    iput p5, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    return-void
.end method

.method public synthetic constructor <init>(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 46
    sget-object p1, Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;->SCALE:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 47
    const/16 p2, 0x96

    move p7, p2

    goto :goto_0

    .line 46
    :cond_1
    move p7, p2

    .line 47
    :goto_0
    and-int/lit8 p2, p6, 0x4

    const/16 v0, 0x10

    if-eqz p2, :cond_2

    .line 48
    const/16 p2, 0xff

    const/16 p3, 0xc

    invoke-static {p2, p3, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    move v1, p3

    goto :goto_1

    .line 47
    :cond_2
    move v1, p3

    .line 48
    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 49
    const/4 p4, -0x1

    move v2, p4

    goto :goto_2

    .line 48
    :cond_3
    move v2, p4

    .line 49
    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    .line 50
    const/16 p2, 0x9

    invoke-static {p2}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getSpPx(I)I

    move-result p5

    move v0, p5

    goto :goto_3

    .line 49
    :cond_4
    move v0, p5

    .line 50
    :goto_3
    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v1

    move p6, v2

    move p7, v0

    invoke-direct/range {p2 .. p7}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIII)V

    return-void
.end method

.method public static synthetic copy$default(Lnl/joery/animatedbottombar/BottomBarStyle$Badge;Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIIIILjava/lang/Object;)Lnl/joery/animatedbottombar/BottomBarStyle$Badge;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->copy(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIII)Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;
    .locals 1

    iget-object v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    return v0
.end method

.method public final copy(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIII)Lnl/joery/animatedbottombar/BottomBarStyle$Badge;
    .locals 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;-><init>(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    if-eqz v0, :cond_0

    check-cast p1, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    iget-object v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    iget-object v1, p1, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    iget v1, p1, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    iget v1, p1, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    iget v1, p1, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    iget p1, p1, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;
    .locals 1

    .line 46
    iget-object v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    return-object v0
.end method

.method public final getAnimationDuration()I
    .locals 1

    .line 47
    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    return v0
.end method

.method public final getBackgroundColor()I
    .locals 1

    .line 48
    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    return v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 49
    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    return v0
.end method

.method public final getTextSize()I
    .locals 1

    .line 50
    iget v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAnimation(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;)V
    .locals 1
    .param p1, "<set-?>"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    return-void
.end method

.method public final setAnimationDuration(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 47
    iput p1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    return-void
.end method

.method public final setBackgroundColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 48
    iput p1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    return-void
.end method

.method public final setTextColor(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 49
    iput p1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    return-void
.end method

.method public final setTextSize(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 50
    iput p1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Badge(animation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animation:Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", animationDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->animationDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->textSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
