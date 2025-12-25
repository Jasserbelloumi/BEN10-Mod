.class public final Lnl/joery/animatedbottombar/TabView;
.super Landroid/widget/FrameLayout;
.source "TabView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/joery/animatedbottombar/TabView$AnimationDirection;,
        Lnl/joery/animatedbottombar/TabView$AnimationListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTabView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TabView.kt\nnl/joery/animatedbottombar/TabView\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,330:1\n13506#2,2:331\n1819#3,2:333\n1819#3,2:335\n1819#3,2:337\n*E\n*S KotlinDebug\n*F\n+ 1 TabView.kt\nnl/joery/animatedbottombar/TabView\n*L\n80#1,2:331\n169#1,2:333\n171#1,2:335\n188#1,2:337\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0013\u0008\u0000\u0018\u00002\u00020\u0001:\u0002OPB%\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u0010&\u001a\u00020\'J\u000e\u0010.\u001a\u00020/2\u0006\u0010&\u001a\u00020\'J\u0008\u00102\u001a\u00020/H\u0002J\u0010\u00103\u001a\u00020/2\u0008\u0008\u0002\u00104\u001a\u000205J\u001a\u00106\u001a\u0004\u0018\u00010!2\u0006\u00107\u001a\u0002052\u0006\u00108\u001a\u000209H\u0002J\u0012\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010<\u001a\u00020\u000cH\u0002J\u0010\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020;H\u0002J(\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010C\u001a\u00020\u00072\u0006\u0010D\u001a\u00020\u0007H\u0014J\u0010\u0010E\u001a\u00020/2\u0008\u0008\u0002\u00104\u001a\u000205J\u0010\u0010F\u001a\u00020/2\u0006\u0010G\u001a\u000205H\u0016J\u0008\u0010H\u001a\u00020/H\u0002J\u0008\u0010I\u001a\u00020/H\u0002J\u0008\u0010J\u001a\u00020/H\u0002J\u0008\u0010K\u001a\u00020/H\u0002J\u0008\u0010L\u001a\u00020/H\u0002J\u0008\u0010M\u001a\u00020/H\u0002J\u0008\u0010N\u001a\u00020/H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R(\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\n8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R!\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u0016\u0010\u0017R(\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\r\u001a\u0004\u0018\u00010\u001a8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010$\u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010%\u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082.\u00a2\u0006\u0002\n\u0000R$\u0010)\u001a\u00020(2\u0006\u0010\r\u001a\u00020(8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-\u00a8\u0006Q"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/TabView;",
        "Landroid/widget/FrameLayout;",
        "context",
        "Landroid/content/Context;",
        "attrs",
        "Landroid/util/AttributeSet;",
        "defStyleAttr",
        "",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "_badge",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "animatedView",
        "Landroid/view/View;",
        "value",
        "badge",
        "getBadge",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "setBadge",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V",
        "badgeViews",
        "",
        "Lnl/joery/animatedbottombar/BadgeView;",
        "getBadgeViews",
        "()Ljava/util/List;",
        "badgeViews$delegate",
        "Lkotlin/Lazy;",
        "Landroid/graphics/drawable/Drawable;",
        "icon",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "setIcon",
        "(Landroid/graphics/drawable/Drawable;)V",
        "inAnimation",
        "Landroid/view/animation/Animation;",
        "outAnimation",
        "selectedAnimatedView",
        "selectedInAnimation",
        "selectedOutAnimation",
        "style",
        "Lnl/joery/animatedbottombar/BottomBarStyle$Tab;",
        "",
        "title",
        "getTitle",
        "()Ljava/lang/String;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "applyStyle",
        "",
        "type",
        "Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;",
        "bringViewsToFront",
        "deselect",
        "animate",
        "",
        "getAnimation",
        "selected",
        "direction",
        "Lnl/joery/animatedbottombar/TabView$AnimationDirection;",
        "getTransformation",
        "Landroid/view/animation/Transformation;",
        "view",
        "getTranslateY",
        "",
        "transformation",
        "onSizeChanged",
        "w",
        "h",
        "oldw",
        "oldh",
        "select",
        "setEnabled",
        "enabled",
        "updateAnimations",
        "updateBadge",
        "updateColors",
        "updateIcon",
        "updateRipple",
        "updateTabType",
        "updateText",
        "AnimationDirection",
        "AnimationListener",
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
.field private _$_findViewCache:Ljava/util/HashMap;

