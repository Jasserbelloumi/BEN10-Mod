.class public final Lcom/blankj/utilcode/util/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field private static final KEY_UDID:Ljava/lang/String; = "KEY_UDID"

.field private static volatile udid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getABIs()[Ljava/lang/String;
    .locals 4

    .line 333
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 334
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    return-object v0

    .line 336
    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 337
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v3, v0, v1

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    aput-object v1, v0, v2

    return-object v0

    .line 339
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getAndroidID()Ljava/lang/String;
    .locals 3

    .line 105
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "id":Ljava/lang/String;
    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 109
    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method private static getInetAddress()Ljava/net/InetAddress;
    .locals 6

    .line 263
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 264
    .local v0, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 267
    .local v1, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 269
    .local v2, "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 271
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1

    .line 272
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "hostAddress":Ljava/lang/String;
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v5, :cond_1

    return-object v3

    .line 275
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "hostAddress":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 276
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    .end local v2    # "addresses":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    goto :goto_0

    .line 279
    .end local v0    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_3
    goto :goto_2

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 280
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMacAddress()Ljava/lang/String;
    .locals 3

    .line 122
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "macAddress":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    .line 125
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/blankj/utilcode/util/DeviceUtils;->setWifiEnabled(Z)V

    .line 126
    invoke-static {v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 123
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static varargs getMacAddress([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "excepts"    # [Ljava/lang/String;

    .line 160
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByNetworkInterface()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "macAddress":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    return-object v0

    .line 164
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByInetAddress()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    return-object v0

    .line 168
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByWifiInfo()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    return-object v0

    .line 172
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddressByFile()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    return-object v0

    .line 176
    :cond_3
    const-string v1, ""

    return-object v1
.end method

.method private static getMacAddressByFile()Ljava/lang/String;
    .locals 5

    .line 284
    const-string v0, "getprop wifi.interface"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 285
    .local v0, "result":Lcom/blankj/utilcode/util/ShellUtils$CommandResult;
    iget v2, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v2, :cond_0

    .line 286
    iget-object v2, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 287
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat /sys/class/net/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/UtilsBridge;->execCmd(Ljava/lang/String;Z)Lcom/blankj/utilcode/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 289
    iget v1, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->result:I

    if-nez v1, :cond_0

    .line 290
    iget-object v1, v0, Lcom/blankj/utilcode/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    .line 291
    .local v1, "address":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 292
    return-object v1

    .line 297
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_0
    const-string v1, "02:00:00:00:00:00"

    return-object v1
.end method

.method private static getMacAddressByInetAddress()Ljava/lang/String;
    .locals 11

    .line 241
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 242
    .local v0, "inetAddress":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 243
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v1

    .line 244
    .local v1, "ni":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 246
    .local v2, "macBytes":[B
    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v4, :cond_0

    aget-byte v8, v2, v6

    .line 249
    .local v8, "b":B
    const-string v9, "%02x:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    nop

    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 257
    .end local v0    # "inetAddress":Ljava/net/InetAddress;
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    .end local v2    # "macBytes":[B
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    goto :goto_1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static getMacAddressByNetworkInterface()Ljava/lang/String;
    .locals 11

    .line 220
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 221
    .local v0, "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 223
    .local v1, "ni":Ljava/net/NetworkInterface;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 225
    .local v2, "macBytes":[B
    if-eqz v2, :cond_3

    array-length v3, v2

    if-lez v3, :cond_3

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .local v3, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    const/4 v7, 0x1

    if-ge v6, v4, :cond_2

    aget-byte v8, v2, v6

    .line 228
    .local v8, "b":B
    const-string v9, "%02x:"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    nop

    .end local v8    # "b":B
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 230
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 232
    .end local v1    # "ni":Ljava/net/NetworkInterface;
    .end local v2    # "macBytes":[B
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    goto :goto_0

    .line 235
    .end local v0    # "nis":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_4
    goto :goto_2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static getMacAddressByWifiInfo()Ljava/lang/String;
    .locals 4

    .line 200
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 202
    .local v0, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 204
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    .line 208
    return-object v2

    .line 214
    .end local v0    # "wifi":Landroid/net/wifi/WifiManager;
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .line 307
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 4

    .line 317
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 318
    .local v0, "model":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 321
    :cond_0
    const-string v0, ""

    .line 323
    :goto_0
    return-object v0
.end method

.method public static getSDKVersionCode()I
    .locals 1

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getSDKVersionName()Ljava/lang/String;
    .locals 1

    .line 85
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 559
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "-"

    if-eqz v1, :cond_0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 562
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId()Ljava/lang/String;
    .locals 2

    .line 458
    const-string v0, ""

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prefix"    # Ljava/lang/String;

    .line 471
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "useCache"    # Z

    .line 498
    if-nez p1, :cond_0

    .line 499
    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 501
    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 502
    const-class v0, Lcom/blankj/utilcode/util/DeviceUtils;

    monitor-enter v0

    .line 503
    :try_start_0
    sget-object v1, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 504
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    const-string v2, "KEY_UDID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 506
    sput-object v1, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    .line 507
    sget-object v2, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    monitor-exit v0

    return-object v2

    .line 509
    :cond_1
    invoke-static {p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 511
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 513
    :cond_3
    :goto_0
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public static getUniqueDeviceId(Z)Ljava/lang/String;
    .locals 1
    .param p0, "useCache"    # Z

    .line 484
    const-string v0, ""

    invoke-static {v0, p0}, Lcom/blankj/utilcode/util/DeviceUtils;->getUniqueDeviceId(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueDeviceIdReal(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;

    .line 518
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "androidId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 519
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/DeviceUtils;->saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getWifiEnabled()Z
    .locals 2

    .line 131
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 132
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 133
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static isAdbEnabled()Z
    .locals 3

    .line 74
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static varargs isAddressNotInExcepts(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "excepts"    # [Ljava/lang/String;

    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    const-string v0, "02:00:00:00:00:00"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    return v1

    .line 186
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    array-length v2, p1

    if-nez v2, :cond_2

    goto :goto_1

    .line 189
    :cond_2
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p1, v3

    .line 190
    .local v4, "filter":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    return v1

    .line 189
    .end local v4    # "filter":Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_4
    return v0

    .line 187
    :cond_5
    :goto_1
    return v0
.end method

.method public static isDevelopmentSettingsEnabled()Z
    .locals 3

    .line 440
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 439
    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isDeviceRooted()Z
    .locals 12

    .line 54
    const-string/jumbo v0, "su"

    .line 55
    .local v0, "su":Ljava/lang/String;
    const-string v1, "/system/bin/"

    const-string v2, "/system/xbin/"

    const-string v3, "/sbin/"

    const-string v4, "/system/sd/xbin/"

    const-string v5, "/system/bin/failsafe/"

    const-string v6, "/data/local/xbin/"

    const-string v7, "/data/local/bin/"

    const-string v8, "/data/local/"

    const-string v9, "/system/sbin/"

    const-string v10, "/usr/bin/"

    const-string v11, "/vendor/bin/"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "locations":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 59
    .local v5, "location":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 60
    const/4 v2, 0x1

    return v2

    .line 58
    .end local v5    # "location":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    :cond_1
    return v3
.end method

.method public static isEmulator()Z
    .locals 10

    .line 360
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 361
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "vbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "test-keys"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 363
    const-string v4, "google_sdk"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 364
    const-string v5, "Emulator"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 365
    const-string v5, "Android SDK built for x86"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 366
    const-string v5, "Genymotion"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 368
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 369
    .local v0, "checkProperty":Z
    :goto_1
    if-eqz v0, :cond_3

    return v3

    .line 371
    :cond_3
    const-string v1, ""

    .line 372
    .local v1, "operatorName":Ljava/lang/String;
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 373
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_4

    .line 374
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 376
    move-object v1, v5

    .line 379
    .end local v5    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 380
    .local v5, "checkOperatorName":Z
    if-eqz v5, :cond_5

    return v3

    .line 382
    :cond_5
    const-string/jumbo v6, "tel:123456"

    .line 383
    .local v6, "url":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 385
    const-string v8, "android.intent.action.DIAL"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_6

    move v8, v3

    goto :goto_2

    :cond_6
    move v8, v2

    .line 387
    .local v8, "checkDial":Z
    :goto_2
    if-eqz v8, :cond_7

    return v3

    .line 388
    :cond_7
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->isEmulatorByCpu()Z

    move-result v9

    if-eqz v9, :cond_8

    return v3

    .line 393
    :cond_8
    return v2
.end method

.method private static isEmulatorByCpu()Z
    .locals 2

    .line 404
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->readCpuInfo()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "cpuInfo":Ljava/lang/String;
    const-string v1, "intel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "amd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isSameDevice(Ljava/lang/String;)Z
    .locals 7
    .param p0, "uniqueDeviceId"    # Ljava/lang/String;

    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    return v2

    .line 531
    :cond_0
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 532
    :cond_1
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "KEY_UDID"

    invoke-virtual {v0, v5, v4}, Lcom/blankj/utilcode/util/SPUtils;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "cachedId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    .line 534
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 535
    .local v3, "st":I
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 536
    .local v1, "type":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_4

    .line 537
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 538
    .local v4, "macAddress":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 539
    return v2

    .line 541
    :cond_3
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 542
    .end local v4    # "macAddress":Ljava/lang/String;
    :cond_4
    const-string v4, "2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 543
    invoke-static {}, Lcom/blankj/utilcode/util/DeviceUtils;->getAndroidID()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "androidId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 545
    return v2

    .line 547
    :cond_5
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 549
    .end local v4    # "androidId":Ljava/lang/String;
    :cond_6
    return v2
.end method

.method public static isTablet()Z
    .locals 2

    .line 349
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static readCpuInfo()Ljava/lang/String;
    .locals 9

    .line 414
    const-string v0, ""

    .line 416
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    const-string v1, "/system/bin/cat"

    const-string v2, "/proc/cpuinfo"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "args":[Ljava/lang/String;
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 418
    .local v2, "cmd":Ljava/lang/ProcessBuilder;
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 419
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const-string/jumbo v8, "utf-8"

    invoke-direct {v6, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 422
    .local v5, "responseReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "readLine":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 423
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 425
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 426
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 428
    .end local v1    # "args":[Ljava/lang/String;
    .end local v2    # "cmd":Ljava/lang/ProcessBuilder;
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "responseReader":Ljava/io/BufferedReader;
    .end local v7    # "readLine":Ljava/lang/String;
    goto :goto_1

    .line 427
    :catch_0
    move-exception v1

    .line 429
    :goto_1
    return-object v0
.end method

.method private static saveUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 553
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/DeviceUtils;->getUdid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    .line 554
    invoke-static {}, Lcom/blankj/utilcode/util/UtilsBridge;->getSpUtils4Utils()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    sget-object v1, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    const-string v2, "KEY_UDID"

    invoke-virtual {v0, v2, v1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v0, Lcom/blankj/utilcode/util/DeviceUtils;->udid:Ljava/lang/String;

    return-object v0
.end method

.method private static setWifiEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .line 145
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 146
    .local v0, "manager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-ne p0, v1, :cond_1

    return-void

    .line 148
    :cond_1
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 149
    return-void
.end method
