.class public final Lnl/joery/animatedbottombar/TabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TabAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/joery/animatedbottombar/TabAdapter$TabHolder;,
        Lnl/joery/animatedbottombar/TabAdapter$Payload;,
        Lnl/joery/animatedbottombar/TabAdapter$PayloadType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lnl/joery/animatedbottombar/TabAdapter$TabHolder;",
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
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0003KLMB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0018\u00101\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u000e2\u0008\u0008\u0002\u00103\u001a\u00020\nJ\u0018\u00104\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u000e2\u0008\u00105\u001a\u0004\u0018\u000106J\u000e\u00107\u001a\u00020\u00192\u0006\u00108\u001a\u000209J*\u0010:\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J\u0016\u0010;\u001a\u0008\u0018\u00010\u0002R\u00020\u00002\u0006\u0010<\u001a\u00020\nH\u0002J\u0008\u0010=\u001a\u00020\nH\u0016J\u000e\u0010>\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u000eJ\u001c\u0010?\u001a\u00020\u00192\n\u0010@\u001a\u00060\u0002R\u00020\u00002\u0006\u0010<\u001a\u00020\nH\u0016J*\u0010?\u001a\u00020\u00192\n\u0010@\u001a\u00060\u0002R\u00020\u00002\u0006\u0010<\u001a\u00020\n2\u000c\u0010A\u001a\u0008\u0012\u0004\u0012\u00020C0BH\u0016J\u001c\u0010D\u001a\u00060\u0002R\u00020\u00002\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u00020\nH\u0016J\u000e\u0010H\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u000eJ\u0016\u0010I\u001a\u00020\u00192\u0006\u00102\u001a\u00020\u000e2\u0006\u0010J\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000Rx\u0010\u0008\u001a`\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0015\u0012\u0013\u0018\u00010\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016RL\u0010\u0017\u001a4\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u008d\u0001\u0010\u001e\u001au\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\r\u0012\u0015\u0012\u0013\u0018\u00010\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0010\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008(\u0011\u0012\u0013\u0012\u00110\u0012\u00a2\u0006\u000c\u0008\u000b\u0012\u0008\u0008\u000c\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010%\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'R\"\u0010)\u001a\u0004\u0018\u00010\u000e2\u0008\u0010(\u001a\u0004\u0018\u00010\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R!\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u000e0-j\u0008\u0012\u0004\u0012\u00020\u000e`.\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u00100\u00a8\u0006N"
    }
    d2 = {
        "Lnl/joery/animatedbottombar/TabAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lnl/joery/animatedbottombar/TabAdapter$TabHolder;",
        "bottomBar",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar;",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroidx/recyclerview/widget/RecyclerView;)V",
        "onTabIntercepted",
        "Lkotlin/Function4;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "lastIndex",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "lastTab",
        "newIndex",
        "newTab",
        "",
        "getOnTabIntercepted",
        "()Lkotlin/jvm/functions/Function4;",
        "setOnTabIntercepted",
        "(Lkotlin/jvm/functions/Function4;)V",
        "onTabReselected",
        "Lkotlin/Function2;",
        "",
        "getOnTabReselected",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnTabReselected",
        "(Lkotlin/jvm/functions/Function2;)V",
        "onTabSelected",
        "Lkotlin/Function5;",
        "animated",
        "getOnTabSelected",
        "()Lkotlin/jvm/functions/Function5;",
        "setOnTabSelected",
        "(Lkotlin/jvm/functions/Function5;)V",
        "selectedIndex",
        "getSelectedIndex",
        "()I",
        "<set-?>",
        "selectedTab",
        "getSelectedTab",
        "()Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
        "tabs",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "getTabs",
        "()Ljava/util/ArrayList;",
        "addTab",
        "tab",
        "tabIndex",
        "applyTabBadge",
        "badge",
        "Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;",
        "applyTabStyle",
        "type",
        "Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;",
        "canSelectTab",
        "findViewHolder",
        "position",
        "getItemCount",
        "notifyTabChanged",
        "onBindViewHolder",
        "holder",
        "payloads",
        "",
        "",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "removeTab",
        "selectTab",
        "animate",
        "Payload",
        "PayloadType",
        "TabHolder",
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
.field private final bottomBar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

.field private onTabIntercepted:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private onTabReselected:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onTabSelected:Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final recycler:Landroidx/recyclerview/widget/RecyclerView;

.field private selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnl/joery/animatedbottombar/AnimatedBottomBar;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "bottomBar"    # Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .param p2, "recycler"    # Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "bottomBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recycler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    nop

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter;->bottomBar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    iput-object p2, p0, Lnl/joery/animatedbottombar/TabAdapter;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getBottomBar$p(Lnl/joery/animatedbottombar/TabAdapter;)Lnl/joery/animatedbottombar/AnimatedBottomBar;
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/TabAdapter;

    .line 9
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->bottomBar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    return-object v0
.end method

.method public static final synthetic access$getSelectedTab$p(Lnl/joery/animatedbottombar/TabAdapter;)Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 1
    .param p0, "$this"    # Lnl/joery/animatedbottombar/TabAdapter;

    .line 9
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    return-object v0
.end method

.method public static final synthetic access$setSelectedTab$p(Lnl/joery/animatedbottombar/TabAdapter;Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 0
    .param p0, "$this"    # Lnl/joery/animatedbottombar/TabAdapter;
    .param p1, "<set-?>"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 9
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    return-void
.end method

.method public static synthetic addTab$default(Lnl/joery/animatedbottombar/TabAdapter;Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 61
    const/4 p2, -0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/TabAdapter;->addTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;I)V

    return-void
.end method

.method private final canSelectTab(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)Z
    .locals 3
    .param p1, "lastIndex"    # I
    .param p2, "lastTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p3, "newIndex"    # I
    .param p4, "newTab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 138
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabIntercepted:Lkotlin/jvm/functions/Function4;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 140
    nop

    .line 141
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    nop

    .line 138
    invoke-interface {v0, v1, p2, v2, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 143
    :cond_0
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0
.end method

.method private final findViewHolder(I)Lnl/joery/animatedbottombar/TabAdapter$TabHolder;
    .locals 2
    .param p1, "position"    # I

    .line 147
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 148
    .local v0, "viewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final addTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;I)V
    .locals 2
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p2, "tabIndex"    # I

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "addedIndex":Ljava/lang/Integer;
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 64
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    :goto_0
    nop

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lnl/joery/animatedbottombar/TabAdapter;->notifyItemInserted(I)V

    .line 72
    return-void
.end method

.method public final applyTabBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V
    .locals 3
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p2, "badge"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Lnl/joery/animatedbottombar/TabAdapter$Payload;

    sget-object v2, Lnl/joery/animatedbottombar/TabAdapter$PayloadType;->UpdateBadge:Lnl/joery/animatedbottombar/TabAdapter$PayloadType;

    invoke-direct {v1, v2, p2}, Lnl/joery/animatedbottombar/TabAdapter$Payload;-><init>(Lnl/joery/animatedbottombar/TabAdapter$PayloadType;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lnl/joery/animatedbottombar/TabAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method public final applyTabStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V
    .locals 3
    .param p1, "type"    # Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    nop

    .line 116
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 117
    new-instance v1, Lnl/joery/animatedbottombar/TabAdapter$Payload;

    sget-object v2, Lnl/joery/animatedbottombar/TabAdapter$PayloadType;->ApplyStyle:Lnl/joery/animatedbottombar/TabAdapter$PayloadType;

    invoke-direct {v1, v2, p1}, Lnl/joery/animatedbottombar/TabAdapter$Payload;-><init>(Lnl/joery/animatedbottombar/TabAdapter$PayloadType;Ljava/lang/Object;)V

    .line 115
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lnl/joery/animatedbottombar/TabAdapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 119
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getOnTabIntercepted()Lkotlin/jvm/functions/Function4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Integer;",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Integer;",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabIntercepted:Lkotlin/jvm/functions/Function4;

    return-object v0
.end method

.method public final getOnTabReselected()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabReselected:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getOnTabSelected()Lkotlin/jvm/functions/Function5;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function5<",
            "Ljava/lang/Integer;",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Integer;",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabSelected:Lkotlin/jvm/functions/Function5;

    return-object v0
.end method

.method public final getSelectedIndex()I
    .locals 2

    .line 25
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 26
    .local v0, "tabIndex":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public final getSelectedTab()Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .locals 1

    .line 21
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    return-object v0
.end method

.method public final getTabs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final notifyTabChanged(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 127
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabAdapter;->notifyItemChanged(I)V

    .line 130
    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 9
    check-cast p1, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/TabAdapter;->onBindViewHolder(Lnl/joery/animatedbottombar/TabAdapter$TabHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    .line 9
    check-cast p1, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    invoke-virtual {p0, p1, p2, p3}, Lnl/joery/animatedbottombar/TabAdapter;->onBindViewHolder(Lnl/joery/animatedbottombar/TabAdapter$TabHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lnl/joery/animatedbottombar/TabAdapter$TabHolder;I)V
    .locals 2
    .param p1, "holder"    # Lnl/joery/animatedbottombar/TabAdapter$TabHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tabs[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-virtual {p1, v0}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->bind(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    .line 42
    return-void
.end method

.method public onBindViewHolder(Lnl/joery/animatedbottombar/TabAdapter$TabHolder;ILjava/util/List;)V
    .locals 3
    .param p1, "holder"    # Lnl/joery/animatedbottombar/TabAdapter$TabHolder;
    .param p2, "position"    # I
    .param p3, "payloads"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl/joery/animatedbottombar/TabAdapter$TabHolder;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    nop

    .line 46
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tabs[position]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-virtual {p1, v0}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->bind(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lnl/joery/animatedbottombar/TabAdapter$Payload;

    .line 49
    .local v0, "payload":Lnl/joery/animatedbottombar/TabAdapter$Payload;
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter$Payload;->getType()Lnl/joery/animatedbottombar/TabAdapter$PayloadType;

    move-result-object v1

    sget-object v2, Lnl/joery/animatedbottombar/TabAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/TabAdapter$PayloadType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter$Payload;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;

    invoke-virtual {p1, v1}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->applyBadge(Lnl/joery/animatedbottombar/AnimatedBottomBar$Badge;)V

    goto :goto_0

    .line 51
    :pswitch_1
    nop

    .line 52
    invoke-virtual {v0}, Lnl/joery/animatedbottombar/TabAdapter$Payload;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;

    .line 51
    invoke-virtual {p1, v1}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->applyStyle(Lnl/joery/animatedbottombar/BottomBarStyle$StyleUpdateType;)V

    goto :goto_0

    .line 52
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type nl.joery.animatedbottombar.BottomBarStyle.StyleUpdateType"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "payload":Lnl/joery/animatedbottombar/TabAdapter$Payload;
    :goto_0
    nop

    .line 58
    nop

    .line 59
    return-void

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type nl.joery.animatedbottombar.TabAdapter.Payload"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lnl/joery/animatedbottombar/TabAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lnl/joery/animatedbottombar/TabAdapter$TabHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    nop

    .line 35
    nop

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 35
    sget v1, Lnl/joery/animatedbottombar/R$layout;->list_tab:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lnl/joery/animatedbottombar/TabView;

    .line 34
    nop

    .line 36
    .local v0, "v":Lnl/joery/animatedbottombar/TabView;
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->bottomBar:Lnl/joery/animatedbottombar/AnimatedBottomBar;

    invoke-virtual {v1}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->getTabStyle$nl_joery_animatedbottombar_library()Lnl/joery/animatedbottombar/BottomBarStyle$Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnl/joery/animatedbottombar/TabView;->applyStyle(Lnl/joery/animatedbottombar/BottomBarStyle$Tab;)V

    .line 37
    new-instance v1, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;-><init>(Lnl/joery/animatedbottombar/TabAdapter;Landroid/view/View;)V

    return-object v1

    .line 35
    .end local v0    # "v":Lnl/joery/animatedbottombar/TabView;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type nl.joery.animatedbottombar.TabView"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)V
    .locals 3
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 77
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, v0}, Lnl/joery/animatedbottombar/TabAdapter;->notifyItemRemoved(I)V

    .line 81
    :cond_0
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    iput-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 84
    :cond_1
    return-void
.end method

.method public final selectTab(Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;Z)V
    .locals 9
    .param p1, "tab"    # Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;
    .param p2, "animate"    # Z

    const-string v0, "tab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 88
    .local v0, "newIndex":I
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabReselected:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    .line 90
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->indexOf(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 94
    .local v1, "lastIndex":I
    iget-object v2, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    invoke-direct {p0, v1, v2, v0, p1}, Lnl/joery/animatedbottombar/TabAdapter;->canSelectTab(ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;ILnl/joery/animatedbottombar/AnimatedBottomBar$Tab;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    return-void

    .line 98
    :cond_2
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter;->selectedTab:Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    .line 100
    if-ltz v1, :cond_3

    .line 101
    invoke-direct {p0, v1}, Lnl/joery/animatedbottombar/TabAdapter;->findViewHolder(I)Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, p2}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->deselect(Z)V

    .line 103
    :cond_3
    invoke-direct {p0, v0}, Lnl/joery/animatedbottombar/TabAdapter;->findViewHolder(I)Lnl/joery/animatedbottombar/TabAdapter$TabHolder;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, p2}, Lnl/joery/animatedbottombar/TabAdapter$TabHolder;->select(Z)V

    .line 105
    :cond_4
    iget-object v3, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabSelected:Lkotlin/jvm/functions/Function5;

    if-eqz v3, :cond_6

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 107
    if-ltz v1, :cond_5

    iget-object v2, p0, Lnl/joery/animatedbottombar/TabAdapter;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    move-object v5, v2

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 109
    nop

    .line 110
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 105
    move-object v7, p1

    invoke-interface/range {v3 .. v8}, Lkotlin/jvm/functions/Function5;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Unit;

    .line 112
    :cond_6
    return-void
.end method

.method public final setOnTabIntercepted(Lkotlin/jvm/functions/Function4;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabIntercepted:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public final setOnTabReselected(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabReselected:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnTabSelected(Lkotlin/jvm/functions/Function5;)V
    .locals 0
    .param p1, "<set-?>"    # Lkotlin/jvm/functions/Function5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function5<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lnl/joery/animatedbottombar/AnimatedBottomBar$Tab;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lnl/joery/animatedbottombar/TabAdapter;->onTabSelected:Lkotlin/jvm/functions/Function5;

    return-void
.end method
