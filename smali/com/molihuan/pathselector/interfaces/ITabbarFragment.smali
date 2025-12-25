.class public interface abstract Lcom/molihuan/pathselector/interfaces/ITabbarFragment;
.super Ljava/lang/Object;
.source "ITabbarFragment.java"


# virtual methods
.method public abstract getTabbarList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabbarListAdapter()Lcom/molihuan/pathselector/adapter/TabbarListAdapter;
.end method

.method public abstract refreshTabbarList()V
.end method

.method public abstract updateTabbarList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateTabbarList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation
.end method
