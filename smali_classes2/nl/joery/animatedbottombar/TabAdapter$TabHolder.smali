.class public final Lnl/joery/animatedbottombar/TabAdapter$TabHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TabAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnl/joery/animatedbottombar/TabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TabHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/TabAdapter$TabHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "v",
        "Landroid/view/View;",
        "(Lnl/joery/animatedbottombar/TabAdapter;Landroid/view/View;)V",
        "view",
        "Lnl/joery/animatedbottombar/TabView;",
        "applyBadge",
        "",
        "badge",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "applyStyle",
        "type",
        "Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;",
        "bind",
        "tab",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "deselect",
        "animate",
        "",
        "select",
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
.field final synthetic this$0:Lnl/joery/animatedbottombar/TabAdapter;

.field private final view:Lnl/joery/animatedbottombar/TabView;


# direct methods
.method public constructor <init>(Lnl/joery/animatedbottombar/TabAdapter;Landroid/view/View;)V
    .locals 2
    .param p1, "this$0"    # Lnl/joery/animatedbottombar/TabAdapter;
    .param p2, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->this$0:Lnl/joery/animatedbottombar/TabAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 152
    move-object v0, p2

    check-cast v0, Lnl/joery/animatedbottombar/TabView;

    iput-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    .line 154
    nop

    .line 155
    new-instance v1, Lnl/joery/animatedbottombar/TabAdapter$TabHolder$1;

    invoke-direct {v1, p0}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder$1;-><init>(Lnl/joery/animatedbottombar/TabAdapter$TabHolder;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method


# virtual methods
.method public final applyBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V
    .locals 1
    .param p1, "badge"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    .line 165
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/TabView;->setBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 166
    return-void
.end method

.method public final applyStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V
    .locals 2
    .param p1, "type"    # Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->this$0:Lnl/joery/animatedbottombar/TabAdapter;

    invoke-static {v1}, Lnl/joery/animatedbottombar/TabAdapter;->access$getBottomBar$p(Lnl/joery/animatedbottombar/TabAdapter;)Lnl/joery/animatedbottombar/AnimatedBottomBar;

    move-result-object v1

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnl/joery/animatedbottombar/TabView;->applyStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;Lnl/joery/animatedbottombar/BottomBarStyle$Tab;)V

    .line 162
    return-void
.end method

.method public final bind(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 2
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->this$0:Lnl/joery/animatedbottombar/TabAdapter;

    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter;->getSelectedTab()Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->select(Z)V

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->deselect(Z)V

    .line 181
    :goto_0
    nop

    .line 183
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    invoke-virtual {p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/TabView;->setTitle(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    invoke-virtual {p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/TabView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    invoke-virtual {p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->getBadge()Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/TabView;->setBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    .line 186
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    invoke-virtual {p1}, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/TabView;->setEnabled(Z)V

    .line 187
    return-void
.end method

.method public final deselect(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 173
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/TabView;->deselect(Z)V

    .line 174
    return-void
.end method

.method public final select(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 169
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->view:Lnl/joery/animatedbottombar/TabView;

    invoke-virtual {v0, p1}, Lnl/joery/animatedbottombar/TabView;->select(Z)V

    .line 170
    return-void
.end method
