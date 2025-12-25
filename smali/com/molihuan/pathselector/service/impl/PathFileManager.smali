.class public Lcom/molihuan/pathselector/service/impl/PathFileManager;
.super Lcom/molihuan/pathselector/service/BaseFileManager;
.source "PathFileManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/molihuan/pathselector/service/BaseFileManager;-><init>()V

    return-void
.end method


# virtual methods
.method public updateFileList(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 17
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

    .line 26
    .local p4, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    .local p6, "fileTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual {v0, v3, v4}, Lcom/molihuan/pathselector/service/impl/PathFileManager;->initFileList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 28
    .end local p4    # "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    .local v4, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    iget-object v5, v0, Lcom/molihuan/pathselector/service/impl/PathFileManager;->mLifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    invoke-virtual {v5, v4, v1}, Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;->onBeforeUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V

    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 33
    .local v5, "cacheFileSize":I
    invoke-static/range {p3 .. p3}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 35
    .local v7, "file":Ljava/io/File;
    if-nez v7, :cond_0

    .line 36
    return-object v4

    .line 39
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    .line 41
    .local v8, "subFiles":[Ljava/io/File;
    const/4 v9, 0x0

    .line 44
    .local v9, "addNumber":I
    if-eqz v8, :cond_4

    .line 45
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v11, v8

    if-ge v10, v11, :cond_4

    .line 47
    aget-object v11, v8, v10

    invoke-static {v11}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->getFileExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "extension":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    aget-object v12, v8, v10

    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 51
    :cond_1
    const/4 v12, 0x0

    if-ge v9, v5, :cond_2

    .line 56
    add-int/lit8 v13, v9, 0x1

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/molihuan/pathselector/entity/FileBean;

    .line 57
    .local v13, "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    aget-object v14, v8, v10

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/molihuan/pathselector/entity/FileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 58
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 59
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setDir(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 60
    invoke-virtual {v14, v11}, Lcom/molihuan/pathselector/entity/FileBean;->setFileExtension(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 61
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v15

    aget v15, v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenFileNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 62
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v15

    aget v15, v15, v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenDirNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 63
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 64
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 65
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setModifyTime(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 66
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSize(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 67
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->computeFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSizeString(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 68
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/molihuan/pathselector/entity/FileBean;->setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    iget-object v14, v0, Lcom/molihuan/pathselector/service/impl/PathFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    aget-object v15, v8, v10

    .line 71
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    .line 70
    invoke-virtual {v14, v15, v11, v13}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;->getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/molihuan/pathselector/entity/FileBean;->setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    goto/16 :goto_1

    .line 78
    .end local v13    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :cond_2
    new-instance v13, Lcom/molihuan/pathselector/entity/FileBean;

    invoke-direct {v13}, Lcom/molihuan/pathselector/entity/FileBean;-><init>()V

    .line 79
    .restart local v13    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    aget-object v14, v8, v10

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/molihuan/pathselector/entity/FileBean;->setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 80
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 81
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setDir(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 82
    invoke-virtual {v14, v11}, Lcom/molihuan/pathselector/entity/FileBean;->setFileExtension(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 83
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v15

    aget v15, v15, v12

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenFileNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 84
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v15

    aget v15, v15, v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setChildrenDirNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 85
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 86
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 87
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setModifyTime(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 88
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSize(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    aget-object v15, v8, v10

    .line 89
    invoke-static {v15}, Lcom/molihuan/pathselector/utils/FileTools;->computeFileSize(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/molihuan/pathselector/entity/FileBean;->setSizeString(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v14

    .line 90
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v14, v12}, Lcom/molihuan/pathselector/entity/FileBean;->setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;

    move-result-object v12

    iget-object v14, v0, Lcom/molihuan/pathselector/service/impl/PathFileManager;->mFileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    aget-object v15, v8, v10

    .line 92
    invoke-virtual {v15}, Ljava/io/File;->isDirectory()Z

    move-result v15

    .line 91
    invoke-virtual {v14, v15, v11, v13}, Lcom/molihuan/pathselector/controller/AbstractFileBeanController;->getFileBeanImageResource(ZLjava/lang/String;Lcom/molihuan/pathselector/entity/FileBean;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Lcom/molihuan/pathselector/entity/FileBean;->setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;

    .line 97
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 45
    .end local v13    # "fileBean":Lcom/molihuan/pathselector/entity/FileBean;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 106
    .end local v10    # "i":I
    .end local v11    # "extension":Ljava/lang/String;
    :cond_4
    iget-object v6, v0, Lcom/molihuan/pathselector/service/impl/PathFileManager;->mLifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    invoke-virtual {v6, v4, v1}, Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;->onAfterUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V

    .line 108
    return-object v4
.end method
