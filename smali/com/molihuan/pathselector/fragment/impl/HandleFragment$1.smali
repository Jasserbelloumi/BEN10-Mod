.class Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;
.super Ljava/lang/Object;
.source "HandleFragment.java"

# interfaces
.implements Lcom/blankj/molihuan/utilcode/util/SizeUtils$OnGetSizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/fragment/impl/HandleFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    .line 80
    iput-object p1, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSize(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v1, v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    .line 86
    .local v0, "width":I
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v1, v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mRecView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v3, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v3, v3, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 88
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    new-instance v2, Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    sget v3, Lcom/molihuan/pathselector/R$layout;->item_handle_mlh:I

    iget-object v4, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v4, v4, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleItemListeners:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0}, Lcom/molihuan/pathselector/adapter/HandleListAdapter;-><init>(ILjava/util/List;I)V

    iput-object v2, v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleListAdapter:Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    .line 89
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v1, v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->mRecView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v2, v2, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleListAdapter:Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v1, v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleListAdapter:Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/adapter/HandleListAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    iget-object v1, v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;->handleListAdapter:Lcom/molihuan/pathselector/adapter/HandleListAdapter;

    iget-object v2, p0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment$1;->this$0:Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/adapter/HandleListAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter/base/listener/OnItemLongClickListener;)V

    .line 92
    return-void
.end method
