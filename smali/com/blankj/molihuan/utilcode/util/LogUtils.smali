.class public final Lcom/blankj/molihuan/utilcode/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/molihuan/utilcode/util/LogUtils$LogFormatter;,
        Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;,
        Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;,
        Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;,
        Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;,
        Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;,
        Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;,
        Lcom/blankj/molihuan/utilcode/util/LogUtils$TYPE;
    }
.end annotation


# static fields
.field public static final A:I = 0x7

.field private static final ARGS:Ljava/lang/String; = "args"

.field private static final BOTTOM_BORDER:Ljava/lang/String; = "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final BOTTOM_CORNER:Ljava/lang/String; = "\u2514"

.field private static final CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

.field public static final D:I = 0x3

.field public static final E:I = 0x6

.field private static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static final FILE:I = 0x10

.field private static final FILE_SEP:Ljava/lang/String;

.field public static final I:I = 0x4

.field private static final I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/Class;",
            "Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private static final JSON:I = 0x20

.field private static final LEFT_BORDER:Ljava/lang/String; = "\u2502 "

.field private static final LINE_SEP:Ljava/lang/String;

.field private static final MAX_LEN:I = 0x44c

.field private static final MIDDLE_BORDER:Ljava/lang/String; = "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final MIDDLE_CORNER:Ljava/lang/String; = "\u251c"

.field private static final MIDDLE_DIVIDER:Ljava/lang/String; = "\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

.field private static final NOTHING:Ljava/lang/String; = "log nothing"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final PLACEHOLDER:Ljava/lang/String; = " "

.field private static final SIDE_DIVIDER:Ljava/lang/String; = "\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final T:[C

.field private static final TOP_BORDER:Ljava/lang/String; = "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

.field private static final TOP_CORNER:Ljava/lang/String; = "\u250c"

.field public static final V:I = 0x2

.field public static final W:I = 0x5

.field private static final XML:I = 0x30

