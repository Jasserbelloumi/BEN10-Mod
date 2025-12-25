.class public interface abstract Lcom/molihuan/pathselector/service/IFileDataManager;
.super Ljava/lang/Object;
.source "IFileDataManager.java"


# virtual methods
.method public abstract clearFileListCache(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clearTabbarListCache(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedFileList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initFileList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initSelectedFileList(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initTabbarList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V
.end method

.method public abstract returnDataToActivityResult(Ljava/util/List;Landroid/app/Activity;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setBoxChecked(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Lcom/molihuan/pathselector/adapter/FileListAdapter;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCheckBoxVisible(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Lcom/molihuan/pathselector/adapter/FileListAdapter;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract sortFileList(Ljava/util/List;Lcom/molihuan/pathselector/utils/MConstants$SortRules;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Lcom/molihuan/pathselector/utils/MConstants$SortRules;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateFileList(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Lcom/molihuan/pathselector/adapter/FileListAdapter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateTabbarList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;",
            "Lcom/molihuan/pathselector/adapter/TabbarListAdapter;",
            ")",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/TabbarFileBean;",
            ">;"
        }
    .end annotation
.end method
