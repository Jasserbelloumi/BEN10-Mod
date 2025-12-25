.class public interface abstract Lcom/molihuan/pathselector/interfaces/IFileShowFragment;
.super Ljava/lang/Object;
.source "IFileShowFragment.java"


# virtual methods
.method public abstract getCurrentPath()Ljava/lang/String;
.end method

.method public abstract getFileList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFileListAdapter()Lcom/molihuan/pathselector/adapter/FileListAdapter;
.end method

.method public abstract getSelectedFileList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isMultipleSelectionMode()Z
.end method

.method public abstract openCloseMultipleMode(Lcom/molihuan/pathselector/entity/FileBean;Z)V
.end method

.method public abstract openCloseMultipleMode(Z)V
.end method

.method public abstract refreshFileList()V
.end method

.method public abstract selectAllFile(Z)V
.end method

.method public abstract setInitPath(Ljava/lang/String;)V
.end method

.method public abstract updateFileList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateFileList(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method
