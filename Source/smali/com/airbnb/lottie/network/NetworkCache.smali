.class public Lcom/airbnb/lottie/network/NetworkCache;
.super Ljava/lang/Object;
.source "NetworkCache.java"


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private static filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "extension"    # Lcom/airbnb/lottie/network/FileExtension;
    .param p2, "isTemp"    # Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lottie_cache_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\W+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/network/FileExtension;->tempExtension()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/airbnb/lottie/network/FileExtension;->extension:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedFile(Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v0, "jsonFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    return-object v0

    .line 134
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    invoke-static {p1, v4, v3}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v1, "zipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    return-object v1

    .line 138
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private parentDir()Ljava/io/File;
    .locals 3

    .line 142
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/airbnb/lottie/network/NetworkCache;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "lottie_network_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 146
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 149
    :cond_1
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 6

    .line 29
    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v0

    .line 30
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 32
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 34
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 33
    .end local v5    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 39
    .end local v1    # "files":[Ljava/io/File;
    :cond_1
    return-void
.end method

.method fetch(Ljava/lang/String;)Landroidx/core/util/Pair;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/core/util/Pair<",
            "Lcom/airbnb/lottie/network/FileExtension;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/network/NetworkCache;->getCachedFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .local v1, "cachedFile":Ljava/io/File;
    nop

    .line 57
    if-nez v1, :cond_0

    .line 58
    return-object v0

    .line 63
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    .line 66
    .local v0, "inputStream":Ljava/io/FileInputStream;
    nop

    .line 69
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->ZIP:Lcom/airbnb/lottie/network/FileExtension;

    .local v2, "extension":Lcom/airbnb/lottie/network/FileExtension;
    goto :goto_0

    .line 72
    .end local v2    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    :cond_1
    sget-object v2, Lcom/airbnb/lottie/network/FileExtension;->JSON:Lcom/airbnb/lottie/network/FileExtension;

    .line 75
    .restart local v2    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache hit for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 76
    new-instance v3, Landroidx/core/util/Pair;

    invoke-direct {v3, v2, v0}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 64
    .end local v0    # "inputStream":Ljava/io/FileInputStream;
    .end local v2    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    :catch_0
    move-exception v2

    .line 65
    .local v2, "e":Ljava/io/FileNotFoundException;
    return-object v0

    .line 54
    .end local v1    # "cachedFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/FileNotFoundException;
    return-object v0
.end method

.method renameTempFile(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extension"    # Lcom/airbnb/lottie/network/FileExtension;

    .line 113
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".temp"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "newFileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v3, "newFile":Ljava/io/File;
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 118
    .local v4, "renamed":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying temp file to real file ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->debug(Ljava/lang/String;)V

    .line 119
    if-nez v4, :cond_0

    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to rename cache file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method writeTempCacheFile(Ljava/lang/String;Ljava/io/InputStream;Lcom/airbnb/lottie/network/FileExtension;)Ljava/io/File;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/InputStream;
    .param p3, "extension"    # Lcom/airbnb/lottie/network/FileExtension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/airbnb/lottie/network/NetworkCache;->filenameForUrl(Ljava/lang/String;Lcom/airbnb/lottie/network/FileExtension;Z)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/lottie/network/NetworkCache;->parentDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    .local v2, "output":Ljava/io/OutputStream;
    const/16 v3, 0x400

    :try_start_1
    new-array v3, v3, [B

    .line 94
    .local v3, "buffer":[B
    :goto_0
    invoke-virtual {p2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v5, v4

    .local v5, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 95
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v3    # "buffer":[B
    .end local v5    # "read":I
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    nop

    .line 103
    .end local v2    # "output":Ljava/io/OutputStream;
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 104
    nop

    .line 105
    return-object v1

    .line 100
    .restart local v2    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "stream":Ljava/io/InputStream;
    .end local p3    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 103
    .end local v2    # "output":Ljava/io/OutputStream;
    .restart local v0    # "fileName":Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local p1    # "url":Ljava/lang/String;
    .restart local p2    # "stream":Ljava/io/InputStream;
    .restart local p3    # "extension":Lcom/airbnb/lottie/network/FileExtension;
    :catchall_1
    move-exception v2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw v2
.end method
