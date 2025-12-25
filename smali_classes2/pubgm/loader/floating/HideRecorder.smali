.class public Lpubgm/loader/floating/HideRecorder;
.super Ljava/lang/Object;
.source "HideRecorder.java"


# static fields
.field private static final KEY_VERSION_BLACKSHARK:Ljava/lang/String; = "ro.blackshark.rom"

.field private static final KEY_VERSION_EMUI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_VERSION_MIUI:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_VERSION_NUBIA:Ljava/lang/String; = "ro.build.nubia.rom.name"

.field private static final KEY_VERSION_ONEPLIS:Ljava/lang/String; = "ro.build.ota.versionname"

.field private static final KEY_VERSION_OPPO:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final KEY_VERSION_ROG:Ljava/lang/String; = "ro.build.fota.version"

.field private static final KEY_VERSION_SAMSUNG:Ljava/lang/String; = "ro.channel.officehubrow"

.field private static final KEY_VERSION_SMARTISAN:Ljava/lang/String; = "ro.smartisan.version"

.field private static final KEY_VERSION_VIVO:Ljava/lang/String; = "ro.vivo.os.version"

.field public static final ROM_BLACKSHARK:Ljava/lang/String; = "JOYUI"

.field public static final ROM_EMUI:Ljava/lang/String; = "EMUI"

.field public static final ROM_FLYME:Ljava/lang/String; = "FLYME"

.field public static final ROM_MIUI:Ljava/lang/String; = "MIUI"

.field public static final ROM_NUBIAUI:Ljava/lang/String; = "NUBIAUI"

.field public static final ROM_ONEPLUS:Ljava/lang/String; = "HYDROGEN"

.field public static final ROM_OPPO:Ljava/lang/String; = "OPPO"

.field public static final ROM_QIKU:Ljava/lang/String; = "QIKU"

.field public static final ROM_ROG:Ljava/lang/String; = "REPLIBLIC"

.field public static final ROM_SAMSUNG:Ljava/lang/String; = "ONEUI"

.field public static final ROM_SMARTISAN:Ljava/lang/String; = "SMARTISAN"

.field public static final ROM_VIVO:Ljava/lang/String; = "VIVO"

.field private static sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(Ljava/lang/String;)Z
    .locals 3
    .param p0, "rom"    # Ljava/lang/String;

    .line 220
    sget-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 224
    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    const-string v0, "MIUI"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto/16 :goto_0

    .line 226
    :cond_1
    const-string v0, "ro.blackshark.rom"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 227
    const-string v0, "JOYUI"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto/16 :goto_0

    .line 228
    :cond_2
    const-string v0, "ro.build.version.emui"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    const-string v0, "EMUI"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto/16 :goto_0

    .line 230
    :cond_3
    const-string v0, "ro.build.version.opporom"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    const-string v0, "OPPO"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto/16 :goto_0

    .line 232
    :cond_4
    const-string v0, "ro.vivo.os.version"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    const-string v0, "VIVO"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto/16 :goto_0

    .line 234
    :cond_5
    const-string v0, "ro.smartisan.version"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 235
    const-string v0, "SMARTISAN"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto/16 :goto_0

    .line 236
    :cond_6
    const-string v0, "ro.build.nubia.rom.name"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 237
    const-string v0, "NUBIAUI"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_7
    const-string v0, "ro.build.ota.versionname"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hydrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    const-string v0, "HYDROGEN"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_8
    const-string v0, "ro.build.fota.version"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN_Phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 241
    const-string v0, "REPLIBLIC"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_9
    const-string v0, "ro.channel.officehubrow"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 243
    const-string v0, "ONEUI"

    sput-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto :goto_0

    .line 245
    :cond_a
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 246
    .local v0, "sVersion":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FLYME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 247
    sput-object v2, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    goto :goto_0

    .line 249
    :cond_b
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    .line 252
    .end local v0    # "sVersion":Ljava/lang/String;
    :goto_0
    sget-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getFakeRecordWindowTitle()Ljava/lang/String;
    .locals 4

    .line 190
    sget-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 191
    invoke-static {v1}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    .line 193
    :cond_0
    sget-object v0, Lpubgm/loader/floating/HideRecorder;->sName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 194
    return-object v1

    .line 196
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    goto :goto_0

    :sswitch_0
    const-string v3, "HYDROGEN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "JOYUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x7

    goto :goto_0

    :sswitch_2
    const-string v3, "FLYME"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v3, "VIVO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "OPPO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "MIUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_6
    const-string v3, "EMUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v3, "NUBIAUI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_8
    const-string v3, "REPLIBLIC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v2, 0x8

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 216
    return-object v1

    .line 214
    :pswitch_0
    const-string v0, "com.asus.force.layer.transparent.SR.floatingpanel"

    return-object v0

    .line 212
    :pswitch_1
    const-string v0, "com.blackshark.screenrecorder"

    return-object v0

    .line 210
    :pswitch_2
    const-string v0, "NubiaScreenDecorOverlay"

    return-object v0

    .line 208
    :pswitch_3
    const-string v0, "SysScreenRecorder"

    return-object v0

    .line 206
    :pswitch_4
    const-string v0, "op_screenrecord"

    return-object v0

    .line 204
    :pswitch_5
    const-string v0, "screen_record_menu"

    return-object v0

    .line 202
    :pswitch_6
    const-string v0, "com.coloros.screenrecorder.FloatView"

    return-object v0

    .line 200
    :pswitch_7
    const-string v0, "ScreenRecoderTimer"

    return-object v0

    .line 198
    :pswitch_8
    const-string v0, "com.miui.screenrecorder"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x749cab62 -> :sswitch_8
        -0x4d09c879 -> :sswitch_7
        0x20893c -> :sswitch_6
        0x241d30 -> :sswitch_5
        0x251fa0 -> :sswitch_4
        0x2834ac -> :sswitch_3
        0x3fe512b -> :sswitch_2
        0x4380d48 -> :sswitch_1
        0x14114660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 259
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getprop "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 260
    .local v2, "p":Ljava/lang/Process;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v3

    .line 261
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 262
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    .end local v2    # "p":Ljava/lang/Process;
    nop

    .line 268
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    :goto_0
    goto :goto_1

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 274
    :goto_1
    return-object v0

    .line 266
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_0

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 271
    goto :goto_2

    .line 269
    :catch_1
    move-exception v3

    .line 270
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 273
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_2
    throw v2

    .line 263
    :catch_2
    move-exception v2

    .line 264
    .local v2, "ex":Ljava/io/IOException;
    const/4 v3, 0x0

    .line 266
    if-eqz v1, :cond_1

    .line 268
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    goto :goto_3

    .line 269
    :catch_3
    move-exception v4

    .line 270
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 264
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-object v3
.end method

