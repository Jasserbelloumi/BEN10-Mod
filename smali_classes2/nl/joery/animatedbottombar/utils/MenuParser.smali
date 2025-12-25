.class public final Lnl/joery/animatedbottombar/utils/MenuParser;
.super Ljava/lang/Object;
.source "MenuParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/utils/MenuParser;",
        "",
        "()V",
        "parse",
        "Ljava/util/ArrayList;",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "Lkotlin/collections/ArrayList;",
        "context",
        "Landroid/content/Context;",
        "resId",
        "",
        "exception",
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


# static fields
.field public static final INSTANCE:Lnl/joery/animatedbottombar/utils/MenuParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lnl/joery/animatedbottombar/utils/MenuParser;

    invoke-direct {v0}, Lnl/joery/animatedbottombar/utils/MenuParser;-><init>()V

    sput-object v0, Lnl/joery/animatedbottombar/utils/MenuParser;->INSTANCE:Lnl/joery/animatedbottombar/utils/MenuParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Landroid/content/Context;IZ)Ljava/util/ArrayList;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "exception"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Landroid/widget/PopupMenu;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 13
    .local v1, "p":Landroid/widget/PopupMenu;
    new-instance v2, Landroid/view/MenuInflater;

    invoke-direct {v2, v0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    move/from16 v4, p2

    invoke-virtual {v2, v4, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v2, "tabs":Ljava/util/ArrayList;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const-string v5, "p.menu"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/core/view/MenuKt;->iterator(Landroid/view/Menu;)Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    .line 17
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p3, :cond_2

    .line 18
    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 22
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 23
    :cond_0
    new-instance v3, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Menu item attribute \'icon\' for tab named \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 19
    :cond_1
    new-instance v3, Ljava/lang/Exception;

    const-string v6, "Menu item attribute \'title\' is missing"

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Throwable;

    throw v3

    .line 27
    :cond_2
    :goto_1
    nop

    .line 28
    new-instance v14, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 29
    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 30
    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v6, "item.icon"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {v5}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    const/4 v10, 0x0

    .line 32
    invoke-interface {v5}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v11

    const/16 v12, 0x8

    const/4 v13, 0x0

    .line 28
    move-object v6, v14

    invoke-direct/range {v6 .. v13}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;ILnl/joery/animatedbottombar/AnimatedBottomBar$Badge;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    .end local v5    # "item":Landroid/view/MenuItem;
    goto :goto_0

    .line 36
    :cond_3
    return-object v2
.end method
