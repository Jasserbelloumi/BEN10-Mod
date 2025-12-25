.class final Lcom/hjq/permissions/PhoneRomUtils;
.super Ljava/lang/Object;
.source "PhoneRomUtils.java"


# static fields
.field private static final ROM_360:[Ljava/lang/String;

.field private static final ROM_HONOR:[Ljava/lang/String;

.field private static final ROM_HUAWEI:[Ljava/lang/String;

.field private static final ROM_LEECO:[Ljava/lang/String;

.field private static final ROM_NAME_MIUI:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final ROM_NUBIA:[Ljava/lang/String;

.field private static final ROM_ONEPLUS:[Ljava/lang/String;

.field private static final ROM_OPPO:[Ljava/lang/String;

.field private static final ROM_SAMSUNG:[Ljava/lang/String;

.field private static final ROM_VIVO:[Ljava/lang/String;

.field private static final ROM_XIAOMI:[Ljava/lang/String;

.field private static final ROM_ZTE:[Ljava/lang/String;

.field private static final VERSION_PROPERTY_360:Ljava/lang/String; = "ro.build.uiversion"

.field private static final VERSION_PROPERTY_HUAWEI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final VERSION_PROPERTY_LEECO:Ljava/lang/String; = "ro.letv.release.version"

.field private static final VERSION_PROPERTY_MAGIC:[Ljava/lang/String;

.field private static final VERSION_PROPERTY_NUBIA:Ljava/lang/String; = "ro.build.rom.id"

.field private static final VERSION_PROPERTY_ONEPLUS:Ljava/lang/String; = "ro.rom.version"

.field private static final VERSION_PROPERTY_OPPO:[Ljava/lang/String;

.field private static final VERSION_PROPERTY_VIVO:Ljava/lang/String; = "ro.vivo.os.build.display.id"

.field private static final VERSION_PROPERTY_XIAOMI:Ljava/lang/String; = "ro.build.version.incremental"

.field private static final VERSION_PROPERTY_ZTE:Ljava/lang/String; = "ro.build.MiFavor_version"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-string v0, "huawei"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "vivo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_VIVO:[Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "xiaomi"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    .line 29
    const-string v0, "oppo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_OPPO:[Ljava/lang/String;

    .line 30
    const-string v0, "leeco"

    const-string v1, "letv"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_LEECO:[Ljava/lang/String;

    .line 31
    const-string v0, "360"

    const-string v1, "qiku"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_360:[Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "zte"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ZTE:[Ljava/lang/String;

    .line 33
    const-string v0, "oneplus"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    .line 34
    const-string v0, "nubia"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_NUBIA:[Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "samsung"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    .line 36
    const-string v0, "honor"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HONOR:[Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "ro.build.version.opporom"

    const-string/jumbo v1, "ro.build.version.oplusrom.display"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_OPPO:[Ljava/lang/String;

    .line 54
    const-string v0, "msc.config.magic.version"

    const-string/jumbo v1, "ro.build.version.magic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_MAGIC:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBrand()Ljava/lang/String;
    .locals 1

    .line 243
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 247
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 251
    const-string v0, ""

    .line 252
    .local v0, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    :cond_0
    return-object v0
.end method

.method static getRomVersionName()Ljava/lang/String;
    .locals 9

    .line 171
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "brand":Ljava/lang/String;
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "manufacturer":Ljava/lang/String;
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HUAWEI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_2

    .line 174
    const-string/jumbo v2, "ro.build.version.emui"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "version":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "temp":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 177
    aget-object v3, v4, v6

    return-object v3

    .line 180
    :cond_0
    const-string v5, "EmotionUI"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    const-string v5, "EmotionUI\\s*"

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 183
    :cond_1
    return-object v2

    .line 186
    .end local v2    # "version":Ljava/lang/String;
    .end local v4    # "temp":[Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_VIVO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    const-string/jumbo v2, "ro.vivo.os.build.display.id"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 190
    :cond_3
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_XIAOMI:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    const-string/jumbo v2, "ro.build.version.incremental"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 193
    :cond_4
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_OPPO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 194
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_OPPO:[Ljava/lang/String;

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_6

    aget-object v6, v2, v4

    .line 195
    .local v6, "property":Ljava/lang/String;
    invoke-static {v6}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, "versionName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 197
    nop

    .line 194
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    .restart local v6    # "property":Ljava/lang/String;
    .restart local v7    # "versionName":Ljava/lang/String;
    :cond_5
    return-object v7

    .line 201
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :cond_6
    return-object v3

    .line 203
    :cond_7
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_LEECO:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 204
    const-string/jumbo v2, "ro.letv.release.version"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 207
    :cond_8
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_360:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 208
    const-string/jumbo v2, "ro.build.uiversion"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 210
    :cond_9
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ZTE:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 211
    const-string/jumbo v2, "ro.build.MiFavor_version"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 213
    :cond_a
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_ONEPLUS:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 214
    const-string/jumbo v2, "ro.rom.version"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 216
    :cond_b
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_NUBIA:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 217
    const-string/jumbo v2, "ro.build.rom.id"

    invoke-static {v2}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 219
    :cond_c
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HONOR:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 220
    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_MAGIC:[Ljava/lang/String;

    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_e

    aget-object v6, v2, v4

    .line 221
    .restart local v6    # "property":Ljava/lang/String;
    invoke-static {v6}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 222
    .restart local v7    # "versionName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 223
    nop

    .line 220
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 225
    .restart local v6    # "property":Ljava/lang/String;
    .restart local v7    # "versionName":Ljava/lang/String;
    :cond_d
    return-object v7

    .line 227
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :cond_e
    return-object v3

    .line 230
    :cond_f
    invoke-static {v3}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 259
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 261
    return-object v0

    .line 263
    :cond_0
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 265
    return-object v0

    .line 267
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_2

    .line 268
    invoke-static {p0}, Lcom/hjq/permissions/PhoneRomUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 270
    :cond_2
    return-object v0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .line 315
    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 316
    .local v1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 317
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 324
    .end local v1    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 322
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 320
    :catch_2
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 318
    :catch_3
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 326
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 327
    :goto_1
    return-object v0
.end method

.method private static getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "propName"    # Ljava/lang/String;

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 277
    .local v1, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v0, v2

    .line 278
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .local v2, "ret":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 280
    nop

    .line 285
    nop

    .line 287
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 290
    goto :goto_0

    .line 288
    :catch_0
    move-exception v3

    .line 289
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 285
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "ret":Ljava/lang/String;
    :cond_0
    nop

    .line 287
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 290
    :goto_1
    goto :goto_2

    .line 288
    :catch_1
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 285
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 282
    :catch_2
    move-exception v1

    .line 283
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 285
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 287
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 293
    :cond_1
    :goto_2
    const-string v1, ""

    return-object v1

    .line 285
    :goto_3
    if-eqz v0, :cond_2

    .line 287
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 290
    goto :goto_4

    .line 288
    :catch_3
    move-exception v2

    .line 289
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v1
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .line 298
    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 299
    .local v1, "prop":Ljava/util/Properties;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    .line 300
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 302
    .local v2, "is":Ljava/io/FileInputStream;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 303
    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 306
    .end local v1    # "prop":Ljava/util/Properties;
    .end local v2    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 304
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 305
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 308
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 309
    :goto_0
    return-object v0
.end method

.method static isColorOs()Z
    .locals 7

    .line 76
    sget-object v0, Lcom/hjq/permissions/PhoneRomUtils;->VERSION_PROPERTY_OPPO:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 77
    .local v4, "property":Ljava/lang/String;
    invoke-static {v4}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, "versionName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    nop

    .line 76
    .end local v4    # "property":Ljava/lang/String;
    .end local v5    # "versionName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .restart local v4    # "property":Ljava/lang/String;
    .restart local v5    # "versionName":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 83
    .end local v4    # "property":Ljava/lang/String;
    .end local v5    # "versionName":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method static isEmui()Z
    .locals 1

    .line 62
    const-string/jumbo v0, "ro.build.version.emui"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isHarmonyOs()Z
    .locals 5

    .line 120
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    :try_start_0
    const-string v0, "com.huawei.system.BuildEx"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 125
    .local v0, "buildExClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "getOsBrand"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "osBrand":Ljava/lang/Object;
    const-string v3, "Harmony"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 127
    .end local v0    # "buildExClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "osBrand":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    .line 128
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    return v1
.end method

.method static isMagicOs()Z
    .locals 3

    .line 137
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_HONOR:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isMiui()Z
    .locals 1

    .line 69
    const-string/jumbo v0, "ro.miui.ui.version.name"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isMiuiOptimization()Z
    .locals 9

    .line 149
    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 150
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 151
    .local v2, "getMethod":Ljava/lang/reflect/Method;
    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "ro.miui.cts"

    aput-object v5, v4, v6

    const-string v5, ""

    aput-object v5, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "ctsValue":Ljava/lang/String;
    const-string v5, "getBoolean"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v0

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 153
    .local v5, "getBooleanMethod":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    const-string v7, "persist.sys.miui_optimization"

    aput-object v7, v3, v6

    const-string v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    move v6, v0

    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v0

    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 160
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getMethod":Ljava/lang/reflect/Method;
    .end local v4    # "ctsValue":Ljava/lang/String;
    .end local v5    # "getBooleanMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 156
    :catch_2
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 154
    :catch_3
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 162
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 163
    :goto_1
    return v0
.end method

.method static isOneUi()Z
    .locals 3

    .line 98
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/hjq/permissions/PhoneRomUtils;->ROM_SAMSUNG:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/hjq/permissions/PhoneRomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isOriginOs()Z
    .locals 1

    .line 90
    const-string/jumbo v0, "ro.vivo.os.build.display.id"

    invoke-static {v0}, Lcom/hjq/permissions/PhoneRomUtils;->getPropertyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "brand"    # Ljava/lang/String;
    .param p1, "manufacturer"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;

    .line 234
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    .line 235
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 234
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    .restart local v3    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 239
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    return v1
.end method
