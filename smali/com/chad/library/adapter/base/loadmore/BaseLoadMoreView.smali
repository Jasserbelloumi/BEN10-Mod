.class public abstract Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;
.super Ljava/lang/Object;
.source "BaseLoadMoreView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H&J\u0014\u0010\u0013\u001a\u00020\u0004*\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;",
        "",
        "()V",
        "convert",
        "",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "position",
        "",
        "loadMoreStatus",
        "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;",
        "getLoadComplete",
        "Landroid/view/View;",
        "getLoadEndView",
        "getLoadFailView",
        "getLoadingView",
        "getRootView",
        "parent",
        "Landroid/view/ViewGroup;",
        "isVisible",
        "visible",
        "",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isVisible(Landroid/view/View;Z)V
    .locals 1
    .param p1, "$this$isVisible"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .line 92
    if-eqz p2, :cond_0

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_0
    const/16 v0, 0x8

    .line 92
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILcom/chad/library/adapter/base/loadmore/LoadMoreStatus;)V
    .locals 3
    .param p1, "holder"    # Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;
    .param p2, "position"    # I
    .param p3, "loadMoreStatus"    # Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadMoreStatus"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 86
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 72
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    goto :goto_0

    .line 65
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;->isVisible(Landroid/view/View;Z)V

    .line 89
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getLoadComplete(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadEndView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadFailView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getLoadingView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)Landroid/view/View;
.end method

.method public abstract getRootView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method
