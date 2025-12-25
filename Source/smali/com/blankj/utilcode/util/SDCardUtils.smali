.class public final Lcom/blankj/utilcode/util/SDCardUtils;
.super Ljava/lang/Object;
.source "SDCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getExternalAvailableSize()J
    .locals 2

    .line 144
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->getSDCardPathByEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getExternalTotalSize()J
    .locals 2

    .line 135
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->getSDCardPathByEnvironment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsTotalSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInternalAvailableSize()J
    .locals 2

    .line 162
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInternalTotalSize()J
    .locals 2

    .line 153
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->getFsTotalSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMountedSDCardPath()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->getSDCardInfo()Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "sdCardInfo":Ljava/util/List;, "Ljava/util/List<Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;

    .line 119
    .local v3, "cardInfo":Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;
    invoke-static {v3}, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->access$000(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "state":Ljava/lang/String;
    if-nez v4, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    invoke-static {v3}, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;->access$100(Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v3    # "cardInfo":Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;
    .end local v4    # "state":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 125
    :cond_3
    return-object v0

    .line 117
    :cond_4
    :goto_1
    return-object v0
.end method

.method public static getSDCardInfo()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 57
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;>;"
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v2, "storage"

    invoke-virtual {v0, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 58
    .local v2, "sm":Landroid/os/storage/StorageManager;
    if-nez v2, :cond_0

    return-object v1

    .line 59
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const-string v4, "getPath"

    const/4 v5, 0x0

    if-lt v0, v3, :cond_2

    .line 60
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v3

    .line 63
    .local v3, "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :try_start_0
    const-class v0, Landroid/os/storage/StorageVolume;

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 64
    .local v0, "getPathMethod":Ljava/lang/reflect/Method;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageVolume;

    .line 65
    .local v6, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    .line 66
    .local v7, "isRemovable":Z
    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "state":Ljava/lang/String;
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 68
    .local v9, "path":Ljava/lang/String;
    new-instance v10, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;

    invoke-direct {v10, v9, v8, v7}, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    nop

    .end local v6    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v7    # "isRemovable":Z
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "path":Ljava/lang/String;
    goto :goto_0

    .line 64
    .end local v0    # "getPathMethod":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2

    .line 72
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 70
    :catch_2
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    nop

    .line 77
    .end local v3    # "storageVolumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/StorageVolume;>;"
    :goto_2
    goto/16 :goto_5

    .line 79
    :cond_2
    :try_start_1
    const-string v0, "android.os.storage.StorageVolume"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 82
    .local v3, "getPathMethod":Ljava/lang/reflect/Method;
    const-string v4, "isRemovable"

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 84
    .local v4, "isRemovableMethod":Ljava/lang/reflect/Method;
    const-class v6, Landroid/os/storage/StorageManager;

    const-string v7, "getVolumeState"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    invoke-virtual {v6, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 86
    .local v6, "getVolumeStateMethod":Ljava/lang/reflect/Method;
    const-class v7, Landroid/os/storage/StorageManager;

    const-string v9, "getVolumeList"

    new-array v10, v5, [Ljava/lang/Class;

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 87
    .local v7, "getVolumeListMethod":Ljava/lang/reflect/Method;
    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 88
    .local v9, "result":Ljava/lang/Object;
    invoke-static {v9}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v10

    .line 89
    .local v10, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    if-ge v11, v10, :cond_3

    .line 90
    invoke-static {v9, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    .line 91
    .local v12, "storageVolumeElement":Ljava/lang/Object;
    new-array v13, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 92
    .local v13, "path":Ljava/lang/String;
    new-array v14, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 93
    .local v14, "isRemovable":Z
    new-array v15, v8, [Ljava/lang/Object;

    aput-object v13, v15, v5

    invoke-virtual {v6, v2, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 94
    .local v15, "state":Ljava/lang/String;
    new-instance v5, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;

    invoke-direct {v5, v13, v15, v14}, Lcom/blankj/utilcode/util/SDCardUtils$SDCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 89
    nop

    .end local v12    # "storageVolumeElement":Ljava/lang/Object;
    .end local v13    # "path":Ljava/lang/String;
    .end local v14    # "isRemovable":Z
    .end local v15    # "state":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_3

    .end local v0    # "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "getPathMethod":Ljava/lang/reflect/Method;
    .end local v4    # "isRemovableMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getVolumeStateMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getVolumeListMethod":Ljava/lang/reflect/Method;
    .end local v9    # "result":Ljava/lang/Object;
    .end local v10    # "length":I
    .end local v11    # "i":I
    :cond_3
    goto :goto_4

    .line 102
    :catch_3
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_5

    .line 100
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_4

    .line 98
    :catch_5
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_4

    .line 96
    :catch_6
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    nop

    .line 106
    :goto_5
    return-object v1
.end method

.method public static getSDCardPathByEnvironment()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-static {}, Lcom/blankj/utilcode/util/SDCardUtils;->isSDCardEnableByEnvironment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static isSDCardEnableByEnvironment()Z
    .locals 2

    .line 35
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
