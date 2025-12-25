.class public Lpubgm/loader/Component/DownC;
.super Landroid/os/AsyncTask;
.source "DownC.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private animationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private isSameVersion:Z

.field private percentageText:Landroid/widget/TextView;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    .line 42
    const-string v0, "myKey"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/Component/DownC;->prefs:Landroid/content/SharedPreferences;

    .line 43
    return-void
.end method

.method private clearDirectory(Ljava/io/File;)V
    .locals 5
    .param p1, "directory"    # Ljava/io/File;

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 208
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 209
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 210
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    invoke-direct {p0, v3}, Lpubgm/loader/Component/DownC;->clearDirectory(Ljava/io/File;)V

    goto :goto_1

    .line 213
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 209
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method

.method private extractZipFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "destinationDir"    # Ljava/io/File;

    .line 221
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 222
    .local v0, "zipFileObj":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->isEncrypted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {}, Lpubgm/loader/Component/DownC;->password()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "extractionPassword":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/ZipFile;->setPassword([C)V

    .line 227
    .end local v1    # "extractionPassword":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/ZipFile;->extractAll(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v0    # "zipFileObj":Lnet/lingala/zip4j/ZipFile;
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static native password()Ljava/lang/String;
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpubgm/loader/Component/DownC;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 31
    .param p1, "urls"    # [Ljava/lang/String;

    .line 66
    move-object/from16 v1, p0

    const-string v2, "bypassVersion"

    const/4 v3, 0x0

    aget-object v4, p1, v3

    .line 67
    .local v4, "jsonUrl":Ljava/lang/String;
    const-string v5, ""

    .line 71
    .local v5, "zipUrl":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 72
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 73
    .local v7, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 75
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    .line 76
    .local v8, "reader":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 78
    .local v9, "jsonBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    move-object v10, v0

    .local v10, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    :try_start_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 200
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "jsonBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object/from16 v20, v4

    goto/16 :goto_a

    .line 81
    .restart local v6    # "url":Ljava/net/URL;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "jsonBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v11, v0

    .line 84
    .local v11, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 87
    .local v12, "newBypassVersion":I
    const-string v0, "mainURL"

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-object v5, v0

    .line 88
    if-eqz v5, :cond_e

    :try_start_3
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object/from16 v20, v4

    move-object/from16 v27, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v8

    goto/16 :goto_9

    .line 93
    :cond_1
    iget-object v0, v1, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    move-object v13, v0

    .line 94
    .local v13, "cacheDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v14, "updateparrot.zip"

    invoke-direct {v0, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 95
    .local v14, "tempFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v15, "parrot.zip"

    invoke-direct {v0, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v15, v0

    .line 98
    .local v15, "finalFile":Ljava/io/File;
    const/16 v16, 0x1

    .line 99
    .local v16, "needsDownload":Z
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    if-eqz v0, :cond_3

    .line 101
    :try_start_4
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, v15}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 102
    .local v0, "zipCheck":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->isValidZipFile()Z

    move-result v17
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v17, :cond_2

    .line 103
    const/16 v16, 0x0

    .line 108
    .end local v0    # "zipCheck":Lnet/lingala/zip4j/ZipFile;
    :cond_2
    goto :goto_1

    .line 105
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    :try_start_6
    iget-object v0, v1, Lpubgm/loader/Component/DownC;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    move/from16 v17, v0

    .line 113
    .local v17, "currentVersion":I
    const/4 v0, 0x1

    move/from16 v3, v17

    .end local v17    # "currentVersion":I
    .local v3, "currentVersion":I
    if-ne v12, v3, :cond_5

    if-eqz v16, :cond_4

    goto :goto_2

    .line 189
    :cond_4
    :try_start_7
    iput-boolean v0, v1, Lpubgm/loader/Component/DownC;->isSameVersion:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move/from16 v26, v3

    move-object/from16 v20, v4

    move-object/from16 v27, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v8

    goto/16 :goto_7

    .line 114
    :cond_5
    :goto_2
    :try_start_8
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v17, :cond_6

    .line 115
    :try_start_9
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 117
    :cond_6
    :try_start_a
    iget-object v0, v1, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Lpubgm/loader/Component/DownC;->clearDirectory(Ljava/io/File;)V

    .line 118
    iget-object v0, v1, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {v1, v0}, Lpubgm/loader/Component/DownC;->clearDirectory(Ljava/io/File;)V

    .line 121
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v0

    .line 122
    .local v18, "downloadUrl":Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 123
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 125
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    move/from16 v19, v0

    .line 126
    .local v19, "fileLength":I
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    move-object/from16 v20, v0

    .line 127
    .local v20, "input":Ljava/io/InputStream;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v21, v0

    .line 129
    .local v21, "output":Ljava/io/OutputStream;
    const/16 v0, 0x1000

    new-array v0, v0, [B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    move-object/from16 v22, v0

    .line 130
    .local v22, "data":[B
    const-wide/16 v23, 0x0

    .line 132
    .local v23, "total":J
    const/16 v25, 0x1

    .line 135
    .local v25, "downloadSuccess":Z
    :goto_3
    move/from16 v26, v3

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v22

    .end local v22    # "data":[B
    .local v3, "input":Ljava/io/InputStream;
    .local v4, "data":[B
    .local v20, "jsonUrl":Ljava/lang/String;
    .local v26, "currentVersion":I
    :try_start_b
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move/from16 v22, v0

    move-object/from16 v27, v5

    .end local v5    # "zipUrl":Ljava/lang/String;
    .local v22, "count":I
    .local v27, "zipUrl":Ljava/lang/String;
    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    .line 136
    move/from16 v0, v22

    move-object/from16 v22, v6

    .end local v6    # "url":Ljava/net/URL;
    .local v0, "count":I
    .local v22, "url":Ljava/net/URL;
    int-to-long v5, v0

    add-long v23, v23, v5

    .line 137
    const/4 v5, 0x1

    :try_start_c
    new-array v6, v5, [Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const-wide/16 v28, 0x64

    mul-long v28, v28, v23

    move-object/from16 v30, v7

    move/from16 v5, v19

    move-object/from16 v19, v8

    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v5, "fileLength":I
    .local v19, "reader":Ljava/io/BufferedReader;
    .local v30, "connection":Ljava/net/HttpURLConnection;
    int-to-long v7, v5

    :try_start_d
    div-long v7, v28, v7

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v6}, Lpubgm/loader/Component/DownC;->publishProgress([Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 138
    move-object/from16 v6, v21

    .end local v21    # "output":Ljava/io/OutputStream;
    .local v6, "output":Ljava/io/OutputStream;
    :try_start_e
    invoke-virtual {v6, v4, v8, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v21, v6

    move-object/from16 v8, v19

    move-object/from16 v6, v22

    move-object/from16 v7, v30

    move-object/from16 v22, v4

    move/from16 v19, v5

    move-object/from16 v4, v20

    move-object/from16 v5, v27

    move-object/from16 v20, v3

    move/from16 v3, v26

    goto :goto_3

    .line 140
    .end local v0    # "count":I
    :catch_2
    move-exception v0

    goto :goto_4

    .line 144
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v21    # "output":Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    move-object/from16 v6, v21

    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto/16 :goto_8

    .line 140
    .end local v6    # "output":Ljava/io/OutputStream;
    .restart local v21    # "output":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object/from16 v6, v21

    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v6    # "output":Ljava/io/OutputStream;
    goto :goto_4

    .line 144
    .end local v5    # "fileLength":I
    .end local v6    # "output":Ljava/io/OutputStream;
    .end local v30    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .local v19, "fileLength":I
    .restart local v21    # "output":Ljava/io/OutputStream;
    :catchall_1
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v19, v8

    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v5    # "fileLength":I
    .restart local v6    # "output":Ljava/io/OutputStream;
    .local v19, "reader":Ljava/io/BufferedReader;
    .restart local v30    # "connection":Ljava/net/HttpURLConnection;
    goto/16 :goto_8

    .line 140
    .end local v5    # "fileLength":I
    .end local v6    # "output":Ljava/io/OutputStream;
    .end local v30    # "connection":Ljava/net/HttpURLConnection;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .local v19, "fileLength":I
    .restart local v21    # "output":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object/from16 v30, v7

    move/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v19, v8

    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v5    # "fileLength":I
    .restart local v6    # "output":Ljava/io/OutputStream;
    .local v19, "reader":Ljava/io/BufferedReader;
    .restart local v30    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_4

    .line 144
    .end local v5    # "fileLength":I
    .end local v30    # "connection":Ljava/net/HttpURLConnection;
    .local v6, "url":Ljava/net/URL;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .local v19, "fileLength":I
    .restart local v21    # "output":Ljava/io/OutputStream;
    .local v22, "count":I
    :cond_7
    move-object/from16 v30, v7

    move/from16 v5, v19

    move/from16 v0, v22

    move-object/from16 v22, v6

    move-object/from16 v19, v8

    move-object/from16 v6, v21

    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v21    # "output":Ljava/io/OutputStream;
    .restart local v0    # "count":I
    .restart local v5    # "fileLength":I
    .local v6, "output":Ljava/io/OutputStream;
    .local v19, "reader":Ljava/io/BufferedReader;
    .local v22, "url":Ljava/net/URL;
    .restart local v30    # "connection":Ljava/net/HttpURLConnection;
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    .line 146
    goto :goto_5

    .line 144
    .end local v0    # "count":I
    .end local v22    # "url":Ljava/net/URL;
    .end local v27    # "zipUrl":Ljava/lang/String;
    .end local v30    # "connection":Ljava/net/HttpURLConnection;
    .local v5, "zipUrl":Ljava/lang/String;
    .local v6, "url":Ljava/net/URL;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .local v19, "fileLength":I
    .restart local v21    # "output":Ljava/io/OutputStream;
    :catchall_2
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v22, v6

    move-object/from16 v30, v7

    move/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v19, v8

    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v21    # "output":Ljava/io/OutputStream;
    .local v5, "fileLength":I
    .local v6, "output":Ljava/io/OutputStream;
    .local v19, "reader":Ljava/io/BufferedReader;
    .restart local v22    # "url":Ljava/net/URL;
    .restart local v27    # "zipUrl":Ljava/lang/String;
    .restart local v30    # "connection":Ljava/net/HttpURLConnection;
    goto/16 :goto_8

    .line 140
    .end local v22    # "url":Ljava/net/URL;
    .end local v27    # "zipUrl":Ljava/lang/String;
    .end local v30    # "connection":Ljava/net/HttpURLConnection;
    .local v5, "zipUrl":Ljava/lang/String;
    .local v6, "url":Ljava/net/URL;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .local v19, "fileLength":I
    .restart local v21    # "output":Ljava/io/OutputStream;
    :catch_5
    move-exception v0

    move-object/from16 v27, v5

    move-object/from16 v22, v6

    move-object/from16 v30, v7

    move/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v19, v8

    .line 141
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v21    # "output":Ljava/io/OutputStream;
    .local v0, "e":Ljava/lang/Exception;
    .local v5, "fileLength":I
    .local v6, "output":Ljava/io/OutputStream;
    .local v19, "reader":Ljava/io/BufferedReader;
    .restart local v22    # "url":Ljava/net/URL;
    .restart local v27    # "zipUrl":Ljava/lang/String;
    .restart local v30    # "connection":Ljava/net/HttpURLConnection;
    :goto_4
    const/16 v25, 0x0

    .line 142
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 146
    nop

    .line 149
    :goto_5
    if-eqz v25, :cond_c

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    const-wide/16 v28, 0x0

    cmp-long v0, v7, v28

    if-lez v0, :cond_c

    .line 152
    :try_start_12
    new-instance v0, Lnet/lingala/zip4j/ZipFile;

    invoke-direct {v0, v14}, Lnet/lingala/zip4j/ZipFile;-><init>(Ljava/io/File;)V

    .line 153
    .local v0, "zipCheck":Lnet/lingala/zip4j/ZipFile;
    invoke-virtual {v0}, Lnet/lingala/zip4j/ZipFile;->isValidZipFile()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 155
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 156
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 159
    :cond_8
    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 161
    iget-object v7, v1, Lpubgm/loader/Component/DownC;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 162
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v7, v2, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 164
    const/4 v2, 0x0

    iput-boolean v2, v1, Lpubgm/loader/Component/DownC;->isSameVersion:Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 165
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    nop

    .line 175
    .end local v0    # "zipCheck":Lnet/lingala/zip4j/ZipFile;
    nop

    .line 183
    :try_start_13
    invoke-static {}, Lpubgm/loader/server/ApiServer;->activity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 184
    .local v0, "DeviceInfo":Ljava/lang/Class;
    iget-object v2, v1, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, v1, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    .line 187
    .end local v0    # "DeviceInfo":Ljava/lang/Class;
    goto :goto_6

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 188
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "data":[B
    .end local v5    # "fileLength":I
    .end local v6    # "output":Ljava/io/OutputStream;
    .end local v18    # "downloadUrl":Ljava/net/URL;
    .end local v23    # "total":J
    .end local v25    # "downloadSuccess":Z
    :goto_6
    move-object/from16 v7, v30

    .line 193
    .end local v30    # "connection":Ljava/net/HttpURLConnection;
    .local v7, "connection":Ljava/net/HttpURLConnection;
    :goto_7
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 194
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v15, v0}, Lpubgm/loader/Component/DownC;->extractZipFile(Ljava/io/File;Ljava/io/File;)V

    .line 195
    const-string v0, "SUCCESS"

    return-object v0

    .line 197
    :cond_9
    const-string v0, "FILE_NOT_FOUND"
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    return-object v0

    .line 166
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .local v0, "zipCheck":Lnet/lingala/zip4j/ZipFile;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "data":[B
    .restart local v5    # "fileLength":I
    .restart local v6    # "output":Ljava/io/OutputStream;
    .restart local v18    # "downloadUrl":Ljava/net/URL;
    .restart local v23    # "total":J
    .restart local v25    # "downloadSuccess":Z
    .restart local v30    # "connection":Ljava/net/HttpURLConnection;
    :cond_a
    :try_start_15
    const-string v2, "RENAME_FAILED"

    return-object v2

    .line 169
    :cond_b
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 170
    const-string v2, "INVALID_ZIP"
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    return-object v2

    .line 172
    .end local v0    # "zipCheck":Lnet/lingala/zip4j/ZipFile;
    :catch_7
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    :try_start_16
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 174
    const-string v2, "VERIFY_FAILED"

    return-object v2

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 178
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 180
    :cond_d
    const-string v0, "DOWNLOAD_FAILED"

    return-object v0

    .line 144
    :catchall_3
    move-exception v0

    :goto_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 145
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 146
    nop

    .end local v20    # "jsonUrl":Ljava/lang/String;
    .end local v27    # "zipUrl":Ljava/lang/String;
    .end local p1    # "urls":[Ljava/lang/String;
    throw v0

    .line 200
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v6    # "output":Ljava/io/OutputStream;
    .end local v9    # "jsonBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "newBypassVersion":I
    .end local v13    # "cacheDir":Ljava/io/File;
    .end local v14    # "tempFile":Ljava/io/File;
    .end local v15    # "finalFile":Ljava/io/File;
    .end local v16    # "needsDownload":Z
    .end local v18    # "downloadUrl":Ljava/net/URL;
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "url":Ljava/net/URL;
    .end local v23    # "total":J
    .end local v25    # "downloadSuccess":Z
    .end local v26    # "currentVersion":I
    .end local v30    # "connection":Ljava/net/HttpURLConnection;
    .local v4, "jsonUrl":Ljava/lang/String;
    .local v5, "zipUrl":Ljava/lang/String;
    .restart local p1    # "urls":[Ljava/lang/String;
    :catch_8
    move-exception v0

    move-object/from16 v20, v4

    move-object/from16 v27, v5

    .end local v4    # "jsonUrl":Ljava/lang/String;
    .end local v5    # "zipUrl":Ljava/lang/String;
    .restart local v20    # "jsonUrl":Ljava/lang/String;
    .restart local v27    # "zipUrl":Ljava/lang/String;
    goto :goto_a

    .line 88
    .end local v20    # "jsonUrl":Ljava/lang/String;
    .end local v27    # "zipUrl":Ljava/lang/String;
    .restart local v4    # "jsonUrl":Ljava/lang/String;
    .restart local v5    # "zipUrl":Ljava/lang/String;
    .local v6, "url":Ljava/net/URL;
    .restart local v7    # "connection":Ljava/net/HttpURLConnection;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "jsonBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "newBypassVersion":I
    :cond_e
    move-object/from16 v20, v4

    move-object/from16 v27, v5

    move-object/from16 v22, v6

    move-object/from16 v19, v8

    .line 89
    .end local v4    # "jsonUrl":Ljava/lang/String;
    .end local v5    # "zipUrl":Ljava/lang/String;
    .end local v6    # "url":Ljava/net/URL;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "jsonUrl":Ljava/lang/String;
    .restart local v22    # "url":Ljava/net/URL;
    .restart local v27    # "zipUrl":Ljava/lang/String;
    :goto_9
    const-string v0, "INVALID_URL"
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    return-object v0

    .line 200
    .end local v7    # "connection":Ljava/net/HttpURLConnection;
    .end local v9    # "jsonBuilder":Ljava/lang/StringBuilder;
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    .end local v12    # "newBypassVersion":I
    .end local v19    # "reader":Ljava/io/BufferedReader;
    .end local v22    # "url":Ljava/net/URL;
    :catch_9
    move-exception v0

    move-object/from16 v5, v27

    goto :goto_a

    .end local v20    # "jsonUrl":Ljava/lang/String;
    .end local v27    # "zipUrl":Ljava/lang/String;
    .restart local v4    # "jsonUrl":Ljava/lang/String;
    .restart local v5    # "zipUrl":Ljava/lang/String;
    :catch_a
    move-exception v0

    move-object/from16 v20, v4

    .line 201
    .end local v4    # "jsonUrl":Ljava/lang/String;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v20    # "jsonUrl":Ljava/lang/String;
    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lpubgm/loader/Component/DownC;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "INVALID_ZIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "INVALID_URL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "FILE_NOT_FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "DOWNLOAD_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_4
    const-string v0, "SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "RENAME_FAILED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 270
    const-string v0, "ERROR:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    const-string v2, "Download Failed!"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 267
    :pswitch_0
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    const-string v2, "Invalid download URL. Please check configuration."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    goto :goto_2

    .line 264
    :pswitch_1
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    const-string v2, "Required files not found. Please try again."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 265
    goto :goto_2

    .line 261
    :pswitch_2
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    const-string v2, "Failed to process download. Please try again."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 262
    goto :goto_2

    .line 258
    :pswitch_3
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    const-string v2, "Downloaded file is corrupted. Please try again."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 259
    goto :goto_2

    .line 255
    :pswitch_4
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    const-string v2, "Download failed. Please check your connection."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 256
    goto :goto_2

    .line 245
    :pswitch_5
    iget-boolean v0, p0, Lpubgm/loader/Component/DownC;->isSameVersion:Z

    if-eqz v0, :cond_1

    .line 247
    :try_start_0
    invoke-static {}, Lpubgm/loader/server/ApiServer;->activity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 248
    .local v0, "DeviceInfo":Ljava/lang/Class;
    iget-object v1, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "DeviceInfo":Ljava/lang/Class;
    goto :goto_2

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 275
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6df227a2 -> :sswitch_5
        -0x447f341d -> :sswitch_4
        -0x17465c2c -> :sswitch_3
        0x14a25bd3 -> :sswitch_2
        0x479732e7 -> :sswitch_1
        0x47974499 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPreExecute()V
    .locals 3

    .line 47
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lpubgm/loader/Component/DownC;->context:Landroid/content/Context;

    const v2, 0x1030011

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    .line 48
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 49
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 50
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 52
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 53
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 54
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 55
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 58
    :cond_0
    iget-object v1, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    const v2, 0x7f0a00e9

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lpubgm/loader/Component/DownC;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 59
    iget-object v1, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    const v2, 0x7f0a02ab

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lpubgm/loader/Component/DownC;->percentageText:Landroid/widget/TextView;

    .line 61
    iget-object v1, p0, Lpubgm/loader/Component/DownC;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 62
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "progress"    # [Ljava/lang/Integer;

    .line 235
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->percentageText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v0, p0, Lpubgm/loader/Component/DownC;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 237
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lpubgm/loader/Component/DownC;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
