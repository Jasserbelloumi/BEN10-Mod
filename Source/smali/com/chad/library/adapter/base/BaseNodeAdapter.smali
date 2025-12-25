.class public abstract Lcom/chad/library/adapter/base/BaseNodeAdapter;
.super Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;
.source "BaseNodeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0010\u0008\u0002\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u0016\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fH\u0016J\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0014\u001a\u00020\u000b2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0015H\u0016J\u000e\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012J2\u0010\u0017\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u0017\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010\u001e\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J<\u0010\u001f\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010 \u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0002J2\u0010!\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007JR\u0010\"\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010#\u001a\u00020\u00192\u0008\u0008\u0002\u0010$\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u001c2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u001cH\u0007J2\u0010\'\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00192\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0007J\u000e\u0010(\u001a\u00020\u00082\u0006\u0010)\u001a\u00020\u0002J\u0010\u0010(\u001a\u00020\u00082\u0008\u0008\u0001\u0010\r\u001a\u00020\u0008J-\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000f2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0019H\u0002\u00a2\u0006\u0002\u0010-J\u0010\u0010.\u001a\u00020\u00192\u0006\u0010/\u001a\u00020\u0008H\u0014J\u0016\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002J\u001e\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002J$\u00100\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00082\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fJ\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00104\u001a\u00020\u0002J\u0016\u00103\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0008J\u001c\u00105\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000fJ\u001e\u00106\u001a\u00020\u000b2\u0006\u00101\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002J\u0010\u00107\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0008H\u0016J\u0010\u00108\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0010\u00109\u001a\u00020\u00082\u0006\u0010\r\u001a\u00020\u0008H\u0002J\u0018\u0010:\u001a\u00020\u000b2\u0006\u0010;\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u001e\u0010<\u001a\u00020\u000b2\u0006\u0010=\u001a\u00020>2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0004H\u0016J\"\u0010<\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00042\u0008\u0010?\u001a\u0004\u0018\u00010@H\u0016J\u0018\u0010A\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fH\u0016J\u0018\u0010B\u001a\u00020\u000b2\u000e\u0010+\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0004H\u0016R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u00080\u0007j\u0008\u0012\u0004\u0012\u00020\u0008`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006C"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/BaseNodeAdapter;",
        "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        "nodeList",
        "",
        "(Ljava/util/List;)V",
        "fullSpanNodeTypeSet",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "addData",
        "",
        "data",
        "position",
        "newData",
        "",
        "addFooterNodeProvider",
        "provider",
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider;",
        "addFullSpanNodeProvider",
        "addItemProvider",
        "Lcom/chad/library/adapter/base/provider/BaseItemProvider;",
        "addNodeProvider",
        "collapse",
        "animate",
        "",
        "notify",
        "parentPayload",
        "",
        "isChangeChildCollapse",
        "collapseAndChild",
        "expand",
        "isChangeChildExpand",
        "expandAndChild",
        "expandAndCollapseOther",
        "isExpandedChild",
        "isCollapseChild",
        "expandPayload",
        "collapsePayload",
        "expandOrCollapse",
        "findParentNode",
        "node",
        "flatData",
        "list",
        "isExpanded",
        "(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;",
        "isFixedViewType",
        "type",
        "nodeAddData",
        "parentNode",
        "childIndex",
        "nodeRemoveData",
        "childNode",
        "nodeReplaceChildData",
        "nodeSetData",
        "removeAt",
        "removeChildAt",
        "removeNodesAt",
        "setData",
        "index",
        "setDiffNewData",
        "diffResult",
        "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
        "commitCallback",
        "Ljava/lang/Runnable;",
        "setList",
        "setNewInstance",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final fullSpanNodeTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .param p1, "nodeList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;-><init>(Ljava/util/List;)V

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/chad/library/adapter/base/BaseNodeAdapter;->fullSpanNodeTypeSet:Ljava/util/HashSet;

    .line 16
    nop

    .line 17
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    .line 18
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x2

    invoke-static {p0, v1, v0, v2, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 19
    .local v0, "flatData":Ljava/util/List;
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .end local v0    # "flatData":Ljava/util/List;
    :cond_2
    nop

    .line 11
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 11
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;-><init>(Ljava/util/List;)V

    .line 657
    return-void
.end method

.method private final collapse(IZZZLjava/lang/Object;)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "isChangeChildCollapse"    # Z
    .param p3, "animate"    # Z
    .param p4, "notify"    # Z
    .param p5, "parentPayload"    # Ljava/lang/Object;

    .line 423
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 425
    .local v0, "node":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    instance-of v1, v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 426
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v1, p1

    .line 428
    .local v1, "adapterPosition":I
    move-object v3, v0

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v3, v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 429
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {p0, v1, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 431
    return v2

    .line 433
    :cond_2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/Collection;

    if-eqz p2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 434
    .local v2, "items":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 435
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 436
    if-eqz p4, :cond_5

    .line 437
    if-eqz p3, :cond_4

    .line 438
    invoke-virtual {p0, v1, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 439
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_3

    .line 441
    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyDataSetChanged()V

    .line 444
    :cond_5
    :goto_3
    return v3

    .line 446
    .end local v1    # "adapterPosition":I
    .end local v2    # "items":Ljava/util/List;
    .end local v3    # "size":I
    :cond_6
    return v2
.end method

.method public static synthetic collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 496
    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 497
    move p2, v0

    .line 496
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 498
    move p3, v0

    .line 496
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 499
    const/4 p4, 0x0

    .line 496
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 6

    .line 418
    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 419
    const/4 p2, 0x0

    move v2, p2

    goto :goto_0

    .line 418
    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x1

    if-eqz p2, :cond_1

    .line 420
    move v3, p7

    goto :goto_1

    .line 418
    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 421
    move v4, p7

    goto :goto_2

    .line 418
    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 422
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_3

    .line 418
    :cond_3
    move-object v5, p5

    :goto_3
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 548
    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 549
    move p2, v0

    .line 548
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 550
    move p3, v0

    .line 548
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 551
    const/4 p4, 0x0

    .line 548
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: collapseAndChild"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final expand(IZZZLjava/lang/Object;)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "isChangeChildExpand"    # Z
    .param p3, "animate"    # Z
    .param p4, "notify"    # Z
    .param p5, "parentPayload"    # Ljava/lang/Object;

    .line 463
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 465
    .local v0, "node":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    instance-of v1, v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-nez v1, :cond_6

    .line 466
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v1, p1

    .line 468
    .local v1, "adapterPosition":I
    move-object v3, v0

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 469
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    if-eqz v3, :cond_2

    .line 470
    invoke-virtual {p0, v1, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 471
    return v2

    .line 473
    :cond_2
    invoke-virtual {v0}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Collection;

    if-eqz p2, :cond_3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-direct {p0, v2, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v2

    .line 474
    .local v2, "items":Ljava/util/List;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 475
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    move-object v6, v2

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v4, v5, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 476
    if-eqz p4, :cond_5

    .line 477
    if-eqz p3, :cond_4

    .line 478
    invoke-virtual {p0, v1, p5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 479
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeInserted(II)V

    goto :goto_3

    .line 481
    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyDataSetChanged()V

    .line 484
    :cond_5
    :goto_3
    return v3

    .line 486
    .end local v1    # "adapterPosition":I
    .end local v2    # "items":Ljava/util/List;
    .end local v3    # "size":I
    :cond_6
    return v2
.end method

.method public static synthetic expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 510
    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 511
    move p2, v0

    .line 510
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 512
    move p3, v0

    .line 510
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 513
    const/4 p4, 0x0

    .line 510
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expand"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 6

    .line 458
    if-nez p7, :cond_4

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 459
    const/4 p2, 0x0

    move v2, p2

    goto :goto_0

    .line 458
    :cond_0
    move v2, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x1

    if-eqz p2, :cond_1

    .line 460
    move v3, p7

    goto :goto_1

    .line 458
    :cond_1
    move v3, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    .line 461
    move v4, p7

    goto :goto_2

    .line 458
    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    .line 462
    const/4 p5, 0x0

    move-object v5, p5

    goto :goto_3

    .line 458
    :cond_3
    move-object v5, p5

    :goto_3
    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expand"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 540
    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 541
    move p2, v0

    .line 540
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 542
    move p3, v0

    .line 540
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 543
    const/4 p4, 0x0

    .line 540
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expandAndChild"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 7

    .line 564
    if-nez p9, :cond_6

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 565
    const/4 v0, 0x0

    goto :goto_0

    .line 564
    :cond_0
    move v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 566
    move v1, v2

    goto :goto_1

    .line 564
    :cond_1
    move v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    .line 567
    move v3, v2

    goto :goto_2

    .line 564
    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    .line 568
    goto :goto_3

    .line 564
    :cond_3
    move v2, p5

    :goto_3
    and-int/lit8 v4, p8, 0x20

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 569
    move-object v4, v5

    goto :goto_4

    .line 564
    :cond_4
    move-object v4, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    .line 570
    goto :goto_5

    .line 564
    :cond_5
    move-object v5, p7

    :goto_5
    move-object p2, p0

    move p3, p1

    move p4, v0

    move p5, v1

    move p6, v3

    move p7, v2

    move-object p8, v4

    move-object/from16 p9, v5

    invoke-virtual/range {p2 .. p9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther(IZZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: expandAndCollapseOther"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I
    .locals 1

    .line 524
    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    .line 525
    move p2, v0

    .line 524
    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    .line 526
    move p3, v0

    .line 524
    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 527
    const/4 p4, 0x0

    .line 524
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse(IZZLjava/lang/Object;)I

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: expandOrCollapse"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;
    .locals 7
    .param p1, "list"    # Ljava/util/Collection;
    .param p2, "isExpanded"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v0, "newList":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 377
    .local v2, "element":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    instance-of v3, v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_5

    .line 381
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 382
    :cond_1
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    .line 383
    .local v3, "childNode":Ljava/util/List;
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    if-nez v4, :cond_4

    .line 384
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-direct {p0, v4, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v4

    .line 385
    .local v4, "items":Ljava/util/List;
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    .end local v3    # "childNode":Ljava/util/List;
    .end local v4    # "items":Ljava/util/List;
    :cond_4
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .local v3, "it":Z
    const/4 v4, 0x0

    .line 389
    .local v4, "$i$a$-let-BaseNodeAdapter$flatData$1":I
    move-object v5, v2

    check-cast v5, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v5, v3}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->setExpanded(Z)V

    .line 390
    nop

    .line 388
    .end local v3    # "it":Z
    .end local v4    # "$i$a$-let-BaseNodeAdapter$flatData$1":I
    goto :goto_1

    .line 392
    :cond_5
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    .line 393
    .local v3, "childNode":Ljava/util/List;
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v4, v5

    :cond_7
    if-nez v4, :cond_8

    .line 394
    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-direct {p0, v4, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object v4

    .line 395
    .local v4, "items":Ljava/util/List;
    move-object v5, v4

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 399
    .end local v3    # "childNode":Ljava/util/List;
    .end local v4    # "items":Ljava/util/List;
    :cond_8
    :goto_1
    instance-of v3, v2, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    if-eqz v3, :cond_0

    .line 400
    move-object v3, v2

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    invoke-interface {v3}, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;->getFooterNode()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v3

    if-eqz v3, :cond_9

    .local v3, "it":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    const/4 v4, 0x0

    .line 401
    .local v4, "$i$a$-let-BaseNodeAdapter$flatData$2":I
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    .end local v3    # "it":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .end local v4    # "$i$a$-let-BaseNodeAdapter$flatData$2":I
    goto/16 :goto_0

    .end local v2    # "element":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    :cond_9
    goto/16 :goto_0

    .line 405
    :cond_a
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method static synthetic flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 373
    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData(Ljava/util/Collection;Ljava/lang/Boolean;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: flatData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final removeChildAt(I)I
    .locals 5
    .param p1, "position"    # I

    .line 179
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 180
    return v1

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 185
    .local v0, "removeCount":I
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 187
    .local v2, "node":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_4

    .line 188
    instance-of v1, v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 189
    move-object v1, v2

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {p0, v1, v4, v3, v4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "items":Ljava/util/List;
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 192
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .end local v1    # "items":Ljava/util/List;
    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    invoke-static {p0, v1, v4, v3, v4}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 196
    .restart local v1    # "items":Ljava/util/List;
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 197
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 200
    .end local v1    # "items":Ljava/util/List;
    :cond_4
    :goto_0
    return v0
.end method

.method private final removeNodesAt(I)I
    .locals 3
    .param p1, "position"    # I

    .line 156
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 157
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x0

    .line 163
    .local v0, "removeCount":I
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeChildAt(I)I

    move-result v0

    .line 166
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    add-int/lit8 v0, v0, 0x1

    .line 169
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 171
    .local v1, "node":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    instance-of v2, v1, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;

    invoke-interface {v2}, Lcom/chad/library/adapter/base/entity/node/NodeFooterImp;->getFooterNode()Lcom/chad/library/adapter/base/entity/node/BaseNode;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_1
    return v0
.end method


# virtual methods
.method public addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "data"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILjava/util/Collection;)V

    .line 85
    return-void
.end method

.method public bridge synthetic addData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    return-void
.end method

.method public addData(ILjava/util/Collection;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "newData"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p2, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "nodes":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-super {p0, p1, v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->addData(ILjava/util/Collection;)V

    .line 94
    return-void
.end method

.method public addData(Lcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 2
    .param p1, "data"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(Ljava/util/Collection;)V

    .line 89
    return-void
.end method

.method public bridge synthetic addData(Ljava/lang/Object;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .line 11
    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(Lcom/chad/library/adapter/base/entity/node/BaseNode;)V

    return-void
.end method

.method public addData(Ljava/util/Collection;)V
    .locals 2
    .param p1, "newData"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 98
    .local v0, "nodes":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-super {p0, v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->addData(Ljava/util/Collection;)V

    .line 99
    return-void
.end method

.method public final addFooterNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V

    .line 48
    return-void
.end method

.method public final addFullSpanNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseNodeAdapter;->fullSpanNodeTypeSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;->getItemViewType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 39
    return-void
.end method

.method public addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/chad/library/adapter/base/provider/BaseItemProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/provider/BaseItemProvider<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    instance-of v0, p1, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please add BaseNodeProvider, no BaseItemProvider!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final addNodeProvider(Lcom/chad/library/adapter/base/provider/BaseNodeProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/chad/library/adapter/base/provider/BaseNodeProvider;

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    move-object v0, p1

    check-cast v0, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addItemProvider(Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V

    .line 30
    return-void
.end method

.method public final collapse(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final collapse(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final collapse(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final collapse(IZZLjava/lang/Object;)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "notify"    # Z
    .param p4, "parentPayload"    # Ljava/lang/Object;

    .line 500
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final collapseAndChild(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final collapseAndChild(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final collapseAndChild(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapseAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final collapseAndChild(IZZLjava/lang/Object;)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "notify"    # Z
    .param p4, "parentPayload"    # Ljava/lang/Object;

    .line 552
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expand(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expand(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expand(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expand(IZZLjava/lang/Object;)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "notify"    # Z
    .param p4, "parentPayload"    # Ljava/lang/Object;

    .line 514
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandAndChild(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandAndChild(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandAndChild(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndChild$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandAndChild(IZZLjava/lang/Object;)I
    .locals 6
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "notify"    # Z
    .param p4, "parentPayload"    # Ljava/lang/Object;

    .line 544
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandAndCollapseOther(I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7e

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZ)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7c

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZ)V
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x78

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZ)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZZ)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x60

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZZLjava/lang/Object;)V
    .locals 10

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v9}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandAndCollapseOther$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZZZLjava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public final expandAndCollapseOther(IZZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "position"    # I
    .param p2, "isExpandedChild"    # Z
    .param p3, "isCollapseChild"    # Z
    .param p4, "animate"    # Z
    .param p5, "notify"    # Z
    .param p6, "expandPayload"    # Ljava/lang/Object;
    .param p7, "collapsePayload"    # Ljava/lang/Object;

    .line 572
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result v0

    .line 573
    .local v0, "expandCount":I
    if-nez v0, :cond_0

    .line 574
    return-void

    .line 577
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->findParentNode(I)I

    move-result v1

    .line 579
    .local v1, "parentPosition":I
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 580
    move v4, v2

    goto :goto_0

    .line 582
    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 579
    :goto_0
    nop

    .line 586
    .local v4, "firstPosition":I
    move v5, p1

    .line 589
    .local v5, "newPosition":I
    sub-int v6, p1, v4

    .line 591
    .local v6, "beforeAllSize":I
    if-lez v6, :cond_3

    .line 593
    move v7, v4

    move v13, v7

    .line 595
    .local v13, "i":I
    :cond_2
    move-object v7, p0

    move v8, v13

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    invoke-direct/range {v7 .. v12}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result v7

    .line 596
    .local v7, "collapseSize":I
    add-int/lit8 v13, v13, 0x1

    .line 598
    sub-int/2addr v5, v7

    .line 599
    if-lt v13, v5, :cond_2

    .line 603
    .end local v7    # "collapseSize":I
    .end local v13    # "i":I
    :cond_3
    if-ne v1, v3, :cond_4

    .line 604
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 606
    :cond_4
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 607
    .local v2, "dataSize":I
    :cond_5
    add-int v3, v1, v2

    add-int/2addr v3, v0

    move v2, v3

    .line 603
    .end local v2    # "dataSize":I
    :goto_1
    nop

    .line 611
    .local v2, "lastPosition":I
    add-int v3, v5, v0

    if-ge v3, v2, :cond_6

    .line 612
    add-int v3, v5, v0

    add-int/lit8 v3, v3, 0x1

    .line 613
    .local v3, "i":I
    :goto_2
    if-gt v3, v2, :cond_6

    .line 614
    move-object v7, p0

    move v8, v3

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    invoke-direct/range {v7 .. v12}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result v7

    .line 615
    .restart local v7    # "collapseSize":I
    add-int/lit8 v3, v3, 0x1

    .line 616
    sub-int/2addr v2, v7

    .end local v7    # "collapseSize":I
    goto :goto_2

    .line 621
    .end local v3    # "i":I
    :cond_6
    return-void
.end method

.method public final expandOrCollapse(I)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandOrCollapse(IZ)I
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandOrCollapse(IZZ)I
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expandOrCollapse$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;IZZLjava/lang/Object;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final expandOrCollapse(IZZLjava/lang/Object;)I
    .locals 8
    .param p1, "position"    # I
    .param p2, "animate"    # Z
    .param p3, "notify"    # Z
    .param p4, "parentPayload"    # Ljava/lang/Object;

    .line 528
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 529
    .local v0, "node":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    instance-of v1, v0, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v1, :cond_1

    .line 530
    move-object v1, v0

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->collapse(IZZZLjava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 533
    :cond_0
    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->expand(IZZZLjava/lang/Object;)I

    move-result v1

    .line 530
    :goto_0
    return v1

    .line 536
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public final findParentNode(I)I
    .locals 7
    .param p1, "position"    # I

    .line 645
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 646
    return v0

    .line 648
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 649
    .local v1, "node":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 651
    .local v3, "tempNode":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_1

    move v5, v6

    :cond_1
    if-eqz v5, :cond_2

    .line 652
    return v2

    .line 649
    .end local v3    # "tempNode":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 655
    .end local v2    # "i":I
    :cond_3
    return v0
.end method

.method public final findParentNode(Lcom/chad/library/adapter/base/entity/node/BaseNode;)I
    .locals 7
    .param p1, "node"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 631
    .local v0, "pos":I
    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 635
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    goto :goto_0

    .line 632
    .end local v2    # "i":I
    :pswitch_0
    return v1

    .line 635
    .restart local v2    # "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 636
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 637
    .local v3, "tempNode":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_0

    move v5, v6

    :cond_0
    if-eqz v5, :cond_1

    .line 638
    return v2

    .line 635
    .end local v3    # "tempNode":Lcom/chad/library/adapter/base/entity/node/BaseNode;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 641
    .end local v2    # "i":I
    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected isFixedViewType(I)Z
    .locals 2
    .param p1, "type"    # I

    .line 63
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->isFixedViewType(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseNodeAdapter;->fullSpanNodeTypeSet:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final nodeAddData(Lcom/chad/library/adapter/base/entity/node/BaseNode;ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 4
    .param p1, "parentNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .param p2, "childIndex"    # I
    .param p3, "data"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 235
    .local v1, "$i$a$-let-BaseNodeAdapter$nodeAddData$2":I
    invoke-interface {v0, p2, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 237
    instance-of v2, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 242
    .local v2, "parentIndex":I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, p2

    .line 243
    .local v3, "pos":I
    invoke-virtual {p0, v3, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    .line 244
    nop

    .line 234
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-BaseNodeAdapter$nodeAddData$2":I
    .end local v2    # "parentIndex":I
    .end local v3    # "pos":I
    nop

    .line 245
    :cond_1
    return-void
.end method

.method public final nodeAddData(Lcom/chad/library/adapter/base/entity/node/BaseNode;ILjava/util/Collection;)V
    .locals 4
    .param p1, "parentNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .param p2, "childIndex"    # I
    .param p3, "newData"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            "I",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 255
    .local v1, "$i$a$-let-BaseNodeAdapter$nodeAddData$3":I
    invoke-interface {v0, p2, p3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 257
    instance-of v2, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 261
    .local v2, "parentIndex":I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, p2

    .line 262
    .local v3, "pos":I
    invoke-virtual {p0, v3, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILjava/util/Collection;)V

    .line 263
    nop

    .line 254
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-BaseNodeAdapter$nodeAddData$3":I
    .end local v2    # "parentIndex":I
    .end local v3    # "pos":I
    nop

    .line 264
    :cond_1
    return-void
.end method

.method public final nodeAddData(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 5
    .param p1, "parentNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .param p2, "data"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 215
    .local v1, "$i$a$-let-BaseNodeAdapter$nodeAddData$1":I
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    instance-of v2, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 218
    return-void

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 222
    .local v2, "parentIndex":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 223
    .local v3, "childIndex":I
    add-int v4, v2, v3

    invoke-virtual {p0, v4, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->addData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    .line 224
    nop

    .line 214
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-BaseNodeAdapter$nodeAddData$1":I
    .end local v2    # "parentIndex":I
    .end local v3    # "childIndex":I
    nop

    .line 225
    :cond_1
    return-void
.end method

.method public final nodeRemoveData(Lcom/chad/library/adapter/base/entity/node/BaseNode;I)V
    .locals 5
    .param p1, "parentNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .param p2, "childIndex"    # I

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 273
    .local v1, "$i$a$-let-BaseNodeAdapter$nodeRemoveData$1":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    instance-of v2, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 278
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 279
    return-void

    .line 282
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 283
    .local v2, "parentIndex":I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, p2

    .line 284
    .local v3, "pos":I
    invoke-virtual {p0, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->remove(I)V

    .line 286
    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 272
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-BaseNodeAdapter$nodeRemoveData$1":I
    .end local v2    # "parentIndex":I
    .end local v3    # "pos":I
    nop

    .line 288
    :cond_2
    return-void
.end method

.method public final nodeRemoveData(Lcom/chad/library/adapter/base/entity/node/BaseNode;Lcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 3
    .param p1, "parentNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .param p2, "childNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childNode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 297
    .local v1, "$i$a$-let-BaseNodeAdapter$nodeRemoveData$2":I
    instance-of v2, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 298
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->remove(Ljava/lang/Object;)V

    .line 303
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-BaseNodeAdapter$nodeRemoveData$2":I
    nop

    .line 305
    :cond_1
    return-void
.end method

.method public final nodeReplaceChildData(Lcom/chad/library/adapter/base/entity/node/BaseNode;Ljava/util/Collection;)V
    .locals 8
    .param p1, "parentNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .param p2, "newData"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 339
    .local v1, "$i$a$-let-BaseNodeAdapter$nodeReplaceChildData$1":I
    instance-of v2, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 340
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 342
    return-void

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 346
    .local v2, "parentIndex":I
    invoke-direct {p0, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeChildAt(I)I

    move-result v3

    .line 348
    .local v3, "removeCount":I
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 349
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 351
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, p2, v5, v4, v5}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 352
    .local v4, "newFlatData":Ljava/util/List;
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v5, v6, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 354
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v6

    add-int/2addr v5, v6

    .line 355
    .local v5, "positionStart":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 356
    invoke-virtual {p0, v5, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0, v5, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    .line 359
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeInserted(II)V

    .line 362
    :goto_0
    nop

    .line 338
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-BaseNodeAdapter$nodeReplaceChildData$1":I
    .end local v2    # "parentIndex":I
    .end local v3    # "removeCount":I
    .end local v4    # "newFlatData":Ljava/util/List;
    .end local v5    # "positionStart":I
    nop

    .line 363
    :cond_2
    return-void
.end method

.method public final nodeSetData(Lcom/chad/library/adapter/base/entity/node/BaseNode;ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 4
    .param p1, "parentNode"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;
    .param p2, "childIndex"    # I
    .param p3, "data"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "parentNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/entity/node/BaseNode;->getChildNode()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 315
    .local v1, "$i$a$-let-BaseNodeAdapter$nodeSetData$1":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lt p2, v2, :cond_0

    .line 316
    return-void

    .line 319
    :cond_0
    instance-of v2, p1, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;

    invoke-virtual {v2}, Lcom/chad/library/adapter/base/entity/node/BaseExpandNode;->isExpanded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 325
    .local v2, "parentIndex":I
    add-int/lit8 v3, v2, 0x1

    add-int/2addr v3, p2

    .line 326
    .local v3, "pos":I
    invoke-virtual {p0, v3, p3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    .line 328
    invoke-interface {v0, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 329
    nop

    .line 314
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-let-BaseNodeAdapter$nodeSetData$1":I
    .end local v2    # "parentIndex":I
    .end local v3    # "pos":I
    nop

    .line 330
    :cond_2
    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .param p1, "position"    # I

    .line 107
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeNodesAt(I)I

    move-result v0

    .line 108
    .local v0, "removeCount":I
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->compatibilityDataSizeChanged(I)V

    .line 110
    return-void
.end method

.method public setData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "data"    # Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->removeNodesAt(I)I

    move-result v0

    .line 121
    .local v0, "removeCount":I
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chad/library/adapter/base/entity/node/BaseNode;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v1, v2, v3, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 122
    .local v1, "newFlatData":Ljava/util/List;
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getData()Ljava/util/List;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, p1, v3}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 124
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeRemoved(II)V

    .line 128
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->getHeaderLayoutCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->notifyItemRangeInserted(II)V

    .line 132
    :goto_0
    return-void
.end method

.method public bridge synthetic setData(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 11
    move-object v0, p2

    check-cast v0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    invoke-virtual {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setData(ILcom/chad/library/adapter/base/entity/node/BaseNode;)V

    return-void
.end method

.method public setDiffNewData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V
    .locals 3
    .param p1, "diffResult"    # Landroidx/recyclerview/widget/DiffUtil$DiffResult;
    .param p2, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/DiffUtil$DiffResult;",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "diffResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    .line 145
    return-void

    .line 147
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setDiffNewData(Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/util/List;)V

    .line 148
    return-void
.end method

.method public setDiffNewData(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "list"    # Ljava/util/List;
    .param p2, "commitCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->hasEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    .line 137
    return-void

    .line 139
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0, p2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setDiffNewData(Ljava/util/List;Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public setList(Ljava/util/Collection;)V
    .locals 3
    .param p1, "list"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 74
    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-super {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setList(Ljava/util/Collection;)V

    .line 75
    return-void
.end method

.method public setNewInstance(Ljava/util/List;)V
    .locals 3
    .param p1, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .line 67
    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->flatData$default(Lcom/chad/library/adapter/base/BaseNodeAdapter;Ljava/util/Collection;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->setNewInstance(Ljava/util/List;)V

    .line 68
    return-void
.end method
