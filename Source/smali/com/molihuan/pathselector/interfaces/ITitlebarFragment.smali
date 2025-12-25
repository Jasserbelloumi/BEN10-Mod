.class public interface abstract Lcom/molihuan/pathselector/interfaces/ITitlebarFragment;
.super Ljava/lang/Object;
.source "ITitlebarFragment.java"


# virtual methods
.method public abstract getMorePopupAdapter()Lcom/molihuan/pathselector/adapter/MorePopupAdapter;
.end method

.method public abstract getMorePopupItemListeners()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/listener/CommonItemListener;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlyOneMorePopupTextView()Landroid/widget/TextView;
.end method

.method public abstract refreshMorePopup()V
.end method