.field private static simpleDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->T:[C

    .line 82
    const-string v0, "file.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;

    .line 83
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;-><init>(Lcom/blankj/molihuan/utilcode/util/LogUtils$1;)V

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 106
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;

    return-void

    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x41s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs a([Ljava/lang/Object;)V
    .locals 2
    .param p0, "contents"    # [Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1, v0, p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public static varargs aTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "contents"    # [Ljava/lang/Object;

    .line 161
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->FILE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;

    .line 62
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getTypeClassFromParadigm(Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Landroidx/collection/SimpleArrayMap;
    .locals 1

    .line 62
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;

    return-object v0
.end method

.method static synthetic access$1300()[C
    .locals 1

    .line 62
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->T:[C

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 62
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 62
    invoke-static {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2File(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 62
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->isMatchLogFileName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static createOrExistsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;

    .line 536
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    return v1

    .line 538
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->createOrExistsDir(Ljava/io/File;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 540
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->deleteDueLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 542
    .local v1, "isCreate":Z
    if-eqz v1, :cond_2

    .line 543
    invoke-static {p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_2
    return v1

    .line 546
    .end local v1    # "isCreate":Z
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 548
    return v2
.end method

.method public static varargs d([Ljava/lang/Object;)V
    .locals 2
    .param p0, "contents"    # [Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1, v0, p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public static varargs dTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "contents"    # [Ljava/lang/Object;

    .line 129
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method private static deleteDueLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;

    .line 553
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getSaveDays()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    .line 554
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 556
    .local v2, "parentFile":Ljava/io/File;
    new-instance v3, Lcom/blankj/molihuan/utilcode/util/LogUtils$3;

    invoke-direct {v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils$3;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 562
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_4

    array-length v4, v3

    if-gtz v4, :cond_1

    goto :goto_2

    .line 563
    :cond_1
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "yyyy_MM_dd"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 565
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getSaveDays()I

    move-result v0

    int-to-long v7, v0

    const-wide/32 v9, 0x5265c00

    mul-long/2addr v7, v9

    sub-long/2addr v5, v7

    .line 566
    .local v5, "dueMillis":J
    array-length v0, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_3

    aget-object v8, v3, v7

    .line 567
    .local v8, "aFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 569
    .local v10, "l":I
    invoke-static {v9}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->findDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 570
    .local v11, "logDay":Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    cmp-long v12, v12, v5

    if-gtz v12, :cond_2

    .line 571
    sget-object v12, Lcom/blankj/molihuan/utilcode/util/LogUtils;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v13, Lcom/blankj/molihuan/utilcode/util/LogUtils$4;

    invoke-direct {v13, v8}, Lcom/blankj/molihuan/utilcode/util/LogUtils$4;-><init>(Ljava/io/File;)V

    invoke-interface {v12, v13}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v8    # "aFile":Ljava/io/File;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "l":I
    .end local v11    # "logDay":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 584
    .end local v5    # "dueMillis":J
    :cond_3
    goto :goto_1

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 585
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_1
    return-void

    .line 562
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_2
    return-void
.end method

.method public static varargs e([Ljava/lang/Object;)V
    .locals 2
    .param p0, "contents"    # [Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0, p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method public static varargs eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "contents"    # [Ljava/lang/Object;

    .line 153
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public static file(ILjava/lang/Object;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "content"    # Ljava/lang/Object;

    .line 169
    or-int/lit8 v0, p0, 0x10

    sget-object v1, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    return-void
.end method

.method public static file(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/Object;

    .line 177
    or-int/lit8 v0, p0, 0x10

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public static file(Ljava/lang/Object;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v2, 0x13

    invoke-static {v2, v0, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public static file(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/Object;

    .line 173
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0x13

    invoke-static {v1, p0, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method private static findDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .line 592
    const-string v0, "[0-9]{4}_[0-9]{2}_[0-9]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 593
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 594
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 595
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 597
    :cond_0
    const-string v2, ""

    return-object v2
.end method

.method private static formatObject(ILjava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I
    .param p1, "object"    # Ljava/lang/Object;

    .line 354
    if-nez p1, :cond_0

    const-string v0, "null"

    return-object v0

    .line 355
    :cond_0
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    invoke-static {p1, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 356
    :cond_1
    const/16 v0, 0x30

    if-ne p0, v0, :cond_2

    invoke-static {p1, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_2
    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 361
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 362
    :cond_0
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->I_FORMATTER_MAP:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 363
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getClassFromObject(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;

    .line 364
    .local v0, "iFormatter":Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;
    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0, p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 368
    .end local v0    # "iFormatter":Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;
    :cond_1
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$LogFormatter;->object2String(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getClassFromObject(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 1199
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1200
    .local v0, "objClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1203
    .local v1, "genericInterfaces":[Ljava/lang/reflect/Type;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 1204
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 1205
    .local v2, "type":Ljava/lang/reflect/Type;
    :goto_0
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 1206
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_0

    .line 1208
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1209
    .local v2, "className":Ljava/lang/String;
    goto :goto_2

    .line 1210
    .end local v2    # "className":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1211
    .local v2, "type":Ljava/lang/reflect/Type;
    :goto_1
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    .line 1212
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_1

    .line 1214
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1217
    .local v2, "className":Ljava/lang/String;
    :goto_2
    const-string v3, "class "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1218
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 1219
    :cond_4
    const-string v3, "interface "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1220
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1223
    :cond_5
    :goto_3
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1224
    :catch_0
    move-exception v3

    .line 1225
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1228
    .end local v1    # "genericInterfaces":[Ljava/lang/reflect/Type;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    return-object v0
.end method

.method public static getConfig()Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 1

    .line 113
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    return-object v0
.end method

.method public static getCurrentLogFilePath()Ljava/lang/String;
    .locals 1

    .line 234
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getCurrentLogFilePath(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentLogFilePath(Ljava/util/Date;)Ljava/lang/String;
    .locals 5
    .param p0, "d"    # Ljava/util/Date;

    .line 520
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getSdf()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "format":Ljava/lang/String;
    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    invoke-virtual {v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getFileExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    return-object v2
.end method

.method private static getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 6
    .param p0, "targetElement"    # Ljava/lang/StackTraceElement;

    .line 314
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    return-object v0

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "className":Ljava/lang/String;
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "classNameInfo":[Ljava/lang/String;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 321
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v1, v2, v3

    .line 323
    :cond_1
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 324
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 325
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 327
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".java"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getLogFiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "dir":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v1, "logDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 241
    :cond_0
    new-instance v2, Lcom/blankj/molihuan/utilcode/util/LogUtils$2;

    invoke-direct {v2}, Lcom/blankj/molihuan/utilcode/util/LogUtils$2;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 247
    .local v2, "files":[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 249
    return-object v3
.end method

.method private static getSdf()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 529
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 530
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy_MM_dd HH:mm:ss.SSS "

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 532
    :cond_0
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private static getTypeClassFromParadigm(Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter<",
            "TT;>;)",
            "Ljava/lang/Class;"
        }
    .end annotation

    .line 1173
    .local p0, "formatter":Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;, "Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1175
    .local v0, "genericInterfaces":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1176
    aget-object v1, v0, v2

    .local v1, "type":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 1178
    .end local v1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1180
    .restart local v1    # "type":Ljava/lang/reflect/Type;
    :goto_0
    move-object v3, v1

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v1, v3, v2

    .line 1181
    :goto_1
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 1182
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_1

    .line 1184
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1185
    .local v2, "className":Ljava/lang/String;
    const-string v3, "class "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1186
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1187
    :cond_2
    const-string v3, "interface "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1188
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1191
    :cond_3
    :goto_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1192
    :catch_0
    move-exception v3

    .line 1193
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 1195
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public static varargs i([Ljava/lang/Object;)V
    .locals 2
    .param p0, "contents"    # [Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1, v0, p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public static varargs iTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "contents"    # [Ljava/lang/Object;

    .line 137
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method private static input2File(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "input"    # Ljava/lang/String;

    .line 606
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$800(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 607
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->writeFileFromString(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 609
    :cond_0
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$800(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$900(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 612
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$900(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;->onFileOutput(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_1
    return-void
.end method

.method private static isMatchLogFileName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_[0-9]{4}_[0-9]{2}_[0-9]{2}_.*$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static json(ILjava/lang/Object;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "content"    # Ljava/lang/Object;

    .line 185
    or-int/lit8 v0, p0, 0x20

    sget-object v1, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 186
    return-void
.end method

.method public static json(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/Object;

    .line 193
    or-int/lit8 v0, p0, 0x20

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public static json(Ljava/lang/Object;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v2, 0x23

    invoke-static {v2, v0, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public static json(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/Object;

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0x23

    invoke-static {v1, p0, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 190
    return-void
.end method

.method public static varargs log(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "contents"    # [Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogSwitch()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 214
    :cond_0
    and-int/lit8 v1, p0, 0xf

    .local v1, "type_low":I
    and-int/lit16 v2, p0, 0xf0

    .line 215
    .local v2, "type_high":I
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    move-result v3

    const/16 v4, 0x10

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v2, v4, :cond_5

    .line 216
    :cond_1
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$100(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$200(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)I

    move-result v3

    if-ge v1, v3, :cond_2

    return-void

    .line 217
    :cond_2
    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->processTagAndHead(Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;

    move-result-object v3

    .line 218
    .local v3, "tagHead":Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;
    invoke-static {v2, p2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->processBody(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 219
    .local v5, "body":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eq v2, v4, :cond_3

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$100(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)I

    move-result v6

    if-lt v1, v6, :cond_3

    .line 220
    iget-object v6, v3, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;->tag:Ljava/lang/String;

    iget-object v7, v3, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;->consoleHead:[Ljava/lang/String;

    invoke-static {v1, v6, v7, v5}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_3
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v2, v4, :cond_5

    :cond_4
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$200(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 223
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/blankj/molihuan/utilcode/util/LogUtils$1;

    invoke-direct {v4, v1, v3, v5}, Lcom/blankj/molihuan/utilcode/util/LogUtils$1;-><init>(ILcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 231
    .end local v3    # "tagHead":Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;
    .end local v5    # "body":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method private static print2Console(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 494
    invoke-static {p0, p1, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$600(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 496
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$600(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;->onConsoleOutput(ILjava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method

.method private static print2Console(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "head"    # [Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 375
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isSingleTagSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {p0, p1, p2, p3}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->processSingleTagMsg(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printSingleTagMsg(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printBorder(ILjava/lang/String;Z)V

    .line 379
    invoke-static {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printHead(ILjava/lang/String;[Ljava/lang/String;)V

    .line 380
    invoke-static {p0, p1, p3}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printBorder(ILjava/lang/String;Z)V

    .line 383
    :goto_0
    return-void
.end method

.method private static print2File(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 501
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 502
    .local v0, "d":Ljava/util/Date;
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getSdf()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "format":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 504
    .local v2, "date":Ljava/lang/String;
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getCurrentLogFilePath(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 505
    .local v3, "currentLogFilePath":Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->createOrExistsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LogUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void

    .line 509
    :cond_0
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "time":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/blankj/molihuan/utilcode/util/LogUtils;->T:[C

    add-int/lit8 v7, p0, -0x2

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 516
    .local v5, "content":Ljava/lang/String;
    invoke-static {v3, v5}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->input2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method private static printBorder(ILjava/lang/String;Z)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "isTop"    # Z

    .line 386
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    if-eqz p2, :cond_0

    const-string/jumbo v0, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_1
    return-void
.end method

.method private static printDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;

    .line 601
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$700(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    move-result-object v1

    const-string v2, "Date of Log"

    invoke-virtual {v1, v2, p1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;->addFirst(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$700(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->input2File(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method private static printHead(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "head"    # [Ljava/lang/String;

    .line 392
    if-eqz p2, :cond_2

    .line 393
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 394
    .local v2, "aHead":Ljava/lang/String;
    sget-object v3, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u2502 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    invoke-static {p0, p1, v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 393
    .end local v2    # "aHead":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    :cond_1
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    invoke-static {p0, p1, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_2
    return-void
.end method

.method private static printMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 401
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 402
    .local v0, "len":I
    div-int/lit16 v1, v0, 0x44c

    .line 403
    .local v1, "countOfSub":I
    if-lez v1, :cond_2

    .line 404
    const/4 v2, 0x0

    .line 405
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 406
    add-int/lit16 v4, v2, 0x44c

    invoke-virtual {p2, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 407
    add-int/lit16 v2, v2, 0x44c

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 409
    .end local v3    # "i":I
    :cond_0
    if-eq v2, v0, :cond_1

    .line 410
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    .end local v2    # "index":I
    :cond_1
    goto :goto_1

    .line 413
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->printSubMsg(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_1
    return-void
.end method

.method private static printSingleTagMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 460
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 461
    .local v0, "len":I
    sget-object v1, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v2

    const-string/jumbo v3, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    const/16 v4, 0x44c

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v0, v2

    div-int/2addr v2, v4

    goto :goto_0

    :cond_0
    div-int/lit16 v2, v0, 0x44c

    .line 462
    .local v2, "countOfSub":I
    :goto_0
    if-lez v2, :cond_6

    .line 463
    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v1

    const/4 v5, 0x0

    const-string v6, " "

    if-eqz v1, :cond_3

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 v1, 0x44c

    .line 466
    .local v1, "index":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    const-string/jumbo v5, "\u2502 "

    const-string/jumbo v7, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    if-ge v4, v2, :cond_1

    .line 467
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit16 v7, v1, 0x44c

    .line 468
    invoke-virtual {p2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 467
    invoke-static {p0, p1, v5}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    add-int/lit16 v1, v1, 0x44c

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 472
    .end local v4    # "i":I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v0, v3

    if-eq v1, v3, :cond_2

    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 474
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 473
    invoke-static {p0, p1, v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 476
    .end local v1    # "index":I
    :cond_2
    goto :goto_3

    .line 477
    :cond_3
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 478
    const/16 v1, 0x44c

    .line 479
    .restart local v1    # "index":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 480
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit16 v5, v1, 0x44c

    .line 481
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-static {p0, p1, v4}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 482
    add-int/lit16 v1, v1, 0x44c

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 484
    .end local v3    # "i":I
    :cond_4
    if-eq v1, v0, :cond_5

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v1    # "index":I
    :cond_5
    goto :goto_3

    .line 489
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_3
    return-void
.end method

.method private static printSubMsg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 418
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    invoke-static {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 424
    .local v1, "lines":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 425
    .local v4, "line":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u2502 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, p1, v5}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->print2Console(ILjava/lang/String;Ljava/lang/String;)V

    .line 424
    .end local v4    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    :cond_1
    return-void
.end method

.method private static varargs processBody(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "type"    # I
    .param p1, "contents"    # [Ljava/lang/Object;

    .line 331
    const-string v0, "null"

    .line 332
    .local v0, "body":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 333
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 334
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {p0, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->formatObject(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 336
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, p1

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 338
    aget-object v4, p1, v2

    .line 339
    .local v4, "content":Ljava/lang/Object;
    const-string v5, "args"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 340
    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 341
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 342
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 343
    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 344
    invoke-static {v4}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->formatObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    .line 345
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .end local v4    # "content":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "log nothing"

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method private static processSingleTagMsg(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "head"    # [Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v1

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    const-string/jumbo v1, "\u250c\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string/jumbo v1, "\u2502 "

    if-eqz p2, :cond_1

    .line 438
    array-length v2, p2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p2, v4

    .line 439
    .local v5, "aHead":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .end local v5    # "aHead":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 441
    :cond_0
    const-string/jumbo v2, "\u251c\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504\u2504"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :cond_1
    sget-object v2, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v2, v3

    .line 444
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .end local v5    # "line":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 446
    :cond_2
    const-string/jumbo v1, "\u2514\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500\u2500"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 448
    :cond_3
    if-eqz p2, :cond_4

    .line 449
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    array-length v1, p2

    :goto_2
    if-ge v3, v1, :cond_4

    aget-object v2, p2, v3

    .line 451
    .local v2, "aHead":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/blankj/molihuan/utilcode/util/LogUtils;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .end local v2    # "aHead":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 454
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static processTagAndHead(Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;
    .locals 22
    .param p0, "tag"    # Ljava/lang/String;

    .line 253
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$500(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Z

    move-result v1

    const-string v2, ": "

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    .end local p0    # "tag":Ljava/lang/String;
    .local v0, "tag":Ljava/lang/String;
    goto/16 :goto_5

    .line 256
    .end local v0    # "tag":Ljava/lang/String;
    .restart local p0    # "tag":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 257
    .local v1, "stackTrace":[Ljava/lang/StackTraceElement;
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getStackOffset()I

    move-result v4

    const/4 v5, 0x3

    add-int/2addr v4, v5

    .line 258
    .local v4, "stackIndex":I
    array-length v6, v1

    const/4 v7, -0x1

    const/16 v8, 0x2e

    const/4 v9, 0x0

    if-lt v4, v6, :cond_3

    .line 259
    aget-object v5, v1, v5

    .line 260
    .local v5, "targetElement":Ljava/lang/StackTraceElement;
    invoke-static {v5}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    .line 261
    .local v6, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$500(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static/range {p0 .. p0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 262
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 263
    .local v0, "index":I
    if-ne v0, v7, :cond_1

    move-object v7, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .end local p0    # "tag":Ljava/lang/String;
    .local v7, "tag":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 265
    .end local v0    # "index":I
    .end local v7    # "tag":Ljava/lang/String;
    .restart local p0    # "tag":Ljava/lang/String;
    :cond_2
    move-object/from16 v7, p0

    .end local p0    # "tag":Ljava/lang/String;
    .restart local v7    # "tag":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;

    invoke-direct {v0, v7, v3, v2}, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 267
    .end local v5    # "targetElement":Ljava/lang/StackTraceElement;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    .restart local p0    # "tag":Ljava/lang/String;
    :cond_3
    aget-object v6, v1, v4

    .line 268
    .local v6, "targetElement":Ljava/lang/StackTraceElement;
    invoke-static {v6}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "fileName":Ljava/lang/String;
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->access$500(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 270
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 271
    .local v8, "index":I
    if-ne v8, v7, :cond_4

    move-object v7, v10

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .end local p0    # "tag":Ljava/lang/String;
    .restart local v7    # "tag":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 273
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "index":I
    .restart local p0    # "tag":Ljava/lang/String;
    :cond_5
    move-object/from16 v7, p0

    .end local p0    # "tag":Ljava/lang/String;
    .restart local v7    # "tag":Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 274
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "tName":Ljava/lang/String;
    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v2, v11, v9

    .line 278
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 279
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x2

    aput-object v12, v11, v14

    aput-object v10, v11, v5

    .line 281
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v15, 0x4

    aput-object v12, v11, v15

    .line 276
    const-string v12, "%s, %s.%s(%s:%d)"

    invoke-virtual {v3, v12, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "head":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, "fileHead":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getStackDeep()I

    move-result v12

    if-gt v12, v13, :cond_6

    .line 285
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;

    new-array v5, v13, [Ljava/lang/String;

    aput-object v3, v5, v9

    invoke-direct {v0, v7, v5, v11}, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 287
    :cond_6
    nop

    .line 289
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getStackDeep()I

    move-result v0

    array-length v12, v1

    sub-int/2addr v12, v4

    .line 288
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 292
    .local v0, "consoleHead":[Ljava/lang/String;
    aput-object v3, v0, v9

    .line 293
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v14

    .line 294
    .local v12, "spaceLen":I
    new-instance v15, Ljava/util/Formatter;

    invoke-direct {v15}, Ljava/util/Formatter;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "%"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, "s"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v14, v13, [Ljava/lang/Object;

    const-string v18, ""

    aput-object v18, v14, v9

    invoke-virtual {v15, v5, v14}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "space":Ljava/lang/String;
    const/4 v14, 0x1

    .local v14, "i":I
    array-length v15, v0

    .local v15, "len":I
    :goto_4
    if-ge v14, v15, :cond_7

    .line 296
    add-int v18, v14, v4

    aget-object v6, v1, v18

    .line 297
    new-instance v13, Ljava/util/Formatter;

    invoke-direct {v13}, Ljava/util/Formatter;-><init>()V

    move-object/from16 v19, v1

    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .local v19, "stackTrace":[Ljava/lang/StackTraceElement;
    new-array v1, v8, [Ljava/lang/Object;

    aput-object v5, v1, v9

    .line 300
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v20

    const/16 v18, 0x1

    aput-object v20, v1, v18

    .line 301
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v20

    const/16 v17, 0x2

    aput-object v20, v1, v17

    .line 302
    invoke-static {v6}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->getFileName(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v20

    const/16 v16, 0x3

    aput-object v20, v1, v16

    .line 303
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    aput-object v20, v1, v21

    .line 298
    const-string v8, "%s%s.%s(%s:%d)"

    invoke-virtual {v13, v8, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v14

    .line 295
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v18

    move-object/from16 v1, v19

    const/4 v8, 0x5

    goto :goto_4

    .end local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_7
    move-object/from16 v19, v1

    .line 306
    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .end local v14    # "i":I
    .end local v15    # "len":I
    .restart local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    new-instance v1, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;

    invoke-direct {v1, v7, v0, v11}, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 273
    .end local v0    # "consoleHead":[Ljava/lang/String;
    .end local v2    # "tName":Ljava/lang/String;
    .end local v3    # "head":Ljava/lang/String;
    .end local v5    # "space":Ljava/lang/String;
    .end local v11    # "fileHead":Ljava/lang/String;
    .end local v12    # "spaceLen":I
    .end local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_8
    move-object/from16 v19, v1

    .end local v1    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    move-object v0, v7

    .line 310
    .end local v4    # "stackIndex":I
    .end local v6    # "targetElement":Ljava/lang/StackTraceElement;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v19    # "stackTrace":[Ljava/lang/StackTraceElement;
    .local v0, "tag":Ljava/lang/String;
    :goto_5
    new-instance v1, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;

    invoke-direct {v1, v0, v3, v2}, Lcom/blankj/molihuan/utilcode/util/LogUtils$TagHead;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static varargs v([Ljava/lang/Object;)V
    .locals 2
    .param p0, "contents"    # [Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0, p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method public static varargs vTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "contents"    # [Ljava/lang/Object;

    .line 121
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return-void
.end method

.method public static varargs w([Ljava/lang/Object;)V
    .locals 2
    .param p0, "contents"    # [Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v1, v0, p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public static varargs wTag(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "contents"    # [Ljava/lang/Object;

    .line 145
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public static xml(ILjava/lang/String;)V
    .locals 4
    .param p0, "type"    # I
    .param p1, "content"    # Ljava/lang/String;

    .line 201
    or-int/lit8 v0, p0, 0x30

    sget-object v1, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public static xml(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 209
    or-int/lit8 v0, p0, 0x30

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public static xml(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .line 197
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/LogUtils;->CONFIG:Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 v2, 0x33

    invoke-static {v2, v0, v1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public static xml(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 205
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/16 v1, 0x33

    invoke-static {v1, p0, v0}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method
