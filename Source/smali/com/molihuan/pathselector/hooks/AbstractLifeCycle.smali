.class public abstract Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;
.super Ljava/lang/Object;
.source "AbstractLifeCycle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAfterUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Lcom/molihuan/pathselector/adapter/FileListAdapter;",
            ")V"
        }
    .end annotation
.end method

.method public onBeforeUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V
    .locals 0
    .param p2, "fileAdapter"    # Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Lcom/molihuan/pathselector/adapter/FileListAdapter;",
            ")V"
        }
    .end annotation

    .line 23
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    return-void
.end method
