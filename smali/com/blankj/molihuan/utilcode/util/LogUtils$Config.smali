.class public final Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/molihuan/utilcode/util/LogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field private mConsoleFilter:I

.field private mDefaultDir:Ljava/lang/String;

.field private mDir:Ljava/lang/String;

.field private mFileExtension:Ljava/lang/String;

.field private mFileFilter:I

.field private mFileHead:Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

.field private mFilePrefix:Ljava/lang/String;

.field private mFileWriter:Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;

.field private mGlobalTag:Ljava/lang/String;

.field private mLog2ConsoleSwitch:Z

.field private mLog2FileSwitch:Z

.field private mLogBorderSwitch:Z

.field private mLogHeadSwitch:Z

.field private mLogSwitch:Z

.field private mOnConsoleOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

.field private mOnFileOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

.field private mProcessName:Ljava/lang/String;

.field private mSaveDays:I

.field private mSingleTagSwitch:Z

.field private mStackDeep:I

.field private mStackOffset:I

.field private mTagIsSpace:Z


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    const-string/jumbo v0, "util"

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    .line 620
    const-string v0, ".txt"

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    .line 622
    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    .line 623
    const-string v1, ""

    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    .line 624
    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    .line 625
    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    .line 626
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    .line 627
    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    .line 628
    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    .line 629
    const/4 v2, 0x2

    iput v2, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    .line 630
    iput v2, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileFilter:I

    .line 631
    iput v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mStackDeep:I

    .line 632
    iput v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mStackOffset:I

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mSaveDays:I

    .line 634
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mProcessName:Ljava/lang/String;

    .line 638
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    const-string v1, "Log"

    invoke-direct {v0, v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    .line 641
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSDCardEnableByEnvironment()Z

    move-result v0

    const-string v1, "log"

    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Application;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    goto :goto_0

    .line 645
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    .line 647
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/blankj/molihuan/utilcode/util/LogUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$1;

    .line 616
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 616
    iget v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    return v0
.end method

.method static synthetic access$200(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)I
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 616
    iget v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileFilter:I

    return v0
.end method

.method static synthetic access$500(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Z
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 616
    iget-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    return v0
.end method

.method static synthetic access$600(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 616
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 616
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    return-object v0
.end method

.method static synthetic access$800(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 616
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;)Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;

    .line 616
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

    return-object v0
.end method


# virtual methods
.method public final addFileExtraHead(Ljava/lang/String;Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 779
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    invoke-virtual {v0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-object p0
.end method

.method public final addFileExtraHead(Ljava/util/Map;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;"
        }
    .end annotation

    .line 774
    .local p1, "fileExtraHead":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    invoke-virtual {v0, p1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;->append(Ljava/util/Map;)V

    .line 775
    return-object p0
.end method

.method public final addFormatter(Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter<",
            "TT;>;)",
            "Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;"
        }
    .end annotation

    .line 752
    .local p1, "iFormatter":Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;, "Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter<TT;>;"
    if-eqz p1, :cond_0

    .line 753
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1200()Landroidx/collection/SimpleArrayMap;

    move-result-object v0

    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1100(Lcom/blankj/molihuan/utilcode/util/LogUtils$IFormatter;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    :cond_0
    return-object p0
.end method

.method public final getConsoleFilter()C
    .locals 2

    .line 834
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1300()[C

    move-result-object v0

    iget v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    return v0
.end method

.method public final getDefaultDir()Ljava/lang/String;
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    return-object v0
.end method

.method public final getDir()Ljava/lang/String;
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDefaultDir:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public final getFileExtension()Ljava/lang/String;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileFilter()C
    .locals 2

    .line 838
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1300()[C

    move-result-object v0

    iget v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileFilter:I

    add-int/lit8 v1, v1, -0x2

    aget-char v0, v0, v1

    return v0
.end method

.method public final getFilePrefix()Ljava/lang/String;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public final getGlobalTag()Ljava/lang/String;
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getProcessName()Ljava/lang/String;
    .locals 3

    .line 784
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mProcessName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 785
    :cond_0
    const-string v1, ":"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSaveDays()I
    .locals 1

    .line 850
    iget v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mSaveDays:I

    return v0
.end method

.method public final getStackDeep()I
    .locals 1

    .line 842
    iget v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mStackDeep:I

    return v0
.end method

.method public final getStackOffset()I
    .locals 1

    .line 846
    iget v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mStackOffset:I

    return v0
.end method

.method public final haveSetOnConsoleOutputListener()Z
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final haveSetOnFileOutputListener()Z
    .locals 1

    .line 858
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLog2ConsoleSwitch()Z
    .locals 1

    .line 809
    iget-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    return v0
.end method

.method public final isLog2FileSwitch()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    return v0
.end method

.method public final isLogBorderSwitch()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    return v0
.end method

.method public final isLogHeadSwitch()Z
    .locals 1

    .line 818
    iget-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    return v0
.end method

.method public final isLogSwitch()Z
    .locals 1

    .line 805
    iget-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    return v0
.end method

.method public final isSingleTagSwitch()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    return v0
.end method

.method public final setBorderSwitch(Z)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "borderSwitch"    # Z

    .line 717
    iput-boolean p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogBorderSwitch:Z

    .line 718
    return-object p0
.end method

.method public final setConsoleFilter(I)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "consoleFilter"    # I

    .line 727
    iput p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mConsoleFilter:I

    .line 728
    return-object p0
.end method

.method public final setConsoleSwitch(Z)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "consoleSwitch"    # Z

    .line 655
    iput-boolean p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLog2ConsoleSwitch:Z

    .line 656
    return-object p0
.end method

.method public final setDir(Ljava/io/File;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .line 690
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    .line 691
    return-object p0
.end method

.method public final setDir(Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 681
    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    goto :goto_1

    .line 684
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mDir:Ljava/lang/String;

    .line 686
    :goto_1
    return-object p0
.end method

.method public final setFileExtension(Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 2
    .param p1, "fileExtension"    # Ljava/lang/String;

    .line 704
    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const-string v0, ".txt"

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    goto :goto_0

    .line 707
    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 708
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    goto :goto_0

    .line 710
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileExtension:Ljava/lang/String;

    .line 713
    :goto_0
    return-object p0
.end method

.method public final setFileFilter(I)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "fileFilter"    # I

    .line 732
    iput p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileFilter:I

    .line 733
    return-object p0
.end method

.method public final setFilePrefix(Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 1
    .param p1, "filePrefix"    # Ljava/lang/String;

    .line 695
    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const-string/jumbo v0, "util"

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    goto :goto_0

    .line 698
    :cond_0
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFilePrefix:Ljava/lang/String;

    .line 700
    :goto_0
    return-object p0
.end method

.method public final setFileWriter(Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "fileWriter"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;

    .line 759
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;

    .line 760
    return-object p0
.end method

.method public final setGlobalTag(Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 660
    invoke-static {p1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    const-string v0, ""

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    goto :goto_0

    .line 664
    :cond_0
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mGlobalTag:Ljava/lang/String;

    .line 665
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mTagIsSpace:Z

    .line 667
    :goto_0
    return-object p0
.end method

.method public final setLog2FileSwitch(Z)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "log2FileSwitch"    # Z

    .line 676
    iput-boolean p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLog2FileSwitch:Z

    .line 677
    return-object p0
.end method

.method public final setLogHeadSwitch(Z)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "logHeadSwitch"    # Z

    .line 671
    iput-boolean p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogHeadSwitch:Z

    .line 672
    return-object p0
.end method

.method public final setLogSwitch(Z)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "logSwitch"    # Z

    .line 650
    iput-boolean p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mLogSwitch:Z

    .line 651
    return-object p0
.end method

.method public final setOnConsoleOutputListener(Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "listener"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

    .line 764
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

    .line 765
    return-object p0
.end method

.method public final setOnFileOutputListener(Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "listener"    # Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

    .line 769
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

    .line 770
    return-object p0
.end method

.method public final setSaveDays(I)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "saveDays"    # I

    .line 747
    iput p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mSaveDays:I

    .line 748
    return-object p0
.end method

.method public final setSingleTagSwitch(Z)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "singleTagSwitch"    # Z

    .line 722
    iput-boolean p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mSingleTagSwitch:Z

    .line 723
    return-object p0
.end method

.method public final setStackDeep(I)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "stackDeep"    # I

    .line 737
    iput p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mStackDeep:I

    .line 738
    return-object p0
.end method

.method public final setStackOffset(I)Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;
    .locals 0
    .param p1, "stackOffset"    # I

    .line 742
    iput p1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mStackOffset:I

    .line 743
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 864
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "logSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 865
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "consoleSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLog2ConsoleSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 866
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getGlobalTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 867
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "headSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogHeadSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 868
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fileSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLog2FileSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 869
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 870
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "filePrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getFilePrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 871
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "borderSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isLogBorderSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 872
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "singleTagSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->isSingleTagSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 873
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "consoleFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getConsoleFilter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 874
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fileFilter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getFileFilter()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 875
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stackDeep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getStackDeep()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 876
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "stackOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getStackOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 877
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "saveDays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->getSaveDays()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 878
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "formatter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1200()Landroidx/collection/SimpleArrayMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 879
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fileWriter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileWriter:Lcom/blankj/molihuan/utilcode/util/LogUtils$IFileWriter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 880
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onConsoleOutputListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnConsoleOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnConsoleOutputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 881
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "onFileOutputListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mOnFileOutputListener:Lcom/blankj/molihuan/utilcode/util/LogUtils$OnFileOutputListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 882
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->access$1400()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fileExtraHeader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/LogUtils$Config;->mFileHead:Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge$FileHead;->getAppended()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    return-object v0
.end method
