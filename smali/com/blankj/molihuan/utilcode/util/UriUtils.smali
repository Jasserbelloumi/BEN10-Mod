.class public final Lcom/blankj/molihuan/utilcode/util/UriUtils;
.super Ljava/lang/Object;
.source "UriUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyUri2Cache(Landroid/net/Uri;)Ljava/io/File;
    .locals 6
    .param p0, "uri"    # Landroid/net/Uri;

    .line 320
    const-string v0, "UriUtils"

    const-string v1, "copyUri2Cache() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v0, 0x0

    .line 323
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 324
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->writeFileFromIS(Ljava/lang/String;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    nop

    .line 331
    if-eqz v0, :cond_0

    .line 333
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    goto :goto_0

    .line 334
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 326
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v1

    .line 331
    .end local v1    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 327
    :catch_1
    move-exception v1

    .line 328
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    const/4 v2, 0x0

    .line 331
    if-eqz v0, :cond_1

    .line 333
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 336
    goto :goto_1

    .line 334
    :catch_2
    move-exception v3

    .line 335
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 329
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v2

    .line 331
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v0, :cond_2

    .line 333
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 336
    goto :goto_3

    .line 334
    :catch_3
    move-exception v2

    .line 335
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v1
.end method

.method public static file2Uri(Ljava/io/File;)Landroid/net/Uri;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .line 58
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".utilcode.fileprovider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "authority":Ljava/lang/String;
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0, p0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 63
    .end local v0    # "authority":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "code"    # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getFileFromUri(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "code"    # Ljava/lang/String;

    .line 275
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.apps.photos.content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 277
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.tencent.mtt.fileprovider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 283
    .local v1, "fileDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/QQBrowser"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 281
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "fileDir":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.huawei.hidisk.fileprovider"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 286
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 287
    .restart local v0    # "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 288
    new-instance v1, Ljava/io/File;

    const-string v2, "/root"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 285
    .end local v0    # "path":Ljava/lang/String;
    :cond_3
    :goto_0
    nop

    .line 292
    :cond_4
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 294
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const-string v3, "UriUtils"

    if-nez v1, :cond_5

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " parse failed(cursor is null). -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v2

    .line 299
    :cond_5
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 300
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "columnIndex":I
    const/4 v4, -0x1

    if-le v0, v4, :cond_6

    .line 302
    new-instance v4, Ljava/io/File;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 302
    return-object v4

    .line 304
    :cond_6
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parse failed(columnIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is wrong). -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    nop

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 305
    return-object v2

    .line 308
    .end local v0    # "columnIndex":I
    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " parse failed(moveToFirst return false). -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    nop

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 309
    return-object v2

    .line 315
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parse failed. -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    nop

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 313
    return-object v2

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 316
    throw v0
.end method

.method public static res2Uri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "resPath"    # Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static uri2Bytes(Landroid/net/Uri;)[B
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .line 348
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 349
    :cond_0
    const/4 v1, 0x0

    .line 351
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 352
    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->inputStream2Bytes(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    if-eqz v1, :cond_1

    .line 360
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    goto :goto_0

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 352
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-object v0

    .line 358
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 353
    :catch_1
    move-exception v2

    .line 354
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 355
    const-string v3, "UriUtils"

    const-string/jumbo v4, "uri to bytes failed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    nop

    .line 358
    if-eqz v1, :cond_2

    .line 360
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 363
    goto :goto_1

    .line 361
    :catch_2
    move-exception v3

    .line 362
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 356
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v0

    .line 358
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v1, :cond_3

    .line 360
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 363
    goto :goto_3

    .line 361
    :catch_3
    move-exception v2

    .line 362
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    .end local v2    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    throw v0
.end method

.method public static uri2File(Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 74
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->uri2FileReal(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 76
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    return-object v0

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->copyUri2Cache(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static uri2FileNoCacheCopy(Landroid/net/Uri;)Ljava/io/File;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .line 87
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->uri2FileReal(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static uri2FileReal(Landroid/net/Uri;)Ljava/io/File;
    .locals 26
    .param p0, "uri"    # Landroid/net/Uri;

    .line 98
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UriUtils"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "authority":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "path":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v6, "/"

    const/4 v7, 0x0

    const/16 v9, 0x18

    if-lt v0, v9, :cond_7

    if-eqz v5, :cond_7

    .line 103
    const-string v0, "/external/"

    const-string v9, "/external_path/"

    filled-new-array {v0, v9}, [Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "externals":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 105
    .local v9, "file":Ljava/io/File;
    array-length v10, v0

    const/4 v11, 0x0

    :goto_0
    const-string v12, " -> "

    if-ge v11, v10, :cond_2

    aget-object v13, v0, v11

    .line 106
    .local v13, "external":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 107
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 108
    invoke-virtual {v5, v13, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v14

    .line 109
    .end local v9    # "file":Ljava/io/File;
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-object v8

    .line 109
    :cond_0
    move-object v9, v8

    .line 105
    .end local v8    # "file":Ljava/io/File;
    .end local v13    # "external":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 115
    :cond_2
    const/4 v8, 0x0

    .line 116
    .end local v9    # "file":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    const-string v9, "/files_path/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 117
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 118
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    goto/16 :goto_1

    .line 119
    :cond_3
    const-string v9, "/cache_path/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 120
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 121
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    goto :goto_1

    .line 122
    :cond_4
    const-string v9, "/external_files_path/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 123
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 124
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    goto :goto_1

    .line 125
    :cond_5
    const-string v9, "/external_cache_path/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 126
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 127
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v10

    .line 129
    :cond_6
    :goto_1
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v8

    .line 134
    .end local v0    # "externals":[Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    :cond_7
    const-string v0, "file"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    if-eqz v5, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 136
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " parse failed. -> 0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-object v7

    .line 139
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    const-string v9, "content"

    if-lt v0, v8, :cond_1e

    .line 140
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 141
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v8, ":"

    const/4 v10, 0x1

    if-eqz v0, :cond_11

    .line 142
    invoke-static/range {p0 .. p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "docId":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, "split":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v11, v8, v0

    .line 145
    .local v11, "type":Ljava/lang/String;
    const-string v0, "primary"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 146
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v6, v8, v10

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 150
    :cond_a
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v12, "storage"

    invoke-virtual {v0, v12}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/os/storage/StorageManager;

    .line 152
    .local v12, "mStorageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    const-string v0, "android.os.storage.StorageVolume"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 153
    .local v0, "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string v14, "getVolumeList"

    const/4 v15, 0x0

    new-array v7, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 154
    .local v7, "getVolumeList":Ljava/lang/reflect/Method;
    const-string v13, "getUuid"

    new-array v14, v15, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 155
    .local v13, "getUuid":Ljava/lang/reflect/Method;
    const-string v14, "getState"

    new-array v10, v15, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 156
    .local v10, "getState":Ljava/lang/reflect/Method;
    const-string v14, "getPath"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    :try_start_1
    new-array v5, v15, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 157
    .local v5, "getPath":Ljava/lang/reflect/Method;
    const-string v14, "isPrimary"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v18, v9

    .end local v9    # "docId":Ljava/lang/String;
    .local v18, "docId":Ljava/lang/String;
    :try_start_2
    new-array v9, v15, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 158
    .local v9, "isPrimary":Ljava/lang/reflect/Method;
    const-string v14, "isEmulated"

    new-array v1, v15, [Ljava/lang/Class;

    invoke-virtual {v0, v14, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 160
    .local v1, "isEmulated":Ljava/lang/reflect/Method;
    new-array v14, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 162
    .local v14, "result":Ljava/lang/Object;
    invoke-static {v14}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v15

    .line 163
    .local v15, "length":I
    const/16 v19, 0x0

    move-object/from16 v20, v0

    move/from16 v0, v19

    .local v0, "i":I
    .local v20, "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-ge v0, v15, :cond_10

    .line 164
    invoke-static {v14, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v19

    .line 167
    .local v21, "storageVolumeElement":Ljava/lang/Object;
    move-object/from16 v19, v7

    .end local v7    # "getVolumeList":Ljava/lang/reflect/Method;
    .local v19, "getVolumeList":Ljava/lang/reflect/Method;
    const-string v7, "mounted"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    const/4 v12, 0x0

    .end local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    .end local v14    # "result":Ljava/lang/Object;
    .local v22, "mStorageManager":Landroid/os/storage/StorageManager;
    .local v23, "result":Ljava/lang/Object;
    :try_start_3
    new-array v14, v12, [Ljava/lang/Object;

    move-object/from16 v12, v21

    .end local v21    # "storageVolumeElement":Ljava/lang/Object;
    .local v12, "storageVolumeElement":Ljava/lang/Object;
    invoke-virtual {v10, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "mounted_ro"

    move/from16 v21, v15

    const/4 v14, 0x0

    .end local v15    # "length":I
    .local v21, "length":I
    new-array v15, v14, [Ljava/lang/Object;

    .line 168
    invoke-virtual {v10, v12, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    .line 167
    .end local v21    # "length":I
    .restart local v15    # "length":I
    :cond_c
    move/from16 v21, v15

    .line 168
    .end local v15    # "length":I
    .restart local v21    # "length":I
    :goto_3
    const/4 v7, 0x1

    .line 171
    .local v7, "mounted":Z
    :goto_4
    if-nez v7, :cond_d

    move-object/from16 v24, v1

    goto :goto_5

    .line 174
    :cond_d
    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v9, v12, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    .line 175
    invoke-virtual {v1, v12, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 176
    move-object/from16 v24, v1

    goto :goto_5

    .line 179
    :cond_e
    const/4 v14, 0x0

    new-array v15, v14, [Ljava/lang/Object;

    invoke-virtual {v13, v12, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 181
    .local v14, "uuid":Ljava/lang/String;
    if-eqz v14, :cond_f

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 182
    new-instance v15, Ljava/io/File;

    move-object/from16 v24, v1

    .end local v1    # "isEmulated":Ljava/lang/reflect/Method;
    .local v24, "isEmulated":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v7

    const/4 v7, 0x0

    .end local v7    # "mounted":Z
    .local v25, "mounted":Z
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v12, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v6, 0x1

    aget-object v6, v8, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v15

    .line 181
    .end local v24    # "isEmulated":Ljava/lang/reflect/Method;
    .end local v25    # "mounted":Z
    .restart local v1    # "isEmulated":Ljava/lang/reflect/Method;
    .restart local v7    # "mounted":Z
    :cond_f
    move-object/from16 v24, v1

    move/from16 v25, v7

    .line 163
    .end local v1    # "isEmulated":Ljava/lang/reflect/Method;
    .end local v7    # "mounted":Z
    .end local v12    # "storageVolumeElement":Ljava/lang/Object;
    .end local v14    # "uuid":Ljava/lang/String;
    .restart local v24    # "isEmulated":Ljava/lang/reflect/Method;
    :goto_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v19

    move/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v14, v23

    move-object/from16 v1, v24

    goto/16 :goto_2

    .line 185
    .end local v0    # "i":I
    .end local v5    # "getPath":Ljava/lang/reflect/Method;
    .end local v9    # "isPrimary":Ljava/lang/reflect/Method;
    .end local v10    # "getState":Ljava/lang/reflect/Method;
    .end local v13    # "getUuid":Ljava/lang/reflect/Method;
    .end local v19    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v20    # "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "length":I
    .end local v23    # "result":Ljava/lang/Object;
    .end local v24    # "isEmulated":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    goto :goto_6

    .line 163
    .end local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    .restart local v0    # "i":I
    .restart local v1    # "isEmulated":Ljava/lang/reflect/Method;
    .restart local v5    # "getPath":Ljava/lang/reflect/Method;
    .local v7, "getVolumeList":Ljava/lang/reflect/Method;
    .restart local v9    # "isPrimary":Ljava/lang/reflect/Method;
    .restart local v10    # "getState":Ljava/lang/reflect/Method;
    .local v12, "mStorageManager":Landroid/os/storage/StorageManager;
    .restart local v13    # "getUuid":Ljava/lang/reflect/Method;
    .local v14, "result":Ljava/lang/Object;
    .restart local v15    # "length":I
    .restart local v20    # "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    move-object/from16 v24, v1

    move-object/from16 v19, v7

    move-object/from16 v22, v12

    move-object/from16 v23, v14

    move/from16 v21, v15

    .line 187
    .end local v0    # "i":I
    .end local v1    # "isEmulated":Ljava/lang/reflect/Method;
    .end local v5    # "getPath":Ljava/lang/reflect/Method;
    .end local v7    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v9    # "isPrimary":Ljava/lang/reflect/Method;
    .end local v10    # "getState":Ljava/lang/reflect/Method;
    .end local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    .end local v13    # "getUuid":Ljava/lang/reflect/Method;
    .end local v14    # "result":Ljava/lang/Object;
    .end local v15    # "length":I
    .end local v20    # "storageVolumeClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    goto :goto_7

    .line 185
    .end local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    .restart local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    :catch_1
    move-exception v0

    move-object/from16 v22, v12

    .end local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    .restart local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    goto :goto_6

    .end local v18    # "docId":Ljava/lang/String;
    .end local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    .local v9, "docId":Ljava/lang/String;
    .restart local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    :catch_2
    move-exception v0

    move-object/from16 v18, v9

    move-object/from16 v22, v12

    .end local v9    # "docId":Ljava/lang/String;
    .end local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    .restart local v18    # "docId":Ljava/lang/String;
    .restart local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    goto :goto_6

    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "docId":Ljava/lang/String;
    .end local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    .local v5, "path":Ljava/lang/String;
    .restart local v9    # "docId":Ljava/lang/String;
    .restart local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    :catch_3
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    move-object/from16 v22, v12

    .line 186
    .end local v5    # "path":Ljava/lang/String;
    .end local v9    # "docId":Ljava/lang/String;
    .end local v12    # "mStorageManager":Landroid/os/storage/StorageManager;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v17    # "path":Ljava/lang/String;
    .restart local v18    # "docId":Ljava/lang/String;
    .restart local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " parse failed. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " -> 1_0"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v22    # "mStorageManager":Landroid/os/storage/StorageManager;
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parse failed. -> 1_0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 192
    .end local v8    # "split":[Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    .end local v17    # "path":Ljava/lang/String;
    .end local v18    # "docId":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_11
    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 193
    invoke-static/range {p0 .. p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " parse failed(id is null). -> 1_1"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v1, 0x0

    return-object v1

    .line 198
    :cond_12
    const-string v1, "raw:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 199
    new-instance v1, Ljava/io/File;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 200
    :cond_13
    const-string v1, "msf:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 201
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    aget-object v0, v1, v5

    move-object v1, v0

    goto :goto_8

    .line 200
    :cond_14
    move-object v1, v0

    .line 204
    .end local v0    # "id":Ljava/lang/String;
    .local v1, "id":Ljava/lang/String;
    :goto_8
    const-wide/16 v5, 0x0

    .line 206
    .local v5, "availableId":J
    :try_start_4
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-wide v5, v7

    .line 209
    nop

    .line 211
    const-string v0, "content://downloads/public_downloads"

    const-string v7, "content://downloads/all_downloads"

    const-string v8, "content://downloads/my_downloads"

    filled-new-array {v0, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 217
    .local v7, "contentUriPrefixesToTry":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v8, :cond_16

    aget-object v10, v7, v9

    .line 218
    .local v10, "contentUriPrefix":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 220
    .local v11, "contentUri":Landroid/net/Uri;
    :try_start_5
    const-string v0, "1_1"

    invoke-static {v11, v0}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 221
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_15

    .line 222
    return-object v0

    .line 225
    .end local v0    # "file":Ljava/io/File;
    :cond_15
    goto :goto_a

    .line 224
    :catch_4
    move-exception v0

    .line 217
    .end local v10    # "contentUriPrefix":Ljava/lang/String;
    .end local v11    # "contentUri":Landroid/net/Uri;
    :goto_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 228
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " parse failed. -> 1_1"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v2, 0x0

    return-object v2

    .line 207
    .end local v7    # "contentUriPrefixesToTry":[Ljava/lang/String;
    :catch_5
    move-exception v0

    const/4 v2, 0x0

    move-object v7, v0

    move-object v0, v7

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    return-object v2

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "id":Ljava/lang/String;
    .end local v5    # "availableId":J
    :cond_17
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 232
    invoke-static/range {p0 .. p0}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "docId":Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "split":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v1, v5

    .line 236
    .local v6, "type":Ljava/lang/String;
    const-string v5, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 237
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .local v2, "contentUri":Landroid/net/Uri;
    goto :goto_b

    .line 238
    .end local v2    # "contentUri":Landroid/net/Uri;
    :cond_18
    const-string/jumbo v5, "video"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 239
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .restart local v2    # "contentUri":Landroid/net/Uri;
    goto :goto_b

    .line 240
    .end local v2    # "contentUri":Landroid/net/Uri;
    :cond_19
    const-string v5, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 241
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 246
    .restart local v2    # "contentUri":Landroid/net/Uri;
    :goto_b
    const-string v5, "_id=?"

    .line 247
    .local v5, "selection":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aget-object v7, v1, v7

    const/4 v9, 0x0

    aput-object v7, v8, v9

    move-object v7, v8

    .line 248
    .local v7, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    const-string v9, "1_2"

    invoke-static {v2, v8, v7, v9}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    return-object v8

    .line 243
    .end local v2    # "contentUri":Landroid/net/Uri;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " parse failed. -> 1_2"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v2, 0x0

    return-object v2

    .line 250
    .end local v0    # "docId":Ljava/lang/String;
    .end local v1    # "split":[Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    :cond_1b
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 251
    const-string v0, "1_3"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 254
    :cond_1c
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " parse failed. -> 1_4"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v2, 0x0

    return-object v2

    .line 140
    .end local v17    # "path":Ljava/lang/String;
    .local v5, "path":Ljava/lang/String;
    :cond_1d
    move-object/from16 v17, v5

    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    goto :goto_c

    .line 139
    .end local v17    # "path":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_1e
    move-object/from16 v17, v5

    .line 258
    .end local v5    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    :goto_c
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 259
    const-string v0, "2"

    invoke-static {v1, v0}, Lcom/blankj/molihuan/utilcode/util/UriUtils;->getFileFromUri(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 262
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " parse failed. -> 3"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v2, 0x0

    return-object v2
.end method