.field private _badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

.field private animatedView:Landroid/view/View;

.field private final badgeViews$delegate:Lkotlin/Lazy;

.field private inAnimation:Landroid/view/animation/Animation;

.field private outAnimation:Landroid/view/animation/Animation;

.field private selectedAnimatedView:Landroid/view/View;

.field private selectedInAnimation:Landroid/view/animation/Animation;

.field private selectedOutAnimation:Landroid/view/animation/Animation;

.field private style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnl/joery/animatedbottombar/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lnl/joery/animatedbottombar/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    nop

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Lnl/joery/animatedbottombar/TabView$badgeViews$2;

    invoke-direct {v0, p0}, Lnl/joery/animatedbottombar/TabView$badgeViews$2;-><init>(Lnl/joery/animatedbottombar/TabView;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lnl/joery/animatedbottombar/TabView;->badgeViews$delegate:Lkotlin/Lazy;

    .line 72
    nop

    .line 73
    sget v0, Lnl/joery/animatedbottombar/R$layout;->view_tab:I

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    sget v0, Lnl/joery/animatedbottombar/R$id;->icon_badge:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnl/joery/animatedbottombar/BadgeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setScaleLayout(Z)V

    .line 76
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_badge:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnl/joery/animatedbottombar/BadgeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/BadgeView;->setScaleLayout(Z)V

    .line 77
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 26
    const/4 p2, 0x0

    move-object p5, p2

    check-cast p5, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 27
    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lnl/joery/animatedbottombar/TabView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$getAnimatedView$p(Lnl/joery/animatedbottombar/TabView;)Landroid/view/View;
    .locals 2
    .param p0, "$this"    # Lnl/joery/animatedbottombar/TabView;

    .line 24
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "animatedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$getSelectedAnimatedView$p(Lnl/joery/animatedbottombar/TabView;)Landroid/view/View;
    .locals 2
    .param p0, "$this"    # Lnl/joery/animatedbottombar/TabView;

    .line 24
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "selectedAnimatedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static final synthetic access$setAnimatedView$p(Lnl/joery/animatedbottombar/TabView;Landroid/view/View;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/TabView;
    .param p1, "<set-?>"    # Landroid/view/View;

    .line 24
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setSelectedAnimatedView$p(Lnl/joery/animatedbottombar/TabView;Landroid/view/View;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/TabView;
    .param p1, "<set-?>"    # Landroid/view/View;

    .line 24
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    return-void
.end method

.method private final bringViewsToFront()V
    .locals 6

    .line 186
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "selectedAnimatedView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 188
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->getBadgeViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 337
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lnl/joery/animatedbottombar/BadgeView;

    .local v4, "it":Lnl/joery/animatedbottombar/BadgeView;
    const/4 v5, 0x0

    .line 189
    .local v5, "$i$a$-forEach-TabView$bringViewsToFront$1":I
    invoke-virtual {v4}, Lnl/joery/animatedbottombar/BadgeView;->bringToFront()V

    .line 190
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lnl/joery/animatedbottombar/BadgeView;
    .end local v5    # "$i$a$-forEach-TabView$bringViewsToFront$1":I
    goto :goto_0

    .line 338
    :cond_1
    nop

    .line 191
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static synthetic deselect$default(Lnl/joery/animatedbottombar/TabView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 209
    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lnl/joery/animatedbottombar/TabView;->deselect(Z)V

    return-void
.end method

.method private final getAnimation(ZLnl/joery/animatedbottombar/TabView$AnimationDirection;)Landroid/view/animation/Animation;
    .locals 10
    .param p1, "selected"    # Z
    .param p2, "direction"    # Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    .line 272
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/view/animation/Animation;

    .line 273
    .local v1, "animation":Landroid/view/animation/Animation;
    if-eqz p1, :cond_0

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v3, "selectedAnimatedView"

    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v2, :cond_1

    const-string v3, "animatedView"

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lnl/joery/animatedbottombar/TabView;->getTransformation(Landroid/view/View;)Landroid/view/animation/Transformation;

    move-result-object v2

    .line 275
    .local v2, "transformation":Landroid/view/animation/Transformation;
    const/4 v3, 0x0

    .line 276
    .local v3, "valueFrom":F
    const/4 v4, 0x0

    .line 277
    .local v4, "valueTo":F
    const-string v5, "style"

    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-eqz p1, :cond_3

    if-nez v6, :cond_2

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v6

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v6

    .line 278
    .local v6, "animationType":Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;
    :goto_2
    sget-object v7, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->SLIDE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_c

    .line 279
    if-eqz p1, :cond_8

    .line 280
    nop

    .line 281
    if-eqz v2, :cond_5

    invoke-direct {p0, v2}, Lnl/joery/animatedbottombar/TabView;->getTranslateY(Landroid/view/animation/Transformation;)F

    move-result v7

    goto :goto_3

    :cond_5
    sget-object v7, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    if-ne p2, v7, :cond_6

    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    goto :goto_3

    :cond_6
    move v7, v8

    :goto_3
    move v3, v7

    .line 282
    sget-object v7, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    if-ne p2, v7, :cond_7

    move v7, v8

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    :goto_4
    move v4, v7

    goto :goto_7

    .line 284
    :cond_8
    nop

    .line 285
    if-eqz v2, :cond_9

    invoke-direct {p0, v2}, Lnl/joery/animatedbottombar/TabView;->getTranslateY(Landroid/view/animation/Transformation;)F

    move-result v7

    goto :goto_5

    :cond_9
    sget-object v7, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    if-ne p2, v7, :cond_a

    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    neg-float v7, v7

    goto :goto_5

    :cond_a
    move v7, v8

    :goto_5
    move v3, v7

    .line 286
    sget-object v7, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    if-ne p2, v7, :cond_b

    move v7, v8

    goto :goto_6

    :cond_b
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    neg-float v7, v7

    :goto_6
    move v4, v7

    .line 287
    :goto_7
    nop

    .line 289
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v8, v8, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v1, v7

    check-cast v1, Landroid/view/animation/Animation;

    goto :goto_9

    .line 290
    :cond_c
    sget-object v7, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->FADE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    if-ne v6, v7, :cond_10

    .line 291
    nop

    .line 292
    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v9

    goto :goto_8

    :cond_d
    sget-object v9, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    if-ne p2, v9, :cond_e

    move v9, v8

    goto :goto_8

    :cond_e
    move v9, v7

    :goto_8
    move v3, v9

    .line 293
    sget-object v9, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    if-ne p2, v9, :cond_f

    move v8, v7

    :cond_f
    move v4, v8

    .line 295
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v1, v7

    check-cast v1, Landroid/view/animation/Animation;

    .line 296
    :cond_10
    :goto_9
    nop

    .line 298
    if-eqz v1, :cond_13

    move-object v0, v1

    .local v0, "$this$apply":Landroid/view/animation/Animation;
    const/4 v7, 0x0

    .line 299
    .local v7, "$i$a$-apply-TabView$getAnimation$1":I
    iget-object v8, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v8, :cond_11

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v8}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getAnimationDuration()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 300
    iget-object v8, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v8, :cond_12

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_12
    invoke-virtual {v8}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 301
    nop

    .line 298
    .end local v0    # "$this$apply":Landroid/view/animation/Animation;
    .end local v7    # "$i$a$-apply-TabView$getAnimation$1":I
    move-object v0, v1

    :cond_13
    return-object v0
.end method

.method private final getBadgeViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnl/joery/animatedbottombar/BadgeView;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->badgeViews$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getTransformation(Landroid/view/View;)Landroid/view/animation/Transformation;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 305
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 309
    :cond_0
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 310
    .local v0, "transformation":Landroid/view/animation/Transformation;
    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 311
    return-object v0

    .line 306
    .end local v0    # "transformation":Landroid/view/animation/Transformation;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getTranslateY(Landroid/view/animation/Transformation;)F
    .locals 2
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .line 315
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 316
    .local v0, "v":[F
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 317
    :cond_0
    const/4 v1, 0x5

    aget v1, v0, v1

    return v1
.end method

.method public static synthetic select$default(Lnl/joery/animatedbottombar/TabView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    .line 193
    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lnl/joery/animatedbottombar/TabView;->select(Z)V

    return-void
.end method

.method private final updateAnimations()V
    .locals 7

    .line 231
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v1, "style"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v0

    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    .line 232
    sget-object v0, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lnl/joery/animatedbottombar/TabView;->getAnimation(ZLnl/joery/animatedbottombar/TabView$AnimationDirection;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v4, v0

    .local v4, "$this$apply":Landroid/view/animation/Animation;
    const/4 v5, 0x0

    .line 233
    .local v5, "$i$a$-apply-TabView$updateAnimations$1":I
    new-instance v6, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$1;

    invoke-direct {v6, p0}, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$1;-><init>(Lnl/joery/animatedbottombar/TabView;)V

    check-cast v6, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 238
    nop

    .end local v4    # "$this$apply":Landroid/view/animation/Animation;
    .end local v5    # "$i$a$-apply-TabView$updateAnimations$1":I
    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 232
    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iput-object v0, p0, Lnl/joery/animatedbottombar/TabView;->selectedInAnimation:Landroid/view/animation/Animation;

    .line 240
    sget-object v0, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->OUT:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    invoke-direct {p0, v2, v0}, Lnl/joery/animatedbottombar/TabView;->getAnimation(ZLnl/joery/animatedbottombar/TabView$AnimationDirection;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v2, v0

    .local v2, "$this$apply":Landroid/view/animation/Animation;
    const/4 v4, 0x0

    .line 241
    .local v4, "$i$a$-apply-TabView$updateAnimations$2":I
    new-instance v5, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$2;

    invoke-direct {v5, p0}, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$2;-><init>(Lnl/joery/animatedbottombar/TabView;)V

    check-cast v5, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    nop

    .end local v2    # "$this$apply":Landroid/view/animation/Animation;
    .end local v4    # "$i$a$-apply-TabView$updateAnimations$2":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 240
    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lnl/joery/animatedbottombar/TabView;->selectedOutAnimation:Landroid/view/animation/Animation;

    .line 249
    :cond_3
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v0

    sget-object v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    if-eq v0, v1, :cond_7

    .line 250
    sget-object v0, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->IN:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lnl/joery/animatedbottombar/TabView;->getAnimation(ZLnl/joery/animatedbottombar/TabView$AnimationDirection;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v2, v0

    .restart local v2    # "$this$apply":Landroid/view/animation/Animation;
    const/4 v4, 0x0

    .line 251
    .local v4, "$i$a$-apply-TabView$updateAnimations$3":I
    new-instance v5, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$3;

    invoke-direct {v5, p0}, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$3;-><init>(Lnl/joery/animatedbottombar/TabView;)V

    check-cast v5, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 256
    nop

    .end local v2    # "$this$apply":Landroid/view/animation/Animation;
    .end local v4    # "$i$a$-apply-TabView$updateAnimations$3":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 250
    goto :goto_2

    :cond_5
    move-object v0, v3

    :goto_2
    iput-object v0, p0, Lnl/joery/animatedbottombar/TabView;->inAnimation:Landroid/view/animation/Animation;

    .line 258
    sget-object v0, Lnl/joery/animatedbottombar/TabView$AnimationDirection;->OUT:Lnl/joery/animatedbottombar/TabView$AnimationDirection;

    invoke-direct {p0, v1, v0}, Lnl/joery/animatedbottombar/TabView;->getAnimation(ZLnl/joery/animatedbottombar/TabView$AnimationDirection;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_6

    move-object v1, v0

    .local v1, "$this$apply":Landroid/view/animation/Animation;
    const/4 v2, 0x0

    .line 259
    .local v2, "$i$a$-apply-TabView$updateAnimations$4":I
    new-instance v3, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$4;

    invoke-direct {v3, p0}, Lnl/joery/animatedbottombar/TabView$updateAnimations$$inlined$apply$lambda$4;-><init>(Lnl/joery/animatedbottombar/TabView;)V

    check-cast v3, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 264
    nop

    .end local v1    # "$this$apply":Landroid/view/animation/Animation;
    .end local v2    # "$i$a$-apply-TabView$updateAnimations$4":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 258
    move-object v3, v0

    :cond_6
    iput-object v3, p0, Lnl/joery/animatedbottombar/TabView;->outAnimation:Landroid/view/animation/Animation;

    .line 266
    :cond_7
    return-void
.end method

.method private final updateBadge()V
    .locals 8

    .line 168
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->_badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    if-nez v0, :cond_1

    .line 169
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->getBadgeViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 333
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lnl/joery/animatedbottombar/BadgeView;

    .local v4, "it":Lnl/joery/animatedbottombar/BadgeView;
    const/4 v5, 0x0

    .line 169
    .local v5, "$i$a$-forEach-TabView$updateBadge$1":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setEnabled(Z)V

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lnl/joery/animatedbottombar/BadgeView;
    .end local v5    # "$i$a$-forEach-TabView$updateBadge$1":I
    goto :goto_0

    .line 334
    :cond_0
    nop

    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    goto/16 :goto_5

    .line 171
    :cond_1
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->getBadgeViews()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .restart local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 335
    .restart local v1    # "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .restart local v3    # "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lnl/joery/animatedbottombar/BadgeView;

    .restart local v4    # "it":Lnl/joery/animatedbottombar/BadgeView;
    const/4 v5, 0x0

    .line 172
    .local v5, "$i$a$-forEach-TabView$updateBadge$2":I
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->_badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setText(Ljava/lang/String;)V

    .line 174
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v7, "style"

    if-nez v6, :cond_2

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v6

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setAnimationType(Lnl/joery/animatedbottombar/AnimatedBottomBar$BadgeAnimation;)V

    .line 175
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v6, :cond_3

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v6

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getAnimationDuration()I

    move-result v6

    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setAnimationDuration(I)V

    .line 176
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->_badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->getBackgroundColor()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v6, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v6

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getBackgroundColor()I

    move-result v6

    :goto_2
    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setBackgroundColor(I)V

    .line 177
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->_badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->getTextColor()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v6, :cond_7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v6

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getTextColor()I

    move-result v6

    :goto_3
    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setTextColor(I)V

    .line 178
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->_badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;->getTextSize()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v6, :cond_9

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getBadge()Lnl/joery/animatedbottombar/BottomBarStyle$Badge;

    move-result-object v6

    invoke-virtual {v6}, Lnl/joery/animatedbottombar/BottomBarStyle$Badge;->getTextSize()I

    move-result v6

    :goto_4
    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setTextSize(I)V

    .line 180
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lnl/joery/animatedbottombar/BadgeView;->setEnabled(Z)V

    .line 181
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    .end local v4    # "it":Lnl/joery/animatedbottombar/BadgeView;
    .end local v5    # "$i$a$-forEach-TabView$updateBadge$2":I
    goto/16 :goto_1

    .line 336
    :cond_a
    nop

    .line 182
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :goto_5
    nop

    .line 183
    return-void
.end method

.method private final updateColors()V
    .locals 5

    .line 122
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView;->isEnabled()Z

    move-result v0

    const-string v1, "style"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColor()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColorDisabled()I

    move-result v0

    .line 123
    .local v0, "tabColor":I
    :goto_0
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColorSelected()I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabColorDisabled()I

    move-result v2

    .line 124
    .local v2, "tabColorSelected":I
    :goto_1
    iget-object v3, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v3

    sget-object v4, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ICON:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    if-ne v3, v4, :cond_7

    .line 125
    nop

    .line 126
    sget v1, Lnl/joery/animatedbottombar/R$id;->icon_view:I

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 127
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 125
    invoke-static {v1, v3}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 129
    sget v1, Lnl/joery/animatedbottombar/R$id;->text_view:I

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    goto :goto_2

    .line 130
    :cond_7
    iget-object v3, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v3, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v1

    sget-object v3, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->TEXT:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    if-ne v1, v3, :cond_9

    .line 131
    sget v1, Lnl/joery/animatedbottombar/R$id;->icon_view:I

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    .line 132
    sget v1, Lnl/joery/animatedbottombar/R$id;->text_view:I

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    .line 133
    :cond_9
    :goto_2
    nop

    .line 134
    return-void
.end method

.method private final updateIcon()V
    .locals 4

    .line 163
    sget v0, Lnl/joery/animatedbottombar/R$id;->icon_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "icon_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v3, "style"

    if-nez v2, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getIconSize()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 164
    sget v0, Lnl/joery/animatedbottombar/R$id;->icon_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getIconSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    return-void
.end method

.method private final updateRipple()V
    .locals 3

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v1, "style"

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleColor()I

    move-result v0

    if-lez v0, :cond_4

    .line 144
    invoke-virtual {p0}, Lnl/joery/animatedbottombar/TabView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleColor()I

    move-result v1

    invoke-static {v0, v1}, Lnl/joery/animatedbottombar/utils/ExtensionsKt;->getResourceId(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->setBackgroundResource(I)V

    goto :goto_0

    .line 146
    :cond_4
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getRippleColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 147
    goto :goto_0

    .line 149
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->setBackgroundColor(I)V

    .line 150
    :goto_0
    nop

    .line 151
    return-void
.end method

.method private final updateTabType()V
    .locals 5

    .line 100
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v1, "style"

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v0

    sget-object v2, Lnl/joery/animatedbottombar/TabView$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const-string v2, "text_layout"

    const-string v3, "icon_layout"

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_layout:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 101
    :pswitch_1
    sget v0, Lnl/joery/animatedbottombar/R$id;->icon_layout:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 100
    :goto_0
    iput-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getSelectedTabType()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;

    move-result-object v0

    sget-object v1, Lnl/joery/animatedbottombar/TabView$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 107
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_2
    sget v0, Lnl/joery/animatedbottombar/R$id;->icon_layout:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 106
    :pswitch_3
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_layout:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    .line 105
    :goto_1
    iput-object v0, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    .line 110
    const-string v1, "selectedAnimatedView"

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    const-string v3, "animatedView"

    const/4 v4, 0x4

    if-nez v0, :cond_5

    .line 111
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 114
    :cond_5
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v0, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :goto_2
    nop

    .line 118
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->bringViewsToFront()V

    .line 119
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private final updateText()V
    .locals 4

    .line 154
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "text_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v2, "style"

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    iget-object v3, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 157
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTextAppearance()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 158
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTextAppearance()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 160
    :cond_4
    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnl/joery/animatedbottombar/TabView;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final applyStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;Lnl/joery/animatedbottombar/BottomBarStyle$Tab;)V
    .locals 2
    .param p1, "type"    # Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;
    .param p2, "style"    # Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "style"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    .line 88
    sget-object v0, Lnl/joery/animatedbottombar/TabView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateBadge()V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateIcon()V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateText()V

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateRipple()V

    goto :goto_0

    .line 91
    :pswitch_4
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateColors()V

    goto :goto_0

    .line 90
    :pswitch_5
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateAnimations()V

    goto :goto_0

    .line 89
    :pswitch_6
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateTabType()V

    .line 96
    :goto_0
    nop

    .line 97
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final applyStyle(Lnl/joery/animatedbottombar/BottomBarStyle$Tab;)V
    .locals 7
    .param p1, "style"    # Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;->values()[Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    move-result-object v0

    .local v0, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 331
    .local v1, "$i$f$forEach":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;
    const/4 v6, 0x0

    .line 81
    .local v6, "$i$a$-forEach-TabView$applyStyle$1":I
    invoke-virtual {p0, v5, p1}, Lnl/joery/animatedbottombar/TabView;->applyStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;Lnl/joery/animatedbottombar/BottomBarStyle$Tab;)V

    .line 82
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    .end local v5    # "it":Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;
    .end local v6    # "$i$a$-forEach-TabView$applyStyle$1":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    :cond_0
    nop

    .line 83
    .end local v0    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final deselect(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .line 210
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateAnimations()V

    .line 212
    const-string v0, "style"

    const-string v1, "selectedAnimatedView"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v2

    sget-object v3, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    if-eq v2, v3, :cond_2

    .line 213
    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->selectedOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :goto_0
    nop

    .line 218
    const-string v1, "animatedView"

    if-eqz p1, :cond_6

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v0

    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    if-eq v0, v2, :cond_6

    .line 219
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->inAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 221
    :cond_6
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :goto_1
    nop

    .line 223
    return-void
.end method

.method public final getBadge()Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;
    .locals 1

    .line 60
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->_badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    return-object v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 50
    sget v0, Lnl/joery/animatedbottombar/R$id;->icon_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "icon_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 44
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "text_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 227
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateAnimations()V

    .line 228
    return-void
.end method

.method public final select(Z)V
    .locals 4
    .param p1, "animate"    # Z

    .line 194
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateAnimations()V

    .line 196
    const-string v0, "style"

    const-string v1, "selectedAnimatedView"

    if-eqz p1, :cond_2

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimationSelected()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v2

    sget-object v3, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    if-eq v2, v3, :cond_2

    .line 197
    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->selectedInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->selectedAnimatedView:Landroid/view/View;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    :goto_0
    nop

    .line 202
    const-string v1, "animatedView"

    if-eqz p1, :cond_6

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabView;->style:Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    if-nez v2, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lnl/joery/animatedbottombar/BottomBarStyle$Tab;->getTabAnimation()Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    move-result-object v0

    sget-object v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;->NONE:Lnl/joery/animatedbottombar/AnimatedBottomBar$TabAnimation;

    if-eq v0, v2, :cond_6

    .line 203
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabView;->outAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 205
    :cond_6
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabView;->animatedView:Landroid/view/View;

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :goto_1
    nop

    .line 207
    return-void
.end method

.method public final setBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V
    .locals 0
    .param p1, "value"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    .line 62
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabView;->_badge:Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    .line 63
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateBadge()V

    .line 64
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 67
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 69
    invoke-direct {p0}, Lnl/joery/animatedbottombar/TabView;->updateColors()V

    .line 70
    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "value"    # Landroid/graphics/drawable/Drawable;

    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    .local v0, "newDrawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 55
    sget v1, Lnl/joery/animatedbottombar/R$id;->icon_view:I

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    .end local v0    # "newDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    sget v0, Lnl/joery/animatedbottombar/R$id;->text_view:I

    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabView;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "text_view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method
