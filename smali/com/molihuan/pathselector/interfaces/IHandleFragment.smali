.class public interface abstract Lcom/molihuan/pathselector/interfaces/IHandleFragment;
.super Ljava/lang/Object;
.source "IHandleFragment.java"


# virtual methods
.method public abstract getHandleItemListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHandleListAdapter()Lcom/molihuan/pathselector/adapter/HandleListAdapter;
.end method

.method public abstract refreshHandleList()V
.end method