.method public static isActivice()Z
    .locals 1

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public static isBLACKSHARK()Z
    .locals 1

    .line 83
    const-string v0, "JOYUI"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmui()Z
    .locals 1

    .line 43
    const-string v0, "EMUI"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFlyme()Z
    .locals 1

    .line 63
    const-string v0, "FLYME"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiui()Z
    .locals 1

    .line 48
    const-string v0, "MIUI"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNubia()Z
    .locals 1

    .line 68
    const-string v0, "NUBIAUI"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOnePlus()Z
    .locals 1

    .line 73
    const-string v0, "HYDROGEN"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .locals 1

    .line 58
    const-string v0, "OPPO"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRog()Z
    .locals 1

    .line 88
    const-string v0, "REPLIBLIC"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSanSung()Z
    .locals 1

    .line 78
    const-string v0, "ONEUI"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVivo()Z
    .locals 1

    .line 53
    const-string v0, "VIVO"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p0, "layoutParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 98
    :try_start_0
    invoke-static {}, Lpubgm/loader/floating/HideRecorder;->getFakeRecordWindowTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    const-string v0, "FLYME"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Lpubgm/loader/floating/HideRecorder;->setMeizuParams(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 103
    invoke-static {}, Lpubgm/loader/floating/HideRecorder;->isActivice()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 104
    invoke-static {p0}, Lpubgm/loader/floating/HideRecorder;->setMeizuParams_new(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 107
    :cond_0
    const-string v0, "MIUI"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "JOYUI"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    const-string v0, "HYDROGEN"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lpubgm/loader/floating/HideRecorder;->isActivice()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 112
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 113
    .local v0, "privateflagField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lpubgm/loader/floating/HideRecorder;->setOnePulsParams(Landroid/view/WindowManager$LayoutParams;I)V

    .line 115
    .end local v0    # "privateflagField":Ljava/lang/reflect/Field;
    goto :goto_1

    :cond_3
    invoke-static {}, Lpubgm/loader/floating/HideRecorder;->isSanSung()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-static {p0}, Lpubgm/loader/floating/HideRecorder;->setSamsungFlags(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    .line 118
    :cond_4
    const-string v0, "REPLIBLIC"

    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    goto :goto_1

    .line 109
    :cond_5
    :goto_0
    invoke-static {p0}, Lpubgm/loader/floating/HideRecorder;->setXiaomiParams(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :cond_6
    :goto_1
    goto :goto_2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private static setMeizuParams(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 6
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 139
    :try_start_0
    const-string v0, "android.view.MeizuLayoutParams"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 140
    .local v0, "MeizuParamsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "flags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 141
    .local v1, "flagField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 142
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 143
    .local v3, "MeizuParams":Ljava/lang/Object;
    const/16 v4, 0x2000

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "meizuParams"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 145
    .local v4, "mzParamsField":Ljava/lang/reflect/Field;
    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    return v2

    .line 147
    .end local v0    # "MeizuParamsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "flagField":Ljava/lang/reflect/Field;
    .end local v3    # "MeizuParams":Ljava/lang/Object;
    .end local v4    # "mzParamsField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private static setMeizuParams_new(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 154
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "meizuFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 155
    .local v0, "mzParamsField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    const/16 v1, 0x400

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    .end local v0    # "mzParamsField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 159
    :goto_0
    return-void
.end method

.method private static setOnePulsParams(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "flagValue"    # I

    .line 164
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "privateFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 165
    .local v0, "flagField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v0    # "flagField":Ljava/lang/reflect/Field;
    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static setSamsungFlags(Landroid/view/WindowManager$LayoutParams;)V
    .locals 7
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 174
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "semAddExtensionFlags"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    .local v0, "semAddExtensionFlags":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "semAddPrivateFlags"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 176
    .local v1, "semAddPrivateFlags":Ljava/lang/reflect/Method;
    new-array v3, v2, [Ljava/lang/Object;

    const/high16 v4, -0x7ffe0000

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    nop

    .end local v0    # "semAddExtensionFlags":Ljava/lang/reflect/Method;
    .end local v1    # "semAddPrivateFlags":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static setXiaomiParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 130
    :try_start_0
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
