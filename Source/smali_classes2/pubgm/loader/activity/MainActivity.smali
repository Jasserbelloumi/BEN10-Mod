.class public Lpubgm/loader/activity/MainActivity;
.super Lpubgm/loader/utils/ActivityCompat;
.source "MainActivity.java"


# static fields
.field public static Ischeck:Z = false

.field private static final PICK_IMAGE_REQUEST:I = 0x1

.field private static final PREF_NAME:Ljava/lang/String;

.field private static final PROFILE_IMAGE_PATH:Ljava/lang/String;

.field private static final PROFILE_NAME:Ljava/lang/String;

.field private static final PROFILE_PREFS:Ljava/lang/String;

.field private static final REQUEST_PERMISSIONS:I = 0x1

.field public static bitversi:I

.field public static check:Z

.field public static daemonPath:Ljava/lang/String;

.field public static device:I

.field public static game:Ljava/lang/String;

.field public static gameint:I

.field public static hiderecord:I

.field static instance:Lpubgm/loader/activity/MainActivity;

.field public static kernel:Z

.field public static modeselect:Ljava/lang/String;

.field public static modestatus:Z

.field public static noroot:Z

.field public static socket:Ljava/lang/String;

.field public static typelogin:Ljava/lang/String;


# instance fields
.field public container:Landroid/widget/LinearLayout;

.field ctx:Landroid/content/Context;

.field public disable:Landroidx/cardview/widget/CardView;

.field public enable:Landroidx/cardview/widget/CardView;

.field private navigationView:Lcom/google/android/material/navigation/NavigationView;

