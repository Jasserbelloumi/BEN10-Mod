.class public Lcom/molihuan/pathselector/utils/FileTools;
.super Ljava/lang/Object;
.source "FileTools.java"


# static fields
.field public static final ERROR_GETTING_FILE_SIZE:Ljava/lang/String; = "-1b"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeFileSize(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/blankj/molihuan/utilcode/util/ConvertUtils;->byte2FitMemorySize(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 30
    :cond_1
    :goto_0
    const-string v0, "-1b"

    return-object v0
.end method

.method public static getChildrenNumber(Landroidx/documentfile/provider/DocumentFile;)[I
    .locals 6
    .param p0, "file"    # Landroidx/documentfile/provider/DocumentFile;

    .line 190
    invoke-virtual {p0}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    .line 191
    .local v0, "files":[Landroidx/documentfile/provider/DocumentFile;
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 192
    .local v1, "numbers":[I
    if-eqz v0, :cond_1

    .line 193
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 194
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroidx/documentfile/provider/DocumentFile;->isFile()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 195
    const/4 v3, 0x0

    aget v5, v1, v3

    add-int/2addr v5, v4

    aput v5, v1, v3

    goto :goto_1

    .line 197
    :cond_0
    aget v3, v1, v4

    add-int/2addr v3, v4

    aput v3, v1, v4

    .line 193
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_1
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getChildrenNumber(Ljava/io/File;)[I
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 176
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 177
    .local v1, "numbers":[I
    if-eqz v0, :cond_1

    .line 178
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 179
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 180
    const/4 v3, 0x0

    aget v5, v1, v3

    add-int/2addr v5, v4

    aput v5, v1, v3

    goto :goto_1

    .line 182
    :cond_0
    aget v3, v1, v4

    add-int/2addr v3, v4

    aput v3, v1, v4

    .line 178
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_1
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getChildrenNumber(Ljava/lang/String;)[I
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 169
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 170
    .local v0, "file":Ljava/io/File;
    const-string v1, "FileTools.getChildrenNumber\u7684file\u4e3anull"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 171
    invoke-static {v0}, Lcom/molihuan/pathselector/utils/FileTools;->getChildrenNumber(Ljava/io/File;)[I

    move-result-object v1

    return-object v1
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 43
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/FileTools;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 47
    invoke-static {p0}, Lcom/molihuan/pathselector/utils/FileTools;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 48
    return-object v1

    .line 50
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 51
    .local v0, "lastPoi":I
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 52
    .local v2, "lastSep":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ge v2, v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getFileName(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 211
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/FileTools;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 215
    invoke-static {p0}, Lcom/molihuan/pathselector/utils/FileTools;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const-string v0, ""

    return-object v0

    .line 218
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, "lastSep":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move-object v1, p0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getParentPath(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 63
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/FileTools;->getParentPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getParentPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/molihuan/pathselector/utils/FileTools;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 68
    return-object v1

    .line 70
    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "lastSep":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static isUnderDir(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "targetPath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/molihuan/pathselector/utils/FileTools;->isUnderDir(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isUnderDir(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "targetPath"    # Ljava/lang/String;
    .param p1, "parentPath"    # Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/molihuan/pathselector/utils/FileTools;->isUnderDir(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static isUnderDir(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "targetPath"    # Ljava/lang/String;
    .param p1, "parentPath"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 128
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    sget-object p1, Lcom/molihuan/pathselector/utils/MConstants;->PATH_ANRROID_OBB:Ljava/lang/String;

    .line 134
    goto :goto_0

    .line 130
    :pswitch_1
    sget-object p1, Lcom/molihuan/pathselector/utils/MConstants;->PATH_ANRROID_DATA:Ljava/lang/String;

    .line 131
    nop

    .line 137
    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static needUseUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 81
    invoke-static {p0}, Lcom/molihuan/pathselector/utils/FileTools;->underAndroidDataUseUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/molihuan/pathselector/utils/FileTools;->underAndroidObbUseUri(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static selectTypeCompliance(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "selectType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 156
    .local p1, "selectFileTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static stringIsEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 224
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static underAndroidDataUseUri(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid11()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 93
    return v1

    .line 96
    :cond_0
    const/16 v0, 0x72

    invoke-static {p0, v0}, Lcom/molihuan/pathselector/utils/FileTools;->isUnderDir(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    return v1

    .line 99
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static underAndroidObbUseUri(Ljava/lang/String;)Z
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid11()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    return v1

    .line 114
    :cond_0
    const/16 v0, 0x73

    invoke-static {p0, v0}, Lcom/molihuan/pathselector/utils/FileTools;->isUnderDir(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    return v1

    .line 117
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
