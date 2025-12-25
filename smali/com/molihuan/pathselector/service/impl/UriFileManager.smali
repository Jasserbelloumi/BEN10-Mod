.class public Lcom/molihuan/pathselector/service/impl/UriFileManager;
.super Lcom/molihuan/pathselector/service/BaseFileManager;
.source "UriFileManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/molihuan/pathselector/service/BaseFileManager;-><init>()V

    return-void
.end method


# virtual methods
.method public updateFileList(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 27
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "initPath"    # Ljava/lang/String;
    .param p3, "currentPath"    # Ljava/lang/String;
    .param p5, "fileAdapter"    # Lcom/molihuan/pathselector/adapter/FileListAdapter;
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

    .line 43
    .local p4, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    .local p6, "fileTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 45
    .local v10, "context":Landroid/content/Context;
    const-string v0, "context is null"

    invoke-static {v10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    move-object/from16 v0, p4

    invoke-virtual {v6, v7, v0}, Lcom/molihuan/pathselector/service/impl/UriFileManager;->initFileList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 49
    .end local p4    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    .local v11, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    iget-object v0, v6, Lcom/molihuan/pathselector/service/impl/UriFileManager;->mLifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    invoke-virtual {v0, v11, v8}, Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;->onBeforeUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V

    .line 52
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    .line 241
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    add-int/lit8 v12, v0, -0x1

    .line 55
    .local v12, "cacheFileSize":I
    sget-object v0, Lcom/molihuan/pathselector/utils/MConstants;->PATH_ANRROID_DATA:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    .line 112
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 55
    if-nez v0, :cond_8

    sget-object v0, Lcom/molihuan/pathselector/utils/MConstants;->PATH_ANRROID_OBB:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v24, v12

    goto/16 :goto_6

    .line 134
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/molihuan/pathselector/utils/FileTools;->underAndroidDataUseUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static/range {p3 .. p3}, Lcom/molihuan/pathselector/utils/FileTools;->underAndroidObbUseUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v24, v12

    goto/16 :goto_5

    .line 137
    :cond_2
    :goto_0
    invoke-static {v7, v3}, Lcom/molihuan/pathselector/utils/UriTools;->path2Uri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v13

    .line 139
    .local v13, "uri":Landroid/net/Uri;
    move-object/from16 v14, p1

    invoke-static {v13, v14}, Lcom/molihuan/pathselector/utils/PermissionsTools;->existsGrantedUriPermission(Landroid/net/Uri;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v15

    .line 141
    .local v15, "existsPermission":Ljava/lang/String;
    if-nez v15, :cond_3

    .line 143
    new-instance v16, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/molihuan/pathselector/service/impl/UriFileManager$1;-><init>(Lcom/molihuan/pathselector/service/impl/UriFileManager;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroidx/fragment/app/Fragment;)V

    invoke-static/range {v16 .. v16}, Lcom/xuexiang/xtask/XTask;->postToMain(Ljava/lang/Runnable;)Z

    .line 169
    return-object v11

    .line 179
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "content://com.android.externalstorage.documents"

    const-string v3, ""

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    .local v0, "targetUri":Landroid/net/Uri;
    invoke-static {v10, v0}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v1

    .line 184
    .local v1, "rootDocumentFile":Landroidx/documentfile/provider/DocumentFile;
    const-string/jumbo v3, "rootDocumentFile is null"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 187
    invoke-static {v10, v0}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v3

    .line 188
    .local v3, "pickedDir":Landroidx/documentfile/provider/DocumentFile;
    const-string v5, "pickedDir is null"

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v5

    .line 193
    .local v5, "documentFiles":[Landroidx/documentfile/provider/DocumentFile;
    const/16 v17, 0x0

    .line 196
    .local v17, "addNumber":I
    const/16 v18, 0x0

    move-object/from16 v19, v0

    move/from16 v0, v17

    move-object/from16 v17, v1

    move/from16 v1, v18

    .local v0, "addNumber":I
    .local v1, "i":I
    .local v17, "rootDocumentFile":Landroidx/documentfile/provider/DocumentFile;
    .local v19, "targetUri":Landroid/net/Uri;
    :goto_1
    move-object/from16 v18, v3

    .end local v3    # "pickedDir":Landroidx/documentfile/provider/DocumentFile;
    .local v18, "pickedDir":Landroidx/documentfile/provider/DocumentFile;
    array-length v3, v5

    if-ge v1, v3, :cond_7

    .line 198
    aget-object v3, v5, v1

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/molihuan/pathselector/utils/FileTools;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "extension":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    aget-object v20, v5, v1

    invoke-virtual/range {v20 .. v20}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v20

    if-eqz v20, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v24, v12

    move-object/from16 v20, v13

    move-object/from16 v23, v15

    goto/16 :goto_4

    .line 202
    :cond_5
    :goto_2
    move-object/from16 v20, v13

    .end local v13    # "uri":Landroid/net/Uri;
    .local v20, "uri":Landroid/net/Uri;
    const-string v13, "-1b"

    const-wide/16 v21, -0x1

    if-ge v0, v12, :cond_6

    .line 207
    add-int/lit8 v14, v0, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/molihuan/pathselector/entity/FileBean;

    .line 208
    .local v14, "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    move-object/from16 v23, v15

    .end local v15    # "existsPermission":Ljava/lang/String;
    .local v23, "existsPermission":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v24, v12

    .end local v12    # "cacheFileSize":I
    .local v24, "cacheFileSize":I
    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v15, v5, v1

    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/molihuan/pathselector/entity/FileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 209
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 210
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setDir(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 211
    invoke-virtual {v12, v3}, Lcom/molihuan/pathselector/entity/FileBean;->setFileExtension(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 212
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Landroidx/documentfile/provider/DocumentFile;)[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenFileNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 213
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Landroidx/documentfile/provider/DocumentFile;)[I

    move-result-object v15

    const/16 v25, 0x1

    aget v15, v15, v25

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenDirNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 214
    invoke-virtual {v12, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 215
    invoke-virtual {v12, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 216
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setModifyTime(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 217
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSize(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 218
    invoke-virtual {v12, v13}, Lcom/molihuan/pathselector/entity/FileBean;->setSizeString(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 219
    invoke-virtual {v12, v2}, Lcom/molihuan/pathselector/entity/FileBean;->setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v13, v5, v1

    .line 220
    invoke-virtual {v12, v13}, Lcom/molihuan/pathselector/entity/FileBean;->setDocumentFile(Landroidx/documentfile/provider/DocumentFile;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    iget-object v13, v6, Lcom/molihuan/pathselector/service/impl/UriFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    aget-object v15, v5, v1

    .line 222
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v15

    .line 221
    invoke-virtual {v13, v15, v3, v14}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;->getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/molihuan/pathselector/entity/FileBean;->setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    goto/16 :goto_3

    .line 229
    .end local v14    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    .end local v23    # "existsPermission":Ljava/lang/String;
    .end local v24    # "cacheFileSize":I
    .restart local v12    # "cacheFileSize":I
    .restart local v15    # "existsPermission":Ljava/lang/String;
    :cond_6
    move/from16 v24, v12

    move-object/from16 v23, v15

    .end local v12    # "cacheFileSize":I
    .end local v15    # "existsPermission":Ljava/lang/String;
    .restart local v23    # "existsPermission":Ljava/lang/String;
    .restart local v24    # "cacheFileSize":I
    new-instance v12, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-direct {v12}, Lcom/molihuan/pathselector/entity/FileBean;-><init>()V

    move-object v14, v12

    .line 230
    .restart local v14    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v15, v5, v1

    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/molihuan/pathselector/entity/FileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 231
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 232
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setDir(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 233
    invoke-virtual {v12, v3}, Lcom/molihuan/pathselector/entity/FileBean;->setFileExtension(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 234
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Landroidx/documentfile/provider/DocumentFile;)[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenFileNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 235
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Landroidx/documentfile/provider/DocumentFile;)[I

    move-result-object v15

    const/16 v25, 0x1

    aget v15, v15, v25

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenDirNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 236
    invoke-virtual {v12, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 237
    invoke-virtual {v12, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v15, v5, v1

    .line 238
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->lastModified()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setModifyTime(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 239
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSize(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 240
    invoke-virtual {v12, v13}, Lcom/molihuan/pathselector/entity/FileBean;->setSizeString(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    .line 241
    invoke-virtual {v12, v2}, Lcom/molihuan/pathselector/entity/FileBean;->setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    aget-object v13, v5, v1

    .line 242
    invoke-virtual {v12, v13}, Lcom/molihuan/pathselector/entity/FileBean;->setDocumentFile(Landroidx/documentfile/provider/DocumentFile;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    iget-object v13, v6, Lcom/molihuan/pathselector/service/impl/UriFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    aget-object v15, v5, v1

    .line 244
    invoke-virtual {v15}, Landroidx/documentfile/provider/DocumentFile;->isDirectory()Z

    move-result v15

    .line 243
    invoke-virtual {v13, v15, v3, v14}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;->getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/molihuan/pathselector/entity/FileBean;->setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 249
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 196
    .end local v14    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v14, p1

    move-object/from16 v3, v18

    move-object/from16 v13, v20

    move-object/from16 v15, v23

    move/from16 v12, v24

    goto/16 :goto_1

    .end local v3    # "extension":Ljava/lang/String;
    .end local v20    # "uri":Landroid/net/Uri;
    .end local v23    # "existsPermission":Ljava/lang/String;
    .end local v24    # "cacheFileSize":I
    .restart local v12    # "cacheFileSize":I
    .restart local v13    # "uri":Landroid/net/Uri;
    .restart local v15    # "existsPermission":Ljava/lang/String;
    :cond_7
    move/from16 v24, v12

    move-object/from16 v20, v13

    move-object/from16 v23, v15

    .line 258
    .end local v0    # "addNumber":I
    .end local v1    # "i":I
    .end local v5    # "documentFiles":[Landroidx/documentfile/provider/DocumentFile;
    .end local v12    # "cacheFileSize":I
    .end local v13    # "uri":Landroid/net/Uri;
    .end local v15    # "existsPermission":Ljava/lang/String;
    .end local v17    # "rootDocumentFile":Landroidx/documentfile/provider/DocumentFile;
    .end local v18    # "pickedDir":Landroidx/documentfile/provider/DocumentFile;
    .end local v19    # "targetUri":Landroid/net/Uri;
    .restart local v24    # "cacheFileSize":I
    :goto_5
    iget-object v0, v6, Lcom/molihuan/pathselector/service/impl/UriFileManager;->mLifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    invoke-virtual {v0, v11, v8}, Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;->onAfterUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V

    .line 260
    return-object v11

    .line 55
    .end local v24    # "cacheFileSize":I
    .restart local v12    # "cacheFileSize":I
    :cond_8
    move/from16 v24, v12

    .line 57
    .end local v12    # "cacheFileSize":I
    .restart local v24    # "cacheFileSize":I
    :goto_6
    invoke-static {v10}, Lcom/molihuan/pathselector/utils/UriTools;->getAndroidDataPackageNames(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 58
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 62
    new-instance v3, Ljava/io/File;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v3, "tempSubFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 70
    .end local v2    # "i":I
    .end local v3    # "tempSubFile":Ljava/io/File;
    :cond_a
    const/4 v2, 0x0

    .line 73
    .local v2, "addNumber":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_e

    .line 74
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 76
    .local v5, "tempSubFile":Ljava/io/File;
    invoke-static {v5}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    .line 78
    .local v12, "extension":Ljava/lang/String;
    if-eqz v9, :cond_c

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v9, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_b

    goto :goto_9

    :cond_b
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move/from16 v13, v24

    const/16 v16, 0x1

    goto/16 :goto_b

    .line 80
    :cond_c
    :goto_9
    move/from16 v13, v24

    .end local v24    # "cacheFileSize":I
    .local v13, "cacheFileSize":I
    if-ge v2, v13, :cond_d

    .line 85
    add-int/lit8 v14, v2, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/molihuan/pathselector/entity/FileBean;

    .line 86
    .restart local v14    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v15

    .line 87
    move-object/from16 v17, v0

    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/molihuan/pathselector/entity/FileBean;->setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 88
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setDir(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v12}, Lcom/molihuan/pathselector/entity/FileBean;->setFileExtension(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 90
    invoke-static {v5}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenFileNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 91
    invoke-static {v5}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v15

    const/16 v18, 0x1

    aget v15, v15, v18

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenDirNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setModifyTime(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 95
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSize(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 96
    invoke-static {v5}, Lcom/molihuan/pathselector/utils/FileTools;->computeFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSizeString(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    iget-object v15, v6, Lcom/molihuan/pathselector/service/impl/UriFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    .line 99
    move-object/from16 v18, v1

    .end local v1    # "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .local v18, "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    .line 98
    invoke-virtual {v15, v1, v12, v14}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;->getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    const/16 v16, 0x1

    goto/16 :goto_a

    .line 105
    .end local v14    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    .end local v17    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_d
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v17    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-direct {v0}, Lcom/molihuan/pathselector/entity/FileBean;-><init>()V

    move-object v14, v0

    .line 106
    .restart local v14    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/molihuan/pathselector/entity/FileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 107
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 108
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setDir(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v12}, Lcom/molihuan/pathselector/entity/FileBean;->setFileExtension(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 110
    invoke-static {v5}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v1

    const/4 v15, 0x0

    aget v1, v1, v15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenFileNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 111
    invoke-static {v5}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v1

    const/16 v16, 0x1

    aget v1, v1, v16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenDirNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 113
    invoke-virtual {v0, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 114
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setModifyTime(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setSize(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 116
    invoke-static {v5}, Lcom/molihuan/pathselector/utils/FileTools;->computeFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setSizeString(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v4}, Lcom/molihuan/pathselector/entity/FileBean;->setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v0

    iget-object v1, v6, Lcom/molihuan/pathselector/service/impl/UriFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    .line 118
    invoke-virtual {v1, v15, v12, v14}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;->getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/molihuan/pathselector/entity/FileBean;->setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 124
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :goto_a
    add-int/lit8 v2, v2, 0x1

    .line 73
    .end local v14    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move/from16 v24, v13

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    goto/16 :goto_8

    .end local v5    # "tempSubFile":Ljava/io/File;
    .end local v12    # "extension":Ljava/lang/String;
    .end local v13    # "cacheFileSize":I
    .end local v17    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "subFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v24    # "cacheFileSize":I
    :cond_e
    move-object/from16 v17, v0

    .line 130
    .end local v0    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "i":I
    .restart local v17    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, v6, Lcom/molihuan/pathselector/service/impl/UriFileManager;->mLifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    invoke-virtual {v0, v11, v8}, Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;->onAfterUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V

    .line 132
    return-object v11
.end method