.field packageapp:[Ljava/lang/String;

.field private profileImage:Landroid/widget/ImageView;

.field private profileName:Landroid/widget/EditText;

.field private profilePrefs:Landroid/content/SharedPreferences;

.field public progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

.field root:Landroid/widget/TextView;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide v0, -0x706b8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->PREF_NAME:Ljava/lang/String;

    const-wide v0, -0x70128c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->PROFILE_PREFS:Ljava/lang/String;

    const-wide v0, -0x701c8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->PROFILE_IMAGE_PATH:Ljava/lang/String;

    const-wide v0, -0x70318c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->PROFILE_NAME:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->check:Z

    .line 108
    sput v0, Lpubgm/loader/activity/MainActivity;->hiderecord:I

    .line 109
    const/4 v1, 0x1

    sput v1, Lpubgm/loader/activity/MainActivity;->gameint:I

    .line 110
    const/16 v2, 0x40

    sput v2, Lpubgm/loader/activity/MainActivity;->bitversi:I

    .line 111
    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->noroot:Z

    .line 112
    sput v1, Lpubgm/loader/activity/MainActivity;->device:I

    .line 113
    const-wide v1, -0x703c8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lpubgm/loader/activity/MainActivity;->game:Ljava/lang/String;

    .line 114
    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->kernel:Z

    .line 115
    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->Ischeck:Z

    .line 116
    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->modestatus:Z

    .line 129
    const-wide v0, -0x702d8c1d73e5L

    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 133
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 97
    invoke-direct {p0}, Lpubgm/loader/utils/ActivityCompat;-><init>()V

    .line 138
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-wide v1, -0x7ee28c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide v1, -0x7e938c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-wide v1, -0x7e818c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-wide v1, -0x7eb68c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-wide v1, -0x7ea68c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lpubgm/loader/activity/MainActivity;->packageapp:[Ljava/lang/String;

    return-void
.end method

.method private CountTimerAccout()V
    .locals 4

    .line 1694
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1695
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lpubgm/loader/activity/MainActivity$16;

    invoke-direct {v1, p0, v0}, Lpubgm/loader/activity/MainActivity$16;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/os/Handler;)V

    .line 1783
    .local v1, "runnable":Ljava/lang/Runnable;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1784
    return-void
.end method

.method public static native EXP()Ljava/lang/String;
.end method

.method private ExecuteElf(Ljava/lang/String;)V
    .locals 2
    .param p1, "shell"    # Ljava/lang/String;

    .line 1503
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1506
    goto :goto_0

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1507
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private Loadssets()V
    .locals 3

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74988c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x749e8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74878c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x74858c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x748e8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x748c8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74b58c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x74bb8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74be8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x74bc8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74a18c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x74a78c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74a48c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x74aa8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74ac8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x74528c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74578c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x74558c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1519
    return-void
.end method

.method private MoveAssets(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "outPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 1522
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1523
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1524
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1525
    const-wide v3, -0x74438c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v3, -0x74488c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return v2

    .line 1530
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1531
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1532
    .local v3, "outFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1533
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 1535
    .local v5, "buffer":[B
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "byteRead":I
    if-eq v6, v7, :cond_1

    .line 1536
    invoke-virtual {v4, v5, v2, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1538
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1539
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 1540
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1541
    const/4 v2, 0x1

    return v2

    .line 1542
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "outFile":Ljava/io/File;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "buffer":[B
    .end local v8    # "byteRead":I
    :catch_0
    move-exception v1

    .line 1543
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1544
    return v2
.end method

.method static synthetic access$000(Lpubgm/loader/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/activity/MainActivity;

    .line 97
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->stopPatcher()V

    return-void
.end method

.method static synthetic access$100(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lpubgm/loader/activity/MainActivity;->unInstallWithDellay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lpubgm/loader/activity/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "x1"    # Landroid/view/View;

    .line 97
    invoke-direct {p0, p1}, Lpubgm/loader/activity/MainActivity;->initStorageMonitoring(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lpubgm/loader/activity/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "x1"    # Landroid/view/View;

    .line 97
    invoke-direct {p0, p1}, Lpubgm/loader/activity/MainActivity;->initRAMMonitoring(Landroid/view/View;)V

    return-void
.end method

.method private native bgmistatus()Ljava/lang/String;
.end method

.method private executeWithRetries(Ljava/lang/String;JJ)V
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "intervalMs"    # J
    .param p4, "maxDurationMs"    # J

    .line 1377
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1378
    .local v7, "handler":Landroid/os/Handler;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1380
    .local v10, "startTime":J
    new-instance v12, Lpubgm/loader/activity/MainActivity$14;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-wide v3, v10

    move-wide/from16 v5, p4

    move-wide v8, p2

    invoke-direct/range {v0 .. v9}, Lpubgm/loader/activity/MainActivity$14;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;JJLandroid/os/Handler;J)V

    .line 1391
    .local v0, "task":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1392
    return-void
.end method

.method private exportSharedPreferences()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1059
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, -0x7a908c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, -0x7a818c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, -0x7a888c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v0, "srcFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x7ab38c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1062
    .local v1, "dstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1063
    const/4 v2, 0x0

    .line 1064
    .local v2, "src":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    .line 1066
    .local v4, "dst":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v2, v5

    .line 1067
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v4, v5

    .line 1068
    const-wide/16 v8, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    move-object v6, v4

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1069
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x7abe8c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    if-eqz v2, :cond_0

    .line 1072
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1074
    :cond_0
    if-eqz v4, :cond_1

    .line 1075
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 1078
    .end local v2    # "src":Ljava/nio/channels/FileChannel;
    .end local v4    # "dst":Ljava/nio/channels/FileChannel;
    :cond_1
    goto :goto_0

    .line 1071
    .restart local v2    # "src":Ljava/nio/channels/FileChannel;
    .restart local v4    # "dst":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 1072
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1074
    :cond_2
    if-eqz v4, :cond_3

    .line 1075
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 1077
    :cond_3
    throw v3

    .line 1079
    .end local v2    # "src":Ljava/nio/channels/FileChannel;
    .end local v4    # "dst":Ljava/nio/channels/FileChannel;
    :cond_4
    const-wide v4, -0x7aa98c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1081
    :goto_0
    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 10
    .param p1, "size"    # J

    .line 1012
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-wide v0, -0x79ab8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1013
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-wide v2, -0x79af8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-wide v2, -0x79ad8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-wide v2, -0x79528c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-wide v2, -0x79578c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-wide v2, -0x79548c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1014
    .local v0, "units":[Ljava/lang/String;
    long-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    invoke-static {v3, v4}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    div-double/2addr v1, v5

    double-to-int v1, v1

    .line 1015
    .local v1, "digitGroups":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/text/DecimalFormat;

    const-wide v6, -0x79598c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    long-to-double v6, p1

    int-to-double v8, v1

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    div-double/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x79418c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static get()Lpubgm/loader/activity/MainActivity;
    .locals 1

    .line 146
    sget-object v0, Lpubgm/loader/activity/MainActivity;->instance:Lpubgm/loader/activity/MainActivity;

    return-object v0
.end method

.method private native globalstatus()Ljava/lang/String;
.end method

.method private hideSystemUI()V
    .locals 2

    .line 1607
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1608
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0xd04

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1613
    return-void
.end method

.method private importSharedPreferences()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1084
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-wide v2, -0x7a488c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1085
    .local v0, "srcFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x7a7b8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x7a648c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x7a138c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1087
    .local v1, "dstFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1088
    const/4 v2, 0x0

    .line 1089
    .local v2, "src":Ljava/nio/channels/FileChannel;
    const/4 v4, 0x0

    .line 1091
    .local v4, "dst":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v2, v5

    .line 1092
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v4, v5

    .line 1093
    const-wide/16 v8, 0x0

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v10

    move-object v6, v4

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 1094
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x7a168c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1096
    if-eqz v2, :cond_0

    .line 1097
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1099
    :cond_0
    if-eqz v4, :cond_1

    .line 1100
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 1103
    .end local v2    # "src":Ljava/nio/channels/FileChannel;
    .end local v4    # "dst":Ljava/nio/channels/FileChannel;
    :cond_1
    goto :goto_0

    .line 1096
    .restart local v2    # "src":Ljava/nio/channels/FileChannel;
    .restart local v4    # "dst":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_2

    .line 1097
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 1099
    :cond_2
    if-eqz v4, :cond_3

    .line 1100
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 1102
    :cond_3
    throw v3

    .line 1104
    .end local v2    # "src":Ljava/nio/channels/FileChannel;
    .end local v4    # "dst":Ljava/nio/channels/FileChannel;
    :cond_4
    const-wide v4, -0x7a078c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1106
    :goto_0
    return-void
.end method

.method private initProfileSection()V
    .locals 4

    .line 1797
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_0

    .line 1798
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    .line 1799
    .local v0, "headerView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1800
    const v1, 0x7f0a02be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lpubgm/loader/activity/MainActivity;->profileImage:Landroid/widget/ImageView;

    .line 1801
    const v1, 0x7f0a02bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lpubgm/loader/activity/MainActivity;->profileName:Landroid/widget/EditText;

    .line 1802
    const v1, 0x7f0a0172

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1805
    .local v1, "editProfileIcon":Landroid/widget/ImageView;
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->loadProfileData()V

    .line 1808
    iget-object v2, p0, Lpubgm/loader/activity/MainActivity;->profileImage:Landroid/widget/ImageView;

    new-instance v3, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda6;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1809
    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda7;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1812
    iget-object v2, p0, Lpubgm/loader/activity/MainActivity;->profileName:Landroid/widget/EditText;

    new-instance v3, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda8;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1819
    .end local v0    # "headerView":Landroid/view/View;
    .end local v1    # "editProfileIcon":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private initRAMMonitoring(Landroid/view/View;)V
    .locals 21
    .param p1, "headerView"    # Landroid/view/View;

    .line 975
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a02c7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 976
    .local v2, "ramTextView":Landroid/widget/TextView;
    const v3, 0x7f0a02aa

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 977
    .local v3, "percentageText":Landroid/widget/TextView;
    const v4, 0x7f0a034b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 979
    .local v4, "storageProgressBar":Landroid/widget/ProgressBar;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 983
    :cond_0
    const-wide v5, -0x79858c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lpubgm/loader/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 984
    .local v5, "activityManager":Landroid/app/ActivityManager;
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 985
    .local v6, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 988
    iget-wide v7, v6, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 989
    .local v7, "totalRAM":J
    iget-wide v9, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 990
    .local v9, "availableRAM":J
    sub-long v11, v7, v9

    .line 991
    .local v11, "usedRAM":J
    const-wide/16 v13, 0x64

    mul-long/2addr v13, v11

    div-long/2addr v13, v7

    long-to-int v13, v13

    .line 994
    .local v13, "usedPercentage":I
    invoke-direct {v0, v11, v12}, Lpubgm/loader/activity/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v14

    .line 995
    .local v14, "usedRAMStr":Ljava/lang/String;
    invoke-direct {v0, v9, v10}, Lpubgm/loader/activity/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v15

    .line 997
    .local v15, "availableRAMStr":Ljava/lang/String;
    const-wide v16, -0x798c8c1d73e5L

    move-object/from16 v18, v5

    .end local v5    # "activityManager":Landroid/app/ActivityManager;
    .local v18, "activityManager":Landroid/app/ActivityManager;
    invoke-static/range {v16 .. v17}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v6

    .end local v6    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .local v16, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v14, v6, v17

    move-wide/from16 v19, v7

    .end local v7    # "totalRAM":J
    .local v19, "totalRAM":J
    const/4 v7, 0x1

    aput-object v15, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    const-wide v5, -0x79a08c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v17

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1000
    invoke-virtual {v4, v13}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1003
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lpubgm/loader/activity/MainActivity$11;

    invoke-direct {v6, v0, v1}, Lpubgm/loader/activity/MainActivity$11;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/view/View;)V

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1009
    return-void

    .line 980
    .end local v9    # "availableRAM":J
    .end local v11    # "usedRAM":J
    .end local v13    # "usedPercentage":I
    .end local v14    # "usedRAMStr":Ljava/lang/String;
    .end local v15    # "availableRAMStr":Ljava/lang/String;
    .end local v16    # "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v18    # "activityManager":Landroid/app/ActivityManager;
    .end local v19    # "totalRAM":J
    :cond_1
    :goto_0
    return-void
.end method

.method private initStorageMonitoring(Landroid/view/View;)V
    .locals 28
    .param p1, "headerView"    # Landroid/view/View;

    .line 930
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a034b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 931
    .local v2, "storageProgressBar":Landroid/widget/ProgressBar;
    const v3, 0x7f0a0042

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 932
    .local v3, "internalProgressBar":Landroid/widget/ProgressBar;
    const v4, 0x7f0a034a

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 933
    .local v4, "storageInfoText":Landroid/widget/TextView;
    const v5, 0x7f0a02a9

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 935
    .local v5, "percentageStorageText":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-nez v5, :cond_0

    move-object/from16 v21, v2

    move-object/from16 v24, v3

    goto/16 :goto_0

    .line 941
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    .line 942
    .local v6, "path":Ljava/io/File;
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 943
    .local v7, "stat":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    .line 944
    .local v8, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v10

    .line 945
    .local v10, "totalBlocks":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v12

    .line 948
    .local v12, "availableBlocks":J
    mul-long v14, v10, v8

    .line 949
    .local v14, "totalSize":J
    move-object/from16 v16, v6

    move-object/from16 v17, v7

    .end local v6    # "path":Ljava/io/File;
    .end local v7    # "stat":Landroid/os/StatFs;
    .local v16, "path":Ljava/io/File;
    .local v17, "stat":Landroid/os/StatFs;
    mul-long v6, v12, v8

    .line 950
    .local v6, "availableSize":J
    move-wide/from16 v18, v8

    .end local v8    # "blockSize":J
    .local v18, "blockSize":J
    sub-long v8, v14, v6

    .line 951
    .local v8, "usedSize":J
    const-wide/16 v20, 0x64

    mul-long v20, v20, v8

    move-wide/from16 v22, v10

    .end local v10    # "totalBlocks":J
    .local v22, "totalBlocks":J
    div-long v10, v20, v14

    long-to-int v10, v10

    .line 954
    .local v10, "usedPercentage":I
    invoke-virtual {v2, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 955
    invoke-virtual {v3, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 958
    invoke-direct {v0, v8, v9}, Lpubgm/loader/activity/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v11

    .line 959
    .local v11, "usedStorage":Ljava/lang/String;
    invoke-direct {v0, v6, v7}, Lpubgm/loader/activity/MainActivity;->formatSize(J)Ljava/lang/String;

    move-result-object v20

    .line 961
    .local v20, "availableStorage":Ljava/lang/String;
    const-wide v24, -0x79ee8c1d73e5L

    move-object/from16 v21, v2

    .end local v2    # "storageProgressBar":Landroid/widget/ProgressBar;
    .local v21, "storageProgressBar":Landroid/widget/ProgressBar;
    invoke-static/range {v24 .. v25}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v24, v3

    .end local v3    # "internalProgressBar":Landroid/widget/ProgressBar;
    .local v24, "internalProgressBar":Landroid/widget/ProgressBar;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v25, 0x0

    aput-object v11, v3, v25

    move-wide/from16 v26, v6

    .end local v6    # "availableSize":J
    .local v26, "availableSize":J
    const/4 v6, 0x1

    aput-object v20, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    const-wide v2, -0x79828c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v25

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lpubgm/loader/activity/MainActivity$10;

    invoke-direct {v3, v0, v1}, Lpubgm/loader/activity/MainActivity$10;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/view/View;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 972
    return-void

    .line 935
    .end local v8    # "usedSize":J
    .end local v10    # "usedPercentage":I
    .end local v11    # "usedStorage":Ljava/lang/String;
    .end local v12    # "availableBlocks":J
    .end local v14    # "totalSize":J
    .end local v16    # "path":Ljava/io/File;
    .end local v17    # "stat":Landroid/os/StatFs;
    .end local v18    # "blockSize":J
    .end local v20    # "availableStorage":Ljava/lang/String;
    .end local v21    # "storageProgressBar":Landroid/widget/ProgressBar;
    .end local v22    # "totalBlocks":J
    .end local v24    # "internalProgressBar":Landroid/widget/ProgressBar;
    .end local v26    # "availableSize":J
    .restart local v2    # "storageProgressBar":Landroid/widget/ProgressBar;
    .restart local v3    # "internalProgressBar":Landroid/widget/ProgressBar;
    :cond_1
    move-object/from16 v21, v2

    move-object/from16 v24, v3

    .line 937
    .end local v2    # "storageProgressBar":Landroid/widget/ProgressBar;
    .end local v3    # "internalProgressBar":Landroid/widget/ProgressBar;
    .restart local v21    # "storageProgressBar":Landroid/widget/ProgressBar;
    .restart local v24    # "internalProgressBar":Landroid/widget/ProgressBar;
    :goto_0
    return-void
.end method

.method private isServiceRunning()Z
    .locals 5

    .line 1623
    const-wide v0, -0x74198c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1624
    .local v0, "manager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_1

    .line 1625
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 1626
    .local v2, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    const-class v3, Lpubgm/loader/floating/FloatService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1627
    const/4 v1, 0x1

    return v1

    .line 1629
    .end local v2    # "service":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    goto :goto_0

    .line 1631
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private native koreastatus()Ljava/lang/String;
.end method

.method private loadProfileData()V
    .locals 5

    .line 1875
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->profilePrefs:Landroid/content/SharedPreferences;

    const-wide v1, -0x75288c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1876
    .local v0, "imagePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1877
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1878
    .local v1, "imgFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1879
    iget-object v2, p0, Lpubgm/loader/activity/MainActivity;->profileImage:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1884
    .end local v1    # "imgFile":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lpubgm/loader/activity/MainActivity;->profilePrefs:Landroid/content/SharedPreferences;

    const-wide v2, -0x76dd8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x76c88c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1885
    .local v1, "savedName":Ljava/lang/String;
    iget-object v2, p0, Lpubgm/loader/activity/MainActivity;->profileName:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1886
    return-void
.end method

.method private openImagePicker()V
    .locals 3

    .line 1822
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1823
    .local v0, "intent":Landroid/content/Intent;
    const-wide v1, -0x75a68c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1824
    const-wide v1, -0x75ae8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1825
    const-wide v1, -0x754c8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lpubgm/loader/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1826
    return-void
.end method

.method private resetSharedPreferences()V
    .locals 1

    .line 1109
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1110
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1112
    return-void
.end method

.method private saveImageToInternalStorage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p1, "imageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1850
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 1851
    .local v0, "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 1853
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-wide v3, -0x750d8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1854
    .local v1, "directory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1855
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1858
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x753e8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x75258c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1859
    .local v2, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1861
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1862
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x400

    new-array v5, v5, [B

    .line 1864
    .local v5, "buffer":[B
    :goto_0
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v7, v6

    .local v7, "read":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    .line 1865
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1867
    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1868
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1870
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private saveProfileName()V
    .locals 4

    .line 1889
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->profileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1890
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_0

    .line 1891
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1892
    iget-object v1, p0, Lpubgm/loader/activity/MainActivity;->profileName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1894
    :cond_0
    iget-object v1, p0, Lpubgm/loader/activity/MainActivity;->profilePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-wide v2, -0x76cf8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1895
    return-void
.end method

.method private showSystemUI()V
    .locals 2

    .line 1616
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1617
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1620
    return-void
.end method

.method private startFloater()V
    .locals 7

    .line 1646
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x75dd8c1d73e5L

    :goto_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lpubgm/loader/activity/MainActivity;->kernel:Z

    if-eqz v0, :cond_1

    const-wide v0, -0x75c18c1d73e5L

    goto :goto_0

    :cond_1
    const-wide v0, -0x75ca8c1d73e5L

    goto :goto_0

    .line 1647
    .local v0, "filename":Ljava/lang/String;
    :goto_1
    sget-boolean v1, Lpubgm/loader/activity/MainActivity;->kernel:Z

    if-eqz v1, :cond_2

    const-wide v1, -0x75ce8c1d73e5L

    :goto_2
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    sget-boolean v1, Lpubgm/loader/activity/MainActivity;->modestatus:Z

    if-eqz v1, :cond_3

    const-wide v1, -0x75cc8c1d73e5L

    goto :goto_2

    :cond_3
    const-wide v1, -0x75f28c1d73e5L

    goto :goto_2

    .line 1648
    .local v1, "status":Ljava/lang/String;
    :goto_3
    sget-boolean v2, Lpubgm/loader/activity/MainActivity;->kernel:Z

    if-eqz v2, :cond_4

    const-wide v2, -0x75f08c1d73e5L

    :goto_4
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_4
    sget v2, Lpubgm/loader/activity/MainActivity;->bitversi:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    const-wide v2, -0x75f58c1d73e5L

    goto :goto_4

    :cond_5
    const-wide v2, -0x75fa8c1d73e5L

    goto :goto_4

    .line 1649
    .local v2, "bit":Ljava/lang/String;
    :goto_5
    sget-boolean v3, Lpubgm/loader/activity/MainActivity;->kernel:Z

    if-eqz v3, :cond_6

    const-wide v3, -0x75ff8c1d73e5L

    :goto_6
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_6
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide v3, -0x75fe8c1d73e5L

    goto :goto_6

    :cond_7
    const-wide v3, -0x75fd8c1d73e5L

    goto :goto_6

    .line 1651
    .local v3, "rootaccess":Ljava/lang/String;
    :goto_7
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->isServiceRunning()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lpubgm/loader/activity/MainActivity;->loadAssets(Ljava/lang/String;)V

    .line 1653
    const-wide v4, -0x75fc8c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lpubgm/loader/activity/MainActivity;->loadAssets(Ljava/lang/String;)V

    .line 1654
    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v5

    const-class v6, Lpubgm/loader/floating/FloatService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lpubgm/loader/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_8

    .line 1657
    :cond_8
    const v4, 0x7f0800f3

    const v5, 0x7f1301fc

    invoke-virtual {p0, v5}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V

    .line 1659
    :goto_8
    return-void
.end method

.method private startPatcher()V
    .locals 5

    .line 1635
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 1636
    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x74008c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x75d68c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1638
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x7b

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1639
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 1640
    :cond_0
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->startFloater()V

    .line 1643
    :cond_1
    :goto_0
    return-void
.end method

.method private stopPatcher()V
    .locals 3

    .line 1662
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/FloatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1663
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/Overlay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1664
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleAim;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1665
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleBullet;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1666
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleSimulation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1667
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/FightMode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1668
    return-void
.end method

.method private native tiwanstatus()Ljava/lang/String;
.end method

.method private unInstallWithDellay(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1439
    invoke-static {}, Lpubgm/loader/utils/UiKit;->defer()Lorg/jdeferred/android/AndroidDeferredManager;

    move-result-object v0

    new-instance v1, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda3;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jdeferred/android/AndroidDeferredManager;->when(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda4;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V

    .line 1447
    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    .line 1452
    return-void
.end method

.method private updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "button"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;

    .line 269
    const-wide v0, -0x7f418c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 271
    const-wide v0, -0x7f468c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 272
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setAlpha(F)V

    .line 273
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setEnabled(Z)V

    .line 277
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setAlpha(F)V

    .line 279
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 280
    invoke-virtual {p0, p0, p2}, Lpubgm/loader/activity/MainActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0, p2}, Lpubgm/loader/activity/MainActivity;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    const-wide v0, -0x7f4f8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 284
    :cond_1
    const-wide v0, -0x7f728c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    :cond_2
    const-wide v0, -0x7f7b8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_3
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    invoke-virtual {p0, p2}, Lpubgm/loader/activity/MainActivity;->isRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 292
    const-wide v0, -0x7f638c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :cond_4
    const-wide v0, -0x7f668c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_5
    const-wide v0, -0x7f6f8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const-wide v0, -0x7f178c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 301
    :goto_0
    return-void
.end method

.method private updateStatus(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "rawStatus"    # Ljava/lang/String;

    .line 217
    const-wide v0, -0x7e3b8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "statusText":Ljava/lang/String;
    const-wide v1, -0x7e218c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "statusValue":Ljava/lang/String;
    const v2, -0x777778

    .line 221
    .local v2, "color":I
    const-wide v3, -0x7e208c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const-wide v3, -0x7e258c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 223
    const-wide v3, -0x7e288c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 224
    :cond_0
    const-wide v3, -0x7fd08c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    const-wide v3, -0x7fd48c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 226
    const-wide v3, -0x7fdd8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 228
    :cond_1
    :goto_0
    new-instance v3, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 229
    .local v3, "spannable":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 230
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v4, -0x1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    return-void
.end method

.method private updateTextStates()V
    .locals 6

    .line 235
    const v0, 0x7f0a0102

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 236
    .local v0, "bgmiText":Landroid/widget/TextView;
    const v1, 0x7f0a01ac

    invoke-virtual {p0, v1}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 237
    .local v1, "globalText":Landroid/widget/TextView;
    const v2, 0x7f0a0207

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 238
    .local v2, "koreaText":Landroid/widget/TextView;
    const v3, 0x7f0a0394

    invoke-virtual {p0, v3}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 239
    .local v3, "taiwanText":Landroid/widget/TextView;
    const v4, 0x7f0a03d2

    invoke-virtual {p0, v4}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 241
    .local v4, "vngText":Landroid/widget/TextView;
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->bgmistatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lpubgm/loader/activity/MainActivity;->updateStatus(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 242
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->globalstatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lpubgm/loader/activity/MainActivity;->updateStatus(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->koreastatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lpubgm/loader/activity/MainActivity;->updateStatus(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->tiwanstatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v5}, Lpubgm/loader/activity/MainActivity;->updateStatus(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 245
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->vngstatus()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lpubgm/loader/activity/MainActivity;->updateStatus(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private native vngstatus()Ljava/lang/String;
.end method


# virtual methods
.method public Exec(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "toast"    # Ljava/lang/String;

    .line 1483
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x7b268c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74d58c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x74db8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74dc8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x74c28c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74cf8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x74cd8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V

    .line 1487
    const v0, 0x7f0800e8

    invoke-static {v0, p2}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    goto :goto_0

    .line 1488
    :catch_0
    move-exception v0

    .line 1490
    :goto_0
    return-void
.end method

.method public Execc(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 1493
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x74cc8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74e38c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x74e18c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74ea8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x74e88c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x74958c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V

    .line 1496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x749b8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x749a8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->ExecuteElf(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    goto :goto_0

    .line 1497
    :catch_0
    move-exception v0

    .line 1499
    :goto_0
    return-void
.end method

.method public SettingESP()V
    .locals 4

    .line 1020
    const-wide v0, -0x79478c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-wide v2, -0x796d8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 1022
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-wide v2, -0x79348c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-wide v2, -0x7ac28c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {p0, v0, v3}, Lpubgm/loader/utils/ActivityCompat;->requestPermissions(Lpubgm/loader/activity/MainActivity;[Ljava/lang/String;I)V

    .line 1029
    :cond_1
    const-wide v2, -0x7ae98c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/activity/MainActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 1032
    const v0, 0x7f0a02f1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda0;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1041
    const v0, 0x7f0a0186

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda11;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1050
    const v0, 0x7f0a02de

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda22;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1054
    return-void
.end method

.method public addAdditionalApp(ZLjava/lang/String;)V
    .locals 2
    .param p1, "system"    # Z
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1290
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1291
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lpubgm/loader/activity/MainActivity$13;

    invoke-direct {v1, p0, p2}, Lpubgm/loader/activity/MainActivity$13;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1311
    return-void
.end method

.method public devicecheck()V
    .locals 3

    .line 306
    const v0, 0x7f0a0389

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lpubgm/loader/activity/MainActivity;->root:Landroid/widget/TextView;

    .line 307
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x7f1f8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x7f098c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x7f0d8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->modeselect:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->root:Landroid/widget/TextView;

    const v1, 0x7f1301f1

    invoke-virtual {p0, v1}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    const/4 v0, 0x1

    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->Ischeck:Z

    .line 311
    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->noroot:Z

    .line 312
    sput v0, Lpubgm/loader/activity/MainActivity;->device:I

    goto :goto_0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x7f328c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x7f278c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x7f2b8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->modeselect:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->root:Landroid/widget/TextView;

    const v1, 0x7f1301ca

    invoke-virtual {p0, v1}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->Ischeck:Z

    .line 317
    const/4 v0, 0x2

    sput v0, Lpubgm/loader/activity/MainActivity;->device:I

    .line 319
    :goto_0
    return-void
.end method

.method public doHideProgress()V
    .locals 2

    .line 1589
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-nez v0, :cond_0

    .line 1590
    return-void

    .line 1592
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndeterminate(Z)V

    .line 1593
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setVisibility(I)V

    .line 1594
    return-void
.end method

.method public doShowProgress(Z)V
    .locals 3
    .param p1, "indeterminate"    # Z

    .line 1574
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-nez v0, :cond_0

    .line 1575
    return-void

    .line 1577
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setVisibility(I)V

    .line 1578
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, p1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndeterminate(Z)V

    .line 1580
    if-nez p1, :cond_2

    .line 1581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_1

    .line 1582
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setMin(I)V

    .line 1584
    :cond_1
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setMax(I)V

    .line 1586
    :cond_2
    return-void
.end method

.method gameversion(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "a"    # Landroid/widget/LinearLayout;
    .param p2, "b"    # Landroid/widget/LinearLayout;
    .param p3, "c"    # Landroid/widget/LinearLayout;
    .param p4, "d"    # Landroid/widget/LinearLayout;
    .param p5, "e"    # Landroid/widget/LinearLayout;

    .line 1115
    const v0, 0x7f080089

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1116
    const v0, 0x7f080088

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1117
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1118
    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1119
    invoke-virtual {p5, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 1120
    return-void
.end method

.method public getApplicationInfoContainer(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1352
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1353
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v0

    const v2, 0x7f0800f3

    const-wide v3, -0x7b8c8c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lpubgm/loader/BoxApplication;->showToastWithImage(ILjava/lang/CharSequence;)V

    .line 1354
    return-object v1

    .line 1357
    :cond_0
    const/4 v0, 0x0

    .line 1359
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaPackageManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1362
    nop

    .line 1363
    if-nez v0, :cond_1

    .line 1364
    return-object v1

    .line 1366
    :cond_1
    return-object v0

    .line 1360
    :catch_0
    move-exception v1

    .line 1361
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getProgresBar()Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .locals 1

    .line 1567
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    if-nez v0, :cond_0

    .line 1568
    const v0, 0x7f0a02c0

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    iput-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 1570
    :cond_0
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->progres:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    return-object v0
.end method

.method init()V
    .locals 25

    .line 1124
    move-object/from16 v10, p0

    const v0, 0x7f01000c

    invoke-static {v10, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v11

    .line 1125
    .local v11, "animation":Landroid/view/animation/Animation;
    const v0, 0x7f0a027d

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1126
    .local v12, "navhome":Landroid/widget/LinearLayout;
    const v0, 0x7f0a0286

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1127
    .local v13, "navsetting":Landroid/widget/LinearLayout;
    const v0, 0x7f0a0174

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1128
    .local v14, "effecthome":Landroid/widget/LinearLayout;
    const v0, 0x7f0a0175

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1129
    .local v15, "effectsetting":Landroid/widget/LinearLayout;
    const v0, 0x7f0a01d1

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1130
    .local v16, "menu1":Landroid/widget/LinearLayout;
    const v0, 0x7f0a01d2

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1131
    .local v17, "menu2":Landroid/widget/LinearLayout;
    const v0, 0x7f0a01d3

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/ImageView;

    .line 1132
    .local v18, "home":Landroid/widget/ImageView;
    const v0, 0x7f0a01d4

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/ImageView;

    .line 1133
    .local v19, "sett":Landroid/widget/ImageView;
    const v0, 0x7f0a03b8

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/widget/TextView;

    .line 1134
    .local v20, "txtsett":Landroid/widget/TextView;
    const v0, 0x7f0a03b7

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/widget/TextView;

    .line 1135
    .local v21, "txthome":Landroid/widget/TextView;
    const v0, 0x7f0a0321

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 1138
    .local v9, "sidebar":Landroid/widget/ImageView;
    const v0, 0x7f0a0025

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 1139
    .local v8, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    const v0, 0x7f0a0285

    invoke-virtual {v10, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationView;

    iput-object v0, v10, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    .line 1142
    if-eqz v0, :cond_2

    .line 1143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v1

    .line 1144
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 1145
    const v0, 0x7f0a0205

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 1146
    .local v2, "username":Landroid/widget/TextView;
    const v0, 0x7f0a0206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 1148
    .local v3, "keyexpiry":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lpubgm/loader/activity/LoginActivity;->PASSKEY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lpubgm/loader/activity/LoginActivity;->USERKEY:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    .local v0, "keyText":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1151
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    .end local v0    # "keyText":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_2

    .line 1157
    :try_start_0
    invoke-static {}, Lpubgm/loader/activity/MainActivity;->EXP()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "expiryInfo":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x7a3c8c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1161
    :cond_1
    const-wide v4, -0x7a2a8c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1165
    .end local v0    # "expiryInfo":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    const-wide v4, -0x7bf18c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "headerView":Landroid/view/View;
    .end local v2    # "username":Landroid/widget/TextView;
    .end local v3    # "keyexpiry":Landroid/widget/TextView;
    :cond_2
    :goto_1
    iget-object v0, v10, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    new-instance v7, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda12;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move-object/from16 v22, v11

    move-object v11, v7

    .end local v11    # "animation":Landroid/view/animation/Animation;
    .local v22, "animation":Landroid/view/animation/Animation;
    move-object/from16 v7, v18

    move-object/from16 v23, v8

    .end local v8    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .local v23, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    move-object/from16 v8, v19

    move-object/from16 v24, v14

    move-object v14, v9

    .end local v9    # "sidebar":Landroid/widget/ImageView;
    .local v14, "sidebar":Landroid/widget/ImageView;
    .local v24, "effecthome":Landroid/widget/LinearLayout;
    move-object/from16 v9, v23

    invoke-direct/range {v1 .. v9}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda12;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {v0, v11}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 1233
    nop

    .end local v23    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    .local v9, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    if-eqz v9, :cond_3

    iget-object v0, v10, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_3

    if-eqz v14, :cond_3

    .line 1235
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v0, v10, v9}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda13;-><init>(Lpubgm/loader/activity/MainActivity;Landroidx/drawerlayout/widget/DrawerLayout;)V

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1244
    new-instance v0, Lpubgm/loader/activity/MainActivity$12;

    invoke-direct {v0, v10}, Lpubgm/loader/activity/MainActivity$12;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v9, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->addDrawerListener(Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;)V

    .line 1267
    :cond_3
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda14;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v21

    move-object/from16 v6, v20

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda14;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1277
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda15;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda15;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1286
    return-void
.end method

.method public initMenu1()V
    .locals 26

    .line 336
    move-object/from16 v0, p0

    const v1, 0x7f0a0156

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 337
    .local v1, "deviceInfoTextView":Landroid/widget/TextView;
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 338
    .local v2, "manufacturer":Ljava/lang/String;
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 339
    .local v3, "androidVersion":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide v5, -0x7f288c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "deviceInfo":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    const v5, 0x7f0a01b6

    invoke-virtual {v0, v5}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 343
    .local v5, "layhome3":Landroid/widget/LinearLayout;
    const v6, 0x7f0a017f

    invoke-virtual {v0, v6}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/material/button/MaterialButton;

    .line 344
    .local v6, "esp64Button":Lcom/google/android/material/button/MaterialButton;
    const v7, 0x7f0a017e

    invoke-virtual {v0, v7}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/button/MaterialButton;

    .line 345
    .local v7, "esp32Button":Lcom/google/android/material/button/MaterialButton;
    const v8, 0x7f0a0352

    invoke-virtual {v0, v8}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/button/MaterialButton;

    .line 346
    .local v8, "systemModeBtn":Lcom/google/android/material/button/MaterialButton;
    const v9, 0x7f0a0204

    invoke-virtual {v0, v9}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/material/button/MaterialButton;

    .line 347
    .local v9, "kernelModeBtn":Lcom/google/android/material/button/MaterialButton;
    const v10, 0x7f0a0181

    invoke-virtual {v0, v10}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/google/android/material/button/MaterialButton;

    .line 348
    .local v10, "espsafe":Lcom/google/android/material/button/MaterialButton;
    const v11, 0x7f0a0182

    invoke-virtual {v0, v11}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/material/button/MaterialButton;

    .line 349
    .local v11, "espunsafe":Lcom/google/android/material/button/MaterialButton;
    const v12, 0x7f0a003b

    invoke-virtual {v0, v12}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/AppCompatButton;

    .line 350
    .local v12, "InstallBgmiBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v13, 0x7f0a003d

    invoke-virtual {v0, v13}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/widget/AppCompatButton;

    .line 351
    .local v13, "InstallGlobalBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v14, 0x7f0a003e

    invoke-virtual {v0, v14}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/AppCompatButton;

    .line 352
    .local v14, "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v15, 0x7f0a0041

    invoke-virtual {v0, v15}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/widget/AppCompatButton;

    .line 353
    .local v15, "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    move-object/from16 v16, v1

    .end local v1    # "deviceInfoTextView":Landroid/widget/TextView;
    .local v16, "deviceInfoTextView":Landroid/widget/TextView;
    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    .line 356
    .local v1, "InstallTWBtn":Landroidx/appcompat/widget/AppCompatButton;
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 357
    const-wide v17, -0x78d48c1d73e5L

    move-object/from16 v19, v2

    .end local v2    # "manufacturer":Ljava/lang/String;
    .local v19, "manufacturer":Ljava/lang/String;
    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const-wide v17, -0x78de8c1d73e5L

    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 359
    const-wide v17, -0x78c08c1d73e5L

    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const-wide v17, -0x78ca8c1d73e5L

    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 361
    const-wide v17, -0x78cc8c1d73e5L

    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    .end local v19    # "manufacturer":Ljava/lang/String;
    .restart local v2    # "manufacturer":Ljava/lang/String;
    :cond_0
    move-object/from16 v19, v2

    .line 369
    .end local v2    # "manufacturer":Ljava/lang/String;
    .restart local v19    # "manufacturer":Ljava/lang/String;
    :goto_0
    const-wide v17, -0x78f68c1d73e5L

    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v1

    .end local v1    # "InstallTWBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v17, "InstallTWBtn":Landroidx/appcompat/widget/AppCompatButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lpubgm/loader/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 370
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 373
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-wide v20, -0x78fd8c1d73e5L

    move-object/from16 v22, v3

    .end local v3    # "androidVersion":Ljava/lang/String;
    .local v22, "androidVersion":Ljava/lang/String;
    invoke-static/range {v20 .. v21}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v20, v4

    .end local v4    # "deviceInfo":Ljava/lang/String;
    .local v20, "deviceInfo":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 374
    .local v3, "isEsp64Selected":Z
    const-wide v23, -0x78ef8c1d73e5L

    invoke-static/range {v23 .. v24}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v5

    const/4 v5, 0x0

    .end local v5    # "layhome3":Landroid/widget/LinearLayout;
    .local v23, "layhome3":Landroid/widget/LinearLayout;
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 375
    .local v4, "isKernelMode":Z
    const-wide v24, -0x78988c1d73e5L

    invoke-static/range {v24 .. v25}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v18, v12

    const/4 v12, 0x1

    .end local v12    # "InstallBgmiBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v18, "InstallBgmiBtn":Landroidx/appcompat/widget/AppCompatButton;
    invoke-interface {v2, v5, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 378
    .local v5, "isEspSafe":Z
    const v12, 0x7f06030c

    if-eqz v3, :cond_1

    .line 379
    move-object/from16 v24, v2

    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    .local v24, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 380
    invoke-virtual {v6, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06031d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 382
    invoke-virtual {v7, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    goto :goto_1

    .line 384
    .end local v24    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    move-object/from16 v24, v2

    const v12, 0x7f06031d

    .end local v2    # "sharedPreferences":Landroid/content/SharedPreferences;
    .restart local v24    # "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06030c

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 385
    invoke-virtual {v7, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 386
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06031d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 387
    invoke-virtual {v6, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 390
    :goto_1
    if-nez v4, :cond_2

    .line 391
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06030c

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 392
    invoke-virtual {v8, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06031d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 394
    invoke-virtual {v9, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    goto :goto_2

    .line 396
    :cond_2
    const v12, 0x7f06031d

    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06030c

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 397
    invoke-virtual {v9, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06031d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 399
    invoke-virtual {v8, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 402
    :goto_2
    if-eqz v5, :cond_3

    .line 403
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06030c

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 404
    invoke-virtual {v10, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06031d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 406
    invoke-virtual {v11, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    goto :goto_3

    .line 408
    :cond_3
    const v2, 0x7f06031d

    const v12, 0x7f06030c

    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 409
    invoke-virtual {v11, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 410
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f06031d

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v10, v2}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 411
    invoke-virtual {v10, v12}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 415
    :goto_3
    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v2, v0, v6, v7, v1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda18;-><init>(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v6, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, v0, v7, v6, v1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda19;-><init>(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v7, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0, v8, v9, v1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda20;-><init>(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v8, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0, v9, v8, v1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda21;-><init>(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v9, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v2, v0, v10, v11, v1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda23;-><init>(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v10, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v2, v0, v11, v10, v1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda24;-><init>(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v11, v2}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    return-void
.end method

.method initMenu2()V
    .locals 30

    .line 477
    move-object/from16 v1, p0

    const v0, 0x7f0a003b

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 478
    .local v2, "InstallBgmiBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v0, 0x7f0a003d

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 479
    .local v3, "InstallGlobalBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v0, 0x7f0a003e

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 480
    .local v4, "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v0, 0x7f0a0041

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 481
    .local v5, "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v0, 0x7f0a003f

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    .line 482
    .local v6, "InstallTWBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v0, 0x7f0a0040

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatButton;

    .line 483
    .local v7, "InstallTwitterBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v0, 0x7f0a003c

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/AppCompatButton;

    .line 484
    .local v8, "installFbButton":Landroidx/appcompat/widget/AppCompatButton;
    const v0, 0x7f0a0156

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 485
    .local v9, "deviceInfoTextView":Landroid/widget/TextView;
    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 486
    .local v10, "manufacturer":Ljava/lang/String;
    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 487
    .local v11, "androidVersion":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v12, -0x78808c1d73e5L

    invoke-static {v12, v13}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 488
    .local v12, "deviceInfo":Ljava/lang/String;
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    const v0, 0x7f0a02af

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    .line 493
    .local v13, "play":Landroid/widget/ImageView;
    const/4 v14, 0x1

    new-array v0, v14, [Z

    const/4 v15, 0x0

    aput-boolean v15, v0, v15

    move-object/from16 v16, v0

    .line 495
    .local v16, "isPlaying":[Z
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda29;

    move-object/from16 v14, v16

    .end local v16    # "isPlaying":[Z
    .local v14, "isPlaying":[Z
    invoke-direct {v0, v1, v14, v13}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda29;-><init>(Lpubgm/loader/activity/MainActivity;[ZLandroid/widget/ImageView;)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    const-wide v18, -0x788c8c1d73e5L

    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v15

    .line 514
    .local v15, "Twitter":Ljava/lang/String;
    new-instance v0, Lpubgm/loader/activity/MainActivity$1;

    invoke-direct {v0, v1, v15, v7}, Lpubgm/loader/activity/MainActivity$1;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 537
    new-instance v0, Lpubgm/loader/activity/MainActivity$2;

    invoke-direct {v0, v1, v15, v7}, Lpubgm/loader/activity/MainActivity$2;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 548
    const-wide v18, -0x78a08c1d73e5L

    move-object/from16 v20, v7

    .end local v7    # "InstallTwitterBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v20, "InstallTwitterBtn":Landroidx/appcompat/widget/AppCompatButton;
    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    .line 549
    .local v7, "FaceBook":Ljava/lang/String;
    new-instance v0, Lpubgm/loader/activity/MainActivity$3;

    invoke-direct {v0, v1, v7, v8}, Lpubgm/loader/activity/MainActivity$3;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    new-instance v0, Lpubgm/loader/activity/MainActivity$4;

    invoke-direct {v0, v1, v7, v8}, Lpubgm/loader/activity/MainActivity$4;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 585
    const-wide v18, -0x78548c1d73e5L

    move-object/from16 v21, v7

    .end local v7    # "FaceBook":Ljava/lang/String;
    .local v21, "FaceBook":Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    .line 587
    .local v7, "packageNameBG":Ljava/lang/String;
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda30;

    invoke-direct {v0, v1, v7, v2}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda30;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    new-instance v0, Lpubgm/loader/activity/MainActivity$5;

    invoke-direct {v0, v1, v7, v2}, Lpubgm/loader/activity/MainActivity$5;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 638
    const-wide v18, -0x784b8c1d73e5L

    move-object/from16 v22, v2

    .end local v2    # "InstallBgmiBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v22, "InstallBgmiBtn":Landroidx/appcompat/widget/AppCompatButton;
    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, "packageNameGl":Ljava/lang/String;
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda31;

    invoke-direct {v0, v1, v2, v3}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda31;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 678
    new-instance v0, Lpubgm/loader/activity/MainActivity$6;

    invoke-direct {v0, v1, v2, v3}, Lpubgm/loader/activity/MainActivity$6;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 692
    const-wide v18, -0x78748c1d73e5L

    move-object/from16 v23, v2

    .end local v2    # "packageNameGl":Ljava/lang/String;
    .local v23, "packageNameGl":Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "packageNameKr":Ljava/lang/String;
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda32;

    invoke-direct {v0, v1, v2, v4}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda32;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 732
    new-instance v0, Lpubgm/loader/activity/MainActivity$7;

    invoke-direct {v0, v1, v2, v4}, Lpubgm/loader/activity/MainActivity$7;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 744
    const-wide v18, -0x786a8c1d73e5L

    move-object/from16 v24, v2

    .end local v2    # "packageNameKr":Ljava/lang/String;
    .local v24, "packageNameKr":Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "packageNameVng":Ljava/lang/String;
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda33;

    invoke-direct {v0, v1, v2, v5}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda33;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 783
    new-instance v0, Lpubgm/loader/activity/MainActivity$8;

    invoke-direct {v0, v1, v2, v5}, Lpubgm/loader/activity/MainActivity$8;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v5, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 794
    const-wide v18, -0x781f8c1d73e5L

    move-object/from16 v25, v2

    .end local v2    # "packageNameVng":Ljava/lang/String;
    .local v25, "packageNameVng":Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "packageNameTw":Ljava/lang/String;
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda34;

    invoke-direct {v0, v1, v2, v6}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda34;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    new-instance v0, Lpubgm/loader/activity/MainActivity$9;

    invoke-direct {v0, v1, v2, v6}, Lpubgm/loader/activity/MainActivity$9;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 844
    const-wide v18, -0x780f8c1d73e5L

    invoke-static/range {v18 .. v19}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    const/4 v2, 0x0

    .end local v2    # "packageNameTw":Ljava/lang/String;
    .end local v3    # "InstallGlobalBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v18, "packageNameTw":Ljava/lang/String;
    .local v19, "InstallGlobalBtn":Landroidx/appcompat/widget/AppCompatButton;
    invoke-virtual {v1, v0, v2}, Lpubgm/loader/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 845
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 848
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-wide v26, -0x78368c1d73e5L

    invoke-static/range {v26 .. v27}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    const-wide v26, -0x78238c1d73e5L

    :try_start_0
    invoke-static/range {v26 .. v27}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v26, v4

    const/4 v4, 0x0

    .end local v4    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v26, "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    :try_start_1
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 865
    move-object/from16 v28, v5

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 852
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v26    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v4    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    :catch_1
    move-exception v0

    move-object/from16 v26, v4

    .end local v4    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v26    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    :goto_0
    move-object v4, v0

    .line 855
    .local v4, "e":Ljava/lang/ClassCastException;
    const-wide v27, -0x78288c1d73e5L

    :try_start_2
    invoke-static/range {v27 .. v28}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v27, v4

    const/4 v4, 0x0

    .end local v4    # "e":Ljava/lang/ClassCastException;
    .local v27, "e":Ljava/lang/ClassCastException;
    :try_start_3
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 856
    .local v0, "oldValue":I
    const-wide v28, -0x79d58c1d73e5L

    invoke-static/range {v28 .. v29}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v28, v5

    const/4 v5, 0x1

    .end local v5    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v28, "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    if-ne v0, v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    :try_start_4
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 857
    const-wide v4, -0x79c28c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 858
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2

    .line 864
    .end local v0    # "oldValue":I
    const/4 v5, 0x0

    goto :goto_3

    .line 859
    :catch_2
    move-exception v0

    goto :goto_2

    .end local v28    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v5    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    :catch_3
    move-exception v0

    move-object/from16 v28, v5

    .end local v5    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v28    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    goto :goto_2

    .end local v27    # "e":Ljava/lang/ClassCastException;
    .end local v28    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v4    # "e":Ljava/lang/ClassCastException;
    .restart local v5    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    :catch_4
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    .line 861
    .end local v4    # "e":Ljava/lang/ClassCastException;
    .end local v5    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v0, "e2":Ljava/lang/ClassCastException;
    .restart local v27    # "e":Ljava/lang/ClassCastException;
    .restart local v28    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    :goto_2
    const-wide v4, -0x79cf8c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 862
    const-wide v4, -0x79f48c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 863
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 848
    .end local v0    # "e2":Ljava/lang/ClassCastException;
    .end local v26    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    .end local v27    # "e":Ljava/lang/ClassCastException;
    .end local v28    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    .local v4, "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v5    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    :cond_1
    move-object/from16 v26, v4

    move-object/from16 v28, v5

    const/4 v5, 0x0

    .line 869
    .end local v4    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    .end local v5    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v26    # "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    .restart local v28    # "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    :goto_3
    const-wide v16, -0x79e18c1d73e5L

    invoke-static/range {v16 .. v17}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 872
    .local v0, "isHideRecordEnabled":Z
    const v4, 0x7f0a01be

    invoke-virtual {v1, v4}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 873
    .local v4, "hideRecordButton":Landroidx/appcompat/widget/AppCompatButton;
    if-eqz v0, :cond_2

    .line 874
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move/from16 v27, v0

    .end local v0    # "isHideRecordEnabled":Z
    .local v27, "isHideRecordEnabled":Z
    const v0, 0x7f06006f

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    .line 875
    const v0, 0x7f080084

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v5}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_4

    .line 877
    .end local v27    # "isHideRecordEnabled":Z
    .restart local v0    # "isHideRecordEnabled":Z
    :cond_2
    move/from16 v27, v0

    const v0, 0x7f080084

    const/4 v5, 0x0

    .end local v0    # "isHideRecordEnabled":Z
    .restart local v27    # "isHideRecordEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f06030c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    .line 878
    const v0, 0x7f080084

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v5}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 881
    :goto_4
    new-instance v0, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda35;

    invoke-direct {v0, v1, v2, v4}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda35;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/content/SharedPreferences$Editor;Landroidx/appcompat/widget/AppCompatButton;)V

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 907
    const v0, 0x7f0a0294

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda1;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 922
    iget-object v0, v1, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    if-eqz v0, :cond_3

    .line 923
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/android/material/navigation/NavigationView;->getHeaderView(I)Landroid/view/View;

    move-result-object v0

    .line 924
    .local v0, "headerView":Landroid/view/View;
    invoke-direct {v1, v0}, Lpubgm/loader/activity/MainActivity;->initStorageMonitoring(Landroid/view/View;)V

    .line 925
    invoke-direct {v1, v0}, Lpubgm/loader/activity/MainActivity;->initRAMMonitoring(Landroid/view/View;)V

    .line 927
    .end local v0    # "headerView":Landroid/view/View;
    :cond_3
    return-void
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1371
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaPackageManager;->isInnerAppInstalled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1372
    :catch_0
    move-exception v0

    .line 1373
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 323
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return v1

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return v2
.end method

.method public isRunning(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1337
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lnet_62v/external/MetaActivityManager;->isAppRunning(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1338
    :catch_0
    move-exception v0

    .line 1339
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic lambda$SettingESP$23$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1034
    :try_start_0
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->importSharedPreferences()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    goto :goto_0

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1037
    const-wide v1, -0x77c08c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1039
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method synthetic lambda$SettingESP$24$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 1043
    :try_start_0
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->exportSharedPreferences()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    goto :goto_0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1046
    const-wide v1, -0x77d18c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1048
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method synthetic lambda$SettingESP$25$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1051
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->resetSharedPreferences()V

    .line 1052
    const-wide v0, -0x76278c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1053
    return-void
.end method

.method synthetic lambda$init$26$pubgm-loader-activity-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "menu1"    # Landroid/widget/LinearLayout;
    .param p2, "menu2"    # Landroid/widget/LinearLayout;
    .param p3, "txthome"    # Landroid/widget/TextView;
    .param p4, "txtsett"    # Landroid/widget/TextView;
    .param p5, "home"    # Landroid/widget/ImageView;
    .param p6, "sett"    # Landroid/widget/ImageView;
    .param p7, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p8, "item"    # Landroid/view/MenuItem;

    .line 1172
    invoke-interface {p8}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1174
    .local v0, "id":I
    const v1, 0x7f06006e

    const v2, 0x7f06030c

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x7f0a01c2

    if-ne v0, v5, :cond_0

    .line 1176
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1177
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1178
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1179
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1180
    const v1, 0x7f0800f6

    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1181
    const v1, 0x7f080172

    invoke-virtual {p6, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 1182
    :cond_0
    const v5, 0x7f0a031a

    if-ne v0, v5, :cond_1

    .line 1184
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1185
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1186
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1187
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1188
    const v1, 0x7f0800f7

    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1189
    const v1, 0x7f0800f5

    invoke-virtual {p6, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 1190
    :cond_1
    const v1, 0x7f0a021b

    if-ne v0, v1, :cond_2

    .line 1193
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-wide v2, -0x76818c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lpubgm/loader/server/ApiServer;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1194
    .local v1, "telegram":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "telegram":Landroid/content/Intent;
    goto :goto_0

    .line 1195
    :catch_0
    move-exception v1

    .line 1196
    .local v1, "e":Ljava/lang/Exception;
    const-wide v2, -0x76be8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1197
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_3

    .line 1198
    :cond_2
    const v1, 0x7f0a0219

    if-ne v0, v1, :cond_3

    .line 1201
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-wide v2, -0x76578c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lpubgm/loader/server/ApiServer;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1202
    .local v1, "telegram":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v1    # "telegram":Landroid/content/Intent;
    goto :goto_1

    .line 1203
    :catch_1
    move-exception v1

    .line 1204
    .local v1, "e":Ljava/lang/Exception;
    const-wide v2, -0x764c8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1205
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_3

    .line 1206
    :cond_3
    const v1, 0x7f0a021a

    if-ne v0, v1, :cond_4

    .line 1209
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-wide v2, -0x76658c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lpubgm/loader/server/ApiServer;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1210
    .local v1, "telegram":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v1    # "telegram":Landroid/content/Intent;
    goto :goto_2

    .line 1211
    :catch_2
    move-exception v1

    .line 1212
    .local v1, "e":Ljava/lang/Exception;
    const-wide v2, -0x76028c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1213
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 1214
    :cond_4
    const v1, 0x7f0a022d

    if-ne v0, v1, :cond_5

    .line 1216
    const-wide v1, -0x763b8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lpubgm/loader/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1217
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1218
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1219
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1221
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lpubgm/loader/activity/LoginActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1222
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x14000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1223
    invoke-virtual {p0, v3}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1224
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->finish()V

    .line 1228
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_3
    iget-object v1, p0, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p7, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1229
    const/4 v1, 0x1

    return v1
.end method

.method synthetic lambda$init$27$pubgm-loader-activity-MainActivity(Landroidx/drawerlayout/widget/DrawerLayout;Landroid/view/View;)V
    .locals 1
    .param p1, "drawerLayout"    # Landroidx/drawerlayout/widget/DrawerLayout;
    .param p2, "v"    # Landroid/view/View;

    .line 1236
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    goto :goto_0

    .line 1239
    :cond_0
    iget-object v0, p0, Lpubgm/loader/activity/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1241
    :goto_0
    return-void
.end method

.method synthetic lambda$init$28$pubgm-loader-activity-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 2
    .param p1, "menu1"    # Landroid/widget/LinearLayout;
    .param p2, "menu2"    # Landroid/widget/LinearLayout;
    .param p3, "txthome"    # Landroid/widget/TextView;
    .param p4, "txtsett"    # Landroid/widget/TextView;
    .param p5, "home"    # Landroid/widget/ImageView;
    .param p6, "sett"    # Landroid/widget/ImageView;
    .param p7, "v"    # Landroid/view/View;

    .line 1268
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1269
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1271
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1272
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1273
    const v0, 0x7f0800f6

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1274
    const v0, 0x7f080172

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1275
    return-void
.end method

.method synthetic lambda$init$29$pubgm-loader-activity-MainActivity(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 2
    .param p1, "menu1"    # Landroid/widget/LinearLayout;
    .param p2, "menu2"    # Landroid/widget/LinearLayout;
    .param p3, "txthome"    # Landroid/widget/TextView;
    .param p4, "txtsett"    # Landroid/widget/TextView;
    .param p5, "home"    # Landroid/widget/ImageView;
    .param p6, "sett"    # Landroid/widget/ImageView;
    .param p7, "v"    # Landroid/view/View;

    .line 1278
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1279
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1281
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1282
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1283
    const v0, 0x7f0800f7

    invoke-virtual {p5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1284
    const v0, 0x7f0800f5

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1285
    return-void
.end method

.method synthetic lambda$initMenu1$0$pubgm-loader-activity-MainActivity(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 2
    .param p1, "esp64Button"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "esp32Button"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "v"    # Landroid/view/View;

    .line 416
    const/16 v0, 0x40

    sput v0, Lpubgm/loader/activity/MainActivity;->bitversi:I

    .line 417
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 418
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 419
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 420
    invoke-virtual {p2, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 421
    const-wide v0, -0x70798c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    return-void
.end method

.method synthetic lambda$initMenu1$1$pubgm-loader-activity-MainActivity(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 2
    .param p1, "esp32Button"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "esp64Button"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "v"    # Landroid/view/View;

    .line 425
    const/16 v0, 0x20

    sput v0, Lpubgm/loader/activity/MainActivity;->bitversi:I

    .line 426
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 427
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 428
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 429
    invoke-virtual {p2, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 430
    const-wide v0, -0x704f8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 431
    return-void
.end method

.method synthetic lambda$initMenu1$2$pubgm-loader-activity-MainActivity(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 3
    .param p1, "systemModeBtn"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "kernelModeBtn"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "view"    # Landroid/view/View;

    .line 434
    const/4 v0, 0x0

    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->kernel:Z

    .line 435
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06030c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 436
    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 437
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 438
    invoke-virtual {p2, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 439
    const-wide v1, -0x705e8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 440
    return-void
.end method

.method synthetic lambda$initMenu1$3$pubgm-loader-activity-MainActivity(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 3
    .param p1, "kernelModeBtn"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "systemModeBtn"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "view"    # Landroid/view/View;

    .line 443
    const/4 v0, 0x1

    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->kernel:Z

    .line 444
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06030c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 445
    invoke-virtual {p1, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 446
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06031d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 447
    invoke-virtual {p2, v2}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 448
    const-wide v1, -0x70ad8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 449
    return-void
.end method

.method synthetic lambda$initMenu1$4$pubgm-loader-activity-MainActivity(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 2
    .param p1, "espsafe"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "espunsafe"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "v"    # Landroid/view/View;

    .line 452
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 453
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 454
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 455
    invoke-virtual {p2, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 456
    const/4 v0, 0x0

    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->modestatus:Z

    .line 457
    const-wide v0, -0x70a58c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 458
    return-void
.end method

.method synthetic lambda$initMenu1$5$pubgm-loader-activity-MainActivity(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/button/MaterialButton;Landroid/content/SharedPreferences$Editor;Landroid/view/View;)V
    .locals 2
    .param p1, "espunsafe"    # Lcom/google/android/material/button/MaterialButton;
    .param p2, "espsafe"    # Lcom/google/android/material/button/MaterialButton;
    .param p3, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p4, "v"    # Landroid/view/View;

    .line 461
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06030c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 462
    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 463
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06031d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/MaterialButton;->setTextColor(I)V

    .line 464
    invoke-virtual {p2, v1}, Lcom/google/android/material/button/MaterialButton;->setIconTintResource(I)V

    .line 465
    const/4 v0, 0x1

    sput-boolean v0, Lpubgm/loader/activity/MainActivity;->modestatus:Z

    .line 466
    const-wide v0, -0x70bd8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 467
    return-void
.end method

.method synthetic lambda$initMenu2$10$pubgm-loader-activity-MainActivity(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 5
    .param p1, "packageNameGl"    # Ljava/lang/String;
    .param p2, "InstallGlobalBtn"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "v"    # Landroid/view/View;

    .line 641
    const/4 v0, 0x1

    sput v0, Lpubgm/loader/activity/MainActivity;->gameint:I

    .line 642
    sput-object p1, Lpubgm/loader/activity/MainActivity;->game:Ljava/lang/String;

    .line 643
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 644
    invoke-virtual {p0, p0, p1}, Lpubgm/loader/activity/MainActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const-wide v0, -0x70dd8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 646
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 647
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 648
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda2;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 651
    .end local v0    # "launchIntent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 652
    :cond_0
    const-wide v0, -0x70c08c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 653
    const v0, 0x7f0800f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1301c8

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 657
    :cond_1
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 658
    const-wide v0, -0x70c88c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 659
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->tryAddLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->launchApk(Ljava/lang/String;)V

    goto :goto_1

    .line 662
    :cond_2
    sget-boolean v1, Lpubgm/loader/service/MainService;->isRunning:Z

    if-nez v1, :cond_3

    .line 663
    const-wide v1, -0x70f18c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 664
    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 665
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getProgresBar()Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lpubgm/loader/libhelper/FileHelper;->tryInstallWithCopyObb(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    goto :goto_1

    .line 668
    :cond_3
    const-wide v0, -0x70f98c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 669
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_5

    .line 670
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->stopRunningApp(Ljava/lang/String;)V

    .line 671
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->stopPatcher()V

    .line 672
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x70fc8c1d73e5L

    goto :goto_0

    :cond_4
    const-wide v0, -0x70e58c1d73e5L

    :goto_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 677
    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$initMenu2$11$pubgm-loader-activity-MainActivity()V
    .locals 0

    .line 703
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->launchbypass()V

    .line 704
    return-void
.end method

.method synthetic lambda$initMenu2$12$pubgm-loader-activity-MainActivity(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 5
    .param p1, "packageNameKr"    # Ljava/lang/String;
    .param p2, "InstallKRBtn"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "v"    # Landroid/view/View;

    .line 695
    const/4 v0, 0x2

    sput v0, Lpubgm/loader/activity/MainActivity;->gameint:I

    .line 696
    sput-object p1, Lpubgm/loader/activity/MainActivity;->game:Ljava/lang/String;

    .line 697
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p0, p0, p1}, Lpubgm/loader/activity/MainActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const-wide v0, -0x770d8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 700
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 701
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 702
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda27;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 705
    .end local v0    # "launchIntent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 706
    :cond_0
    const-wide v0, -0x77308c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 707
    const v0, 0x7f0800f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1301c8

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 710
    :cond_1
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    const-wide v0, -0x77388c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->tryAddLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 713
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->launchApk(Ljava/lang/String;)V

    goto :goto_1

    .line 715
    :cond_2
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-nez v0, :cond_3

    .line 716
    const-wide v0, -0x77218c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 717
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 718
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getProgresBar()Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lpubgm/loader/libhelper/FileHelper;->tryInstallWithCopyObb(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    goto :goto_1

    .line 721
    :cond_3
    const-wide v0, -0x77298c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 722
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_5

    .line 723
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->stopRunningApp(Ljava/lang/String;)V

    .line 724
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->stopPatcher()V

    .line 725
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x772c8c1d73e5L

    goto :goto_0

    :cond_4
    const-wide v0, -0x70d58c1d73e5L

    :goto_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$initMenu2$13$pubgm-loader-activity-MainActivity()V
    .locals 0

    .line 755
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->launchbypass()V

    .line 756
    return-void
.end method

.method synthetic lambda$initMenu2$14$pubgm-loader-activity-MainActivity(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 5
    .param p1, "packageNameVng"    # Ljava/lang/String;
    .param p2, "InstallVNGBtn"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "v"    # Landroid/view/View;

    .line 747
    const/4 v0, 0x3

    sput v0, Lpubgm/loader/activity/MainActivity;->gameint:I

    .line 748
    sput-object p1, Lpubgm/loader/activity/MainActivity;->game:Ljava/lang/String;

    .line 749
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0, p0, p1}, Lpubgm/loader/activity/MainActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    const-wide v0, -0x777d8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 752
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 753
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 754
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda28;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 757
    .end local v0    # "launchIntent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 758
    :cond_0
    const-wide v0, -0x77608c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 759
    const v0, 0x7f0800f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1301c8

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 762
    :cond_1
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 763
    const-wide v0, -0x77688c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 764
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->tryAddLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 765
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->launchApk(Ljava/lang/String;)V

    goto :goto_1

    .line 767
    :cond_2
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-nez v0, :cond_3

    .line 768
    const-wide v0, -0x77118c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 769
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 770
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getProgresBar()Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lpubgm/loader/libhelper/FileHelper;->tryInstallWithCopyObb(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    goto :goto_1

    .line 773
    :cond_3
    const-wide v0, -0x77198c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 774
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_5

    .line 775
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->stopRunningApp(Ljava/lang/String;)V

    .line 776
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->stopPatcher()V

    .line 777
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x771c8c1d73e5L

    goto :goto_0

    :cond_4
    const-wide v0, -0x77058c1d73e5L

    :goto_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$initMenu2$15$pubgm-loader-activity-MainActivity()V
    .locals 0

    .line 806
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->launchbypass()V

    .line 807
    return-void
.end method

.method synthetic lambda$initMenu2$16$pubgm-loader-activity-MainActivity(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 5
    .param p1, "packageNameTw"    # Ljava/lang/String;
    .param p2, "InstallTWBtn"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "v"    # Landroid/view/View;

    .line 798
    const/4 v0, 0x4

    sput v0, Lpubgm/loader/activity/MainActivity;->gameint:I

    .line 799
    sput-object p1, Lpubgm/loader/activity/MainActivity;->game:Ljava/lang/String;

    .line 800
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    invoke-virtual {p0, p0, p1}, Lpubgm/loader/activity/MainActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const-wide v0, -0x77ad8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 803
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 804
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 805
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda26;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    .end local v0    # "launchIntent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 809
    :cond_0
    const-wide v0, -0x77508c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 810
    const v0, 0x7f0800f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1301c8

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 813
    :cond_1
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    const-wide v0, -0x77588c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 815
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->tryAddLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 816
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->launchApk(Ljava/lang/String;)V

    goto :goto_1

    .line 818
    :cond_2
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-nez v0, :cond_3

    .line 819
    const-wide v0, -0x77418c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 820
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 821
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getProgresBar()Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lpubgm/loader/libhelper/FileHelper;->tryInstallWithCopyObb(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    goto :goto_1

    .line 824
    :cond_3
    const-wide v0, -0x77498c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 825
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_5

    .line 826
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->stopRunningApp(Ljava/lang/String;)V

    .line 827
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->stopPatcher()V

    .line 828
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x774c8c1d73e5L

    goto :goto_0

    :cond_4
    const-wide v0, -0x77758c1d73e5L

    :goto_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 832
    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$initMenu2$17$pubgm-loader-activity-MainActivity(Landroid/content/SharedPreferences$Editor;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "hideRecordButton"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "sv"    # Landroid/view/View;

    .line 890
    const-wide v0, -0x77a08c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 891
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    .line 892
    const/4 v0, 0x0

    const v1, 0x7f080084

    invoke-virtual {p2, v0, v0, v1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 893
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->dismissBottomSheetDialog()V

    .line 894
    return-void
.end method

.method synthetic lambda$initMenu2$18$pubgm-loader-activity-MainActivity(Landroid/content/SharedPreferences$Editor;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 3
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "hideRecordButton"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "v1"    # Landroid/view/View;

    .line 897
    const-wide v0, -0x77bb8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 898
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f06030c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setTextColor(I)V

    .line 899
    const v0, 0x7f080084

    invoke-virtual {p2, v1, v1, v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 900
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->dismissBottomSheetDialog()V

    .line 901
    return-void
.end method

.method synthetic lambda$initMenu2$19$pubgm-loader-activity-MainActivity(Landroid/content/SharedPreferences$Editor;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 9
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .param p2, "hideRecordButton"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "v"    # Landroid/view/View;

    .line 883
    nop

    .line 884
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 885
    const v0, 0x7f130055

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 886
    const v0, 0x7f130062

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v7, p0, p1, p2}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda9;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/content/SharedPreferences$Editor;Landroidx/appcompat/widget/AppCompatButton;)V

    new-instance v8, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v8, p0, p1, p2}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda10;-><init>(Lpubgm/loader/activity/MainActivity;Landroid/content/SharedPreferences$Editor;Landroidx/appcompat/widget/AppCompatButton;)V

    .line 883
    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lpubgm/loader/activity/MainActivity;->showBottomSheetDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 904
    return-void
.end method

.method synthetic lambda$initMenu2$20$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 3
    .param p1, "sv"    # Landroid/view/View;

    .line 910
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x77f78c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 911
    .local v0, "intent":Landroid/content/Intent;
    const-wide v1, -0x77928c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 912
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 913
    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 914
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->dismissBottomSheetDialog()V

    .line 915
    return-void
.end method

.method synthetic lambda$initMenu2$21$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v1"    # Landroid/view/View;

    .line 916
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->dismissBottomSheetDialog()V

    .line 917
    return-void
.end method

.method synthetic lambda$initMenu2$22$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .line 909
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v0, 0x7f130055

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f130223

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v7, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda16;-><init>(Lpubgm/loader/activity/MainActivity;)V

    new-instance v8, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v8, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda17;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lpubgm/loader/activity/MainActivity;->showBottomSheetDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 919
    return-void
.end method

.method synthetic lambda$initMenu2$6$pubgm-loader-activity-MainActivity([ZLandroid/widget/ImageView;Landroid/view/View;)V
    .locals 3
    .param p1, "isPlaying"    # [Z
    .param p2, "play"    # Landroid/widget/ImageView;
    .param p3, "v"    # Landroid/view/View;

    .line 496
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    const v2, 0x7f080113

    if-nez v1, :cond_0

    .line 497
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 499
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->startPatcher()V

    .line 500
    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->stopPatcher()V

    .line 505
    aput-boolean v0, p1, v0

    .line 507
    :goto_0
    return-void
.end method

.method synthetic lambda$initMenu2$7$pubgm-loader-activity-MainActivity()V
    .locals 0

    .line 598
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->launchbypass()V

    .line 599
    return-void
.end method

.method synthetic lambda$initMenu2$8$pubgm-loader-activity-MainActivity(Ljava/lang/String;Landroidx/appcompat/widget/AppCompatButton;Landroid/view/View;)V
    .locals 5
    .param p1, "packageNameBG"    # Ljava/lang/String;
    .param p2, "InstallBgmiBtn"    # Landroidx/appcompat/widget/AppCompatButton;
    .param p3, "v"    # Landroid/view/View;

    .line 589
    const/4 v0, 0x5

    sput v0, Lpubgm/loader/activity/MainActivity;->gameint:I

    .line 590
    sput-object p1, Lpubgm/loader/activity/MainActivity;->game:Ljava/lang/String;

    .line 591
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {p0, p0, p1}, Lpubgm/loader/activity/MainActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-wide v0, -0x70ed8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 595
    .local v0, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 596
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda25;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    .end local v0    # "launchIntent":Landroid/content/Intent;
    goto/16 :goto_1

    .line 601
    :cond_0
    const-wide v0, -0x70908c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 602
    const v0, 0x7f0800f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1301c8

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V

    goto :goto_1

    .line 605
    :cond_1
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 606
    const-wide v0, -0x70988c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->tryAddLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 608
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->launchApk(Ljava/lang/String;)V

    goto :goto_1

    .line 610
    :cond_2
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-nez v0, :cond_3

    .line 611
    const-wide v0, -0x70818c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 613
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getProgresBar()Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lpubgm/loader/libhelper/FileHelper;->tryInstallWithCopyObb(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    goto :goto_1

    .line 616
    :cond_3
    const-wide v0, -0x70898c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 617
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-eqz v0, :cond_5

    .line 618
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->stopRunningApp(Ljava/lang/String;)V

    .line 619
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->stopPatcher()V

    .line 620
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x708c8c1d73e5L

    goto :goto_0

    :cond_4
    const-wide v0, -0x70b58c1d73e5L

    :goto_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 625
    :cond_5
    :goto_1
    return-void
.end method

.method synthetic lambda$initMenu2$9$pubgm-loader-activity-MainActivity()V
    .locals 0

    .line 649
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->launchbypass()V

    .line 650
    return-void
.end method

.method synthetic lambda$initProfileSection$33$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1808
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->openImagePicker()V

    return-void
.end method

.method synthetic lambda$initProfileSection$34$pubgm-loader-activity-MainActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 1809
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->openImagePicker()V

    return-void
.end method

.method synthetic lambda$initProfileSection$35$pubgm-loader-activity-MainActivity(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1813
    if-nez p2, :cond_0

    .line 1814
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->saveProfileName()V

    .line 1816
    :cond_0
    return-void
.end method

.method synthetic lambda$tryAddLoader$30$pubgm-loader-activity-MainActivity()V
    .locals 8

    .line 1410
    const-wide v0, -0x769b8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    const-wide/32 v6, 0xea60

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lpubgm/loader/activity/MainActivity;->executeWithRetries(Ljava/lang/String;JJ)V

    return-void
.end method

.method synthetic lambda$unInstallWithDellay$31$pubgm-loader-activity-MainActivity(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1441
    .local v0, "time":J
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->unInstallApp(Ljava/lang/String;)V

    .line 1442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 1443
    .end local v0    # "time":J
    .local v2, "time":J
    const-wide/16 v0, 0x1f4

    sub-long/2addr v0, v2

    .line 1444
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 1445
    invoke-static {v0, v1}, Lpubgm/loader/utils/UiKit;->sleep(J)V

    .line 1447
    :cond_0
    return-void
.end method

.method synthetic lambda$unInstallWithDellay$32$pubgm-loader-activity-MainActivity(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "res"    # Ljava/lang/Void;

    .line 1449
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->doHideProgress()V

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x76fa8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800e8

    invoke-static {v1, v0}, Lpubgm/loader/activity/MainActivity;->toastImage(ILjava/lang/CharSequence;)V

    .line 1451
    return-void
.end method

.method public launchApk(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1316
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v0

    const v1, 0x7f080113

    const-wide v2, -0x7b9f8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/BoxApplication;->showToastWithImage(ILjava/lang/CharSequence;)V

    .line 1318
    return-void

    .line 1321
    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaActivityManager;->launchApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    nop

    .line 1325
    return-void

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public launchbypass()V
    .locals 4

    .line 1460
    sget-boolean v0, Lpubgm/loader/activity/MainActivity;->kernel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1461
    const-wide v0, -0x7b378c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->loadAssets(Ljava/lang/String;)V

    goto :goto_0

    .line 1463
    :cond_0
    const-wide v0, -0x7b3d8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->loadAssets(Ljava/lang/String;)V

    .line 1465
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpubgm/loader/floating/FloatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1466
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpubgm/loader/activity/MainActivity$15;

    invoke-direct {v1, p0}, Lpubgm/loader/activity/MainActivity$15;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1475
    return-void
.end method

.method public loadAssets(Ljava/lang/String;)V
    .locals 4
    .param p1, "sockver"    # Ljava/lang/String;

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x75e58c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->daemonPath:Ljava/lang/String;

    .line 1672
    sput-object v0, Lpubgm/loader/activity/MainActivity;->socket:Ljava/lang/String;

    .line 1674
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x75eb8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lpubgm/loader/activity/MainActivity;->daemonPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1676
    goto :goto_0

    .line 1675
    :catch_0
    move-exception v0

    .line 1677
    :goto_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 1830
    invoke-super {p0, p1, p2, p3}, Lpubgm/loader/utils/ActivityCompat;->onActivityResult(IILandroid/content/Intent;)V

    .line 1831
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1832
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1835
    .local v0, "imageUri":Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0, v0}, Lpubgm/loader/activity/MainActivity;->saveImageToInternalStorage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1836
    .local v1, "imagePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1838
    iget-object v2, p0, Lpubgm/loader/activity/MainActivity;->profileImage:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1840
    iget-object v2, p0, Lpubgm/loader/activity/MainActivity;->profilePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-wide v3, -0x75658c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1845
    .end local v1    # "imagePath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 1842
    :catch_0
    move-exception v1

    .line 1843
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1844
    const-wide v2, -0x751a8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1847
    .end local v0    # "imageUri":Landroid/net/Uri;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 155
    invoke-super {p0, p1}, Lpubgm/loader/utils/ActivityCompat;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f0d001c

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->setContentView(I)V

    .line 158
    new-instance v0, Lpubgm/loader/activity/CrashHandler;

    invoke-direct {v0, p0}, Lpubgm/loader/activity/CrashHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 160
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->init()V

    .line 161
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lnet_62v/external/MetaActivationManager;->getActivationStatus()Z

    move-result v0

    .line 163
    .local v0, "isActivated":Z
    invoke-static {}, Lnet_62v/external/MetaActivationManager;->getActivationMessage()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "activationMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x7e558c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x7e458c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 170
    .end local v0    # "isActivated":Z
    .end local v3    # "activationMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->setRequestedOrientation(I)V

    .line 171
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->initMenu1()V

    .line 172
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->initMenu2()V

    .line 173
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->Loadssets()V

    .line 174
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->devicecheck()V

    .line 175
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->SettingESP()V

    .line 176
    sget-boolean v0, Lpubgm/loader/activity/SplashActivity;->mahyong:Z

    if-nez v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->finish()V

    .line 178
    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->finishActivity(I)V

    .line 180
    :cond_2
    sput-object p0, Lpubgm/loader/activity/MainActivity;->instance:Lpubgm/loader/activity/MainActivity;

    .line 181
    iput-boolean v2, p0, Lpubgm/loader/activity/MainActivity;->isLogin:Z

    .line 182
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->updateTextStates()V

    .line 183
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->updateButtonStates()V

    .line 184
    const-wide v3, -0x7e708c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lpubgm/loader/activity/MainActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    const/4 v0, 0x5

    sput v0, Lpubgm/loader/activity/MainActivity;->gameint:I

    goto :goto_1

    .line 187
    :cond_3
    sput v2, Lpubgm/loader/activity/MainActivity;->gameint:I

    .line 190
    :goto_1
    const-wide v2, -0x7e678c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/activity/MainActivity;->profilePrefs:Landroid/content/SharedPreferences;

    .line 191
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->initProfileSection()V

    .line 192
    const v0, 0x7f0a0235

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    .local v0, "versionTextView":Landroid/widget/TextView;
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 196
    .local v2, "AppVersion":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 197
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 199
    .local v3, "versionName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x7e118c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v3    # "versionName":Ljava/lang/String;
    goto :goto_2

    .line 200
    :catch_0
    move-exception v3

    .line 201
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 202
    const-wide v4, -0x7e178c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 206
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 208
    .local v1, "versionName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x7e1a8c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    .end local v1    # "versionName":Ljava/lang/String;
    goto :goto_3

    .line 209
    :catch_1
    move-exception v1

    .line 210
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 211
    const-wide v3, -0x7e048c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1557
    invoke-super {p0}, Lpubgm/loader/utils/ActivityCompat;->onDestroy()V

    .line 1558
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/FloatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1559
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/Overlay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1560
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleBullet;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1561
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleAim;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1562
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleSimulation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1563
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/FightMode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 1565
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 1788
    invoke-super {p0, p1, p2, p3}, Lpubgm/loader/utils/ActivityCompat;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1789
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1790
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-eqz v0, :cond_1

    .line 1791
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->finish()V

    .line 1794
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1681
    invoke-super {p0}, Lpubgm/loader/utils/ActivityCompat;->onResume()V

    .line 1682
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->CountTimerAccout()V

    .line 1683
    const-wide v0, -0x75908c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide v2, -0x759e8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1685
    .local v0, "needsRecreate":Z
    if-eqz v0, :cond_0

    .line 1686
    const-wide v2, -0x758f8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lpubgm/loader/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1687
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-wide v3, -0x75b58c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    .line 1688
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1689
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1691
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 1598
    invoke-super {p0, p1}, Lpubgm/loader/utils/ActivityCompat;->onWindowFocusChanged(Z)V

    .line 1599
    if-eqz p1, :cond_0

    .line 1600
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->hideSystemUI()V

    goto :goto_0

    .line 1602
    :cond_0
    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->showSystemUI()V

    .line 1604
    :goto_0
    return-void
.end method

.method public stopRunningApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1345
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaActivityManager;->killAppByPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    nop

    .line 1349
    return-void

    .line 1346
    :catch_0
    move-exception v0

    .line 1347
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tryAddLoader(Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1395
    const-wide v0, -0x7bad8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7b568c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1396
    .local v0, "is_online":Z
    invoke-virtual {p0, p1}, Lpubgm/loader/activity/MainActivity;->getApplicationInfoContainer(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1397
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1398
    return v2

    .line 1400
    :cond_0
    sget-boolean v3, Lpubgm/loader/activity/MainActivity;->kernel:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1401
    const-wide v5, -0x7b5f8c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lpubgm/loader/activity/MainActivity;->loadAssets(Ljava/lang/String;)V

    goto :goto_0

    .line 1403
    :cond_1
    const-wide v5, -0x7b458c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lpubgm/loader/activity/MainActivity;->loadAssets(Ljava/lang/String;)V

    .line 1406
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lpubgm/loader/floating/FloatService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lpubgm/loader/activity/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1408
    const-wide v5, -0x7b4e8c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0xbb8

    const-wide/32 v11, 0xea60

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lpubgm/loader/activity/MainActivity;->executeWithRetries(Ljava/lang/String;JJ)V

    .line 1409
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0}, Lpubgm/loader/activity/MainActivity$$ExternalSyntheticLambda5;-><init>(Lpubgm/loader/activity/MainActivity;)V

    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1414
    const-wide v5, -0x7b748c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1415
    const-wide v5, -0x7b6b8c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    .local v3, "target":Ljava/lang/String;
    goto :goto_1

    .line 1418
    .end local v3    # "target":Ljava/lang/String;
    :cond_2
    const-wide v5, -0x7b108c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    .line 1423
    .restart local v3    # "target":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v6

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Lpubgm/loader/BoxApplication;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lpubgm/loader/BoxApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    :goto_2
    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1424
    .local v5, "loader":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-wide v8, -0x7b1c8c1d73e5L

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    .local v6, "loaderDest":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1428
    :cond_4
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_5

    .line 1429
    return v4

    .line 1434
    :cond_5
    nop

    .line 1435
    return v2

    .line 1431
    :catch_0
    move-exception v4

    .line 1432
    .local v4, "err":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 1433
    return v2
.end method

.method public unInstallApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1329
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaPackageManager;->uninstallAppFully(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1332
    nop

    .line 1333
    return-void

    .line 1330
    :catch_0
    move-exception v0

    .line 1331
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public updateButtonStates()V
    .locals 11

    .line 250
    const v0, 0x7f0a003b

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatButton;

    .line 251
    .local v0, "InstallBgmiBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v1, 0x7f0a003d

    invoke-virtual {p0, v1}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatButton;

    .line 252
    .local v1, "InstallGlobalBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v2, 0x7f0a003e

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatButton;

    .line 253
    .local v2, "InstallKRBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v3, 0x7f0a0041

    invoke-virtual {p0, v3}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatButton;

    .line 254
    .local v3, "InstallVNGBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v4, 0x7f0a003f

    invoke-virtual {p0, v4}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    .line 255
    .local v4, "InstallTWBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v5, 0x7f0a0040

    invoke-virtual {p0, v5}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    .line 256
    .local v5, "InstallTwitterBtn":Landroidx/appcompat/widget/AppCompatButton;
    const v6, 0x7f0a003c

    invoke-virtual {p0, v6}, Lpubgm/loader/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    .line 259
    .local v6, "installFbButton":Landroidx/appcompat/widget/AppCompatButton;
    const-wide v7, -0x7fc58c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {p0, v5, v7, v8}, Lpubgm/loader/activity/MainActivity;->updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-wide v9, -0x7ffa8c1d73e5L

    invoke-static {v9, v10}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v8}, Lpubgm/loader/activity/MainActivity;->updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-wide v7, -0x7fee8c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->bgmistatus()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v7, v8}, Lpubgm/loader/activity/MainActivity;->updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-wide v7, -0x7f9d8c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->globalstatus()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v1, v7, v8}, Lpubgm/loader/activity/MainActivity;->updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-wide v7, -0x7f8e8c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->koreastatus()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v2, v7, v8}, Lpubgm/loader/activity/MainActivity;->updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-wide v7, -0x7fbc8c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->vngstatus()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v7, v8}, Lpubgm/loader/activity/MainActivity;->updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-wide v7, -0x7f518c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Lpubgm/loader/activity/MainActivity;->tiwanstatus()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4, v7, v8}, Lpubgm/loader/activity/MainActivity;->updateButtonState(Landroidx/appcompat/widget/AppCompatButton;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method
