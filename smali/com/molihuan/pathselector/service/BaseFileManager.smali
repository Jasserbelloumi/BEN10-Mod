.class public abstract Lcom/molihuan/pathselector/service/BaseFileManager;
.super Ljava/lang/Object;
.source "BaseFileManager.java"

# interfaces
.implements Lcom/molihuan/pathselector/service/IFileDataManager;


# static fields
.field public static final TYPE_REFRESH_FILE:I = 0x1

.field public static final TYPE_REFRESH_FILE_TABBAR:I = 0x3

.field public static final TYPE_REFRESH_TABBAR:I = 0x2


# instance fields
.field protected mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

.field protected mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

.field protected mLifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/service/BaseFileManager;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    .line 38
    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    iput-object v0, p0, Lcom/molihuan/pathselector/service/BaseFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    .line 39
    iget-object v0, p0, Lcom/molihuan/pathselector/service/BaseFileManager;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->lifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    iput-object v0, p0, Lcom/molihuan/pathselector/service/BaseFileManager;->mLifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    return-void
.end method


# virtual methods
.method public clearFileListCache(Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .line 75
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    const-string v0, "fileList is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 76
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 76
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_1
    return-object p1
.end method

.method public clearTabbarListCache(Ljava/util/List;)Ljava/util/List;
    .locals 2
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

    .line 222
    .local p1, "tabbarList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/TabbarFileBean;>;"
    const-string/jumbo v0, "tabbarList is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 224
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/molihuan/pathselector/entity/TabbarFileBean;

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/TabbarFileBean;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 225
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 223
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_1
    return-object p1
.end method

.method public getSelectedFileList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
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

    .line 295
    .local p1, "allFileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    .local p2, "selectedList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    invoke-virtual {p0, p2}, Lcom/molihuan/pathselector/service/BaseFileManager;->initSelectedFileList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 296
    const-string v0, "allFileList is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/molihuan/pathselector/entity/FileBean;

    .line 298
    .local v1, "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getBoxChecked()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getBoxChecked()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    .end local v1    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :cond_0
    goto :goto_0

    .line 302
    :cond_1
    return-object p2
.end method

.method public initFileList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "currentPath"    # Ljava/lang/String;
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

    .line 44
    .local p2, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    if-nez p2, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/molihuan/pathselector/utils/FileTools;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "parentPath":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 63
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-virtual {v1, v0}, Lcom/molihuan/pathselector/entity/FileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 65
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :pswitch_0
    new-instance v1, Lcom/molihuan/pathselector/entity/FileBean;

    const-wide/16 v3, -0x1523

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "..."

    invoke-direct {v1, v0, v4, v3}, Lcom/molihuan/pathselector/entity/FileBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    .local v1, "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    iget-object v3, p0, Lcom/molihuan/pathselector/service/BaseFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    const-string v4, "This is back filebean item"

    invoke-virtual {v3, v2, v4, v1}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;->getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/entity/FileBean;->setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 60
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_1

    .line 65
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 66
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public initSelectedFileList(Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    .line 285
    .local p1, "selectedList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    if-nez p1, :cond_0

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    goto :goto_0

    .line 288
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 290
    :goto_0
    return-object p1
.end method

.method public initTabbarList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "initPath"    # Ljava/lang/String;
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

    .line 204
    .local p2, "tabbarList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/TabbarFileBean;>;"
    if-nez p2, :cond_0

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v0

    .line 208
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 213
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :pswitch_0
    goto :goto_1

    .line 213
    .restart local v0    # "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 214
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshFileTabbar(Lcom/molihuan/pathselector/adapter/FileListAdapter;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;I)V
    .locals 2
    .param p1, "fileAdapter"    # Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .param p2, "tabbarAdapter"    # Lcom/molihuan/pathselector/adapter/TabbarListAdapter;
    .param p3, "level"    # I

    .line 176
    packed-switch p3, :pswitch_data_0

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter does not conform to a predefined value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/molihuan/pathselector/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 194
    invoke-virtual {p2}, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;->notifyDataSetChanged()V

    .line 195
    goto :goto_1

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 184
    :pswitch_1
    if-nez p2, :cond_2

    .line 185
    return-void

    .line 187
    :cond_2
    invoke-virtual {p2}, Lcom/molihuan/pathselector/adapter/TabbarListAdapter;->notifyDataSetChanged()V

    .line 188
    goto :goto_1

    .line 178
    :pswitch_2
    if-nez p1, :cond_3

    .line 179
    return-void

    .line 181
    :cond_3
    invoke-virtual {p1}, Lcom/molihuan/pathselector/adapter/FileListAdapter;->notifyDataSetChanged()V

    .line 182
    nop

    .line 200
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public returnDataToActivityResult(Ljava/util/List;Landroid/app/Activity;)V
    .locals 4
    .param p2, "activity"    # Landroid/app/Activity;
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

    .line 308
    .local p1, "selectedFileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v0, "selectedPath":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/molihuan/pathselector/entity/FileBean;

    .line 310
    .local v2, "bean":Lcom/molihuan/pathselector/entity/FileBean;
    invoke-virtual {v2}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v2    # "bean":Lcom/molihuan/pathselector/entity/FileBean;
    goto :goto_0

    .line 312
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 313
    .local v1, "result":Landroid/content/Intent;
    const-string v2, "callback_data_arraylist_string_mlh"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 314
    const/4 v2, -0x1

    invoke-virtual {p2, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 315
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 316
    return-void
.end method

.method public setBoxChecked(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;
    .locals 6
    .param p2, "fileAdapter"    # Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .param p3, "state"    # Z
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

    .line 343
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 344
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/molihuan/pathselector/entity/FileBean;

    .line 346
    .local v1, "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 347
    goto :goto_2

    .line 350
    :cond_0
    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1523

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 351
    goto :goto_1

    .line 353
    :cond_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 343
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "i":I
    .end local v1    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :cond_2
    :goto_2
    return-object p1
.end method

.method public setCheckBoxVisible(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Z)Ljava/util/List;
    .locals 6
    .param p2, "fileAdapter"    # Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .param p3, "state"    # Z
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

    .line 322
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 323
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/molihuan/pathselector/entity/FileBean;

    .line 325
    .local v1, "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 326
    goto :goto_2

    .line 329
    :cond_0
    invoke-virtual {v1}, Lcom/molihuan/pathselector/entity/FileBean;->getSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1523

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 330
    goto :goto_1

    .line 332
    :cond_1
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 334
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 322
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v0    # "i":I
    .end local v1    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :cond_2
    :goto_2
    return-object p1
.end method

.method public sortFileList(Ljava/util/List;Lcom/molihuan/pathselector/utils/MConstants$SortRules;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p2, "sortType"    # Lcom/molihuan/pathselector/utils/MConstants$SortRules;
    .param p3, "currentPath"    # Ljava/lang/String;
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

    .line 86
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    new-instance v0, Lcom/molihuan/pathselector/service/BaseFileManager$1;

    invoke-direct {v0, p0, p2}, Lcom/molihuan/pathselector/service/BaseFileManager$1;-><init>(Lcom/molihuan/pathselector/service/BaseFileManager;Lcom/molihuan/pathselector/utils/MConstants$SortRules;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 163
    return-object p1
.end method

.method public updateTabbarList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/TabbarListAdapter;)Ljava/util/List;
    .locals 5
    .param p1, "initPath"    # Ljava/lang/String;
    .param p2, "currentPath"    # Ljava/lang/String;
    .param p4, "tabbarAdapter"    # Lcom/molihuan/pathselector/adapter/TabbarListAdapter;
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

    .line 235
    .local p3, "tabbarList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/TabbarFileBean;>;"
    invoke-virtual {p0, p2, p3}, Lcom/molihuan/pathselector/service/BaseFileManager;->initTabbarList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 237
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 246
    return-object p3

    .line 249
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 272
    new-instance v3, Lcom/molihuan/pathselector/entity/TabbarFileBean;

    invoke-direct {v3}, Lcom/molihuan/pathselector/entity/TabbarFileBean;-><init>()V

    aget-object v4, v0, v2

    .line 273
    invoke-virtual {v3, v4}, Lcom/molihuan/pathselector/entity/TabbarFileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/TabbarFileBean;

    move-result-object v3

    aget-object v4, v0, v2

    .line 274
    invoke-static {v4}, Lcom/molihuan/pathselector/utils/FileTools;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/molihuan/pathselector/entity/TabbarFileBean;->setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/TabbarFileBean;

    move-result-object v3

    const/4 v4, 0x0

    .line 275
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/molihuan/pathselector/entity/TabbarFileBean;->setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/TabbarFileBean;

    move-result-object v3

    .line 276
    .local v3, "tabbarBean":Lcom/molihuan/pathselector/entity/TabbarFileBean;
    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    .end local v2    # "i":I
    .end local v3    # "tabbarBean":Lcom/molihuan/pathselector/entity/TabbarFileBean;
    :cond_2
    return-object p3
.end method
