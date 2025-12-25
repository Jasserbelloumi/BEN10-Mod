.class public final Lcom/xuexiang/xtask/logger/TaskLogger;
.super Ljava/lang/Object;
.source "TaskLogger.java"


# static fields
.field private static final MAX_LOG_PRIORITY:I = 0xa

.field private static final MIN_LOG_PRIORITY:I = 0x0

.field public static final TASK_LOG_TAG:Ljava/lang/String; = "TaskLogger"

.field private static sILogger:Lcom/xuexiang/xtask/logger/ILogger;

.field private static sIsDebug:Z

.field private static sIsLogThreadName:Z

.field private static sLogPriority:I

.field private static sTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/xuexiang/xtask/logger/LogcatLogger;

    invoke-direct {v0}, Lcom/xuexiang/xtask/logger/LogcatLogger;-><init>()V

    sput-object v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    .line 57
    const-string v0, "TaskLogger"

    sput-object v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    .line 61
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sIsDebug:Z

    .line 65
    const/16 v1, 0xa

    sput v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sLogPriority:I

    .line 70
    sput-boolean v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sIsLogThreadName:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    :cond_0
    return-void
.end method

.method public static dTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    :cond_0
    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 165
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->setDebug(Z)V

    .line 167
    invoke-static {v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->setPriority(I)V

    .line 168
    invoke-static {p0}, Lcom/xuexiang/xtask/logger/TaskLogger;->setTag(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {v1}, Lcom/xuexiang/xtask/logger/TaskLogger;->setDebug(Z)V

    .line 171
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->setPriority(I)V

    .line 172
    const-string v0, ""

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->setTag(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void
.end method

.method public static debug(Z)V
    .locals 1
    .param p0, "isDebug"    # Z

    .line 156
    if-eqz p0, :cond_0

    const-string v0, "TaskLogger"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->debug(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 324
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p0, p1}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 299
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3, p0}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    :cond_0
    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 288
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    :cond_0
    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 337
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    invoke-interface {v1, v0, p0, p1, p2}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    :cond_0
    return-void
.end method

.method public static eTag(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 311
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, v2, p1}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    :cond_0
    return-void
.end method

.method private static enableLog(I)Z
    .locals 1
    .param p0, "logPriority"    # I

    .line 384
    invoke-static {}, Lcom/xuexiang/xtask/logger/TaskLogger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sLogPriority:I

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getLogTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 81
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 230
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    :cond_0
    return-void
.end method

.method public static iTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 242
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 245
    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 393
    sget-object v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sIsDebug:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLogThreadName()Z
    .locals 1

    .line 145
    sget-boolean v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sIsLogThreadName:Z

    return v0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 372
    invoke-static {p0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget-object v0, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :cond_0
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .line 118
    sput-boolean p0, Lcom/xuexiang/xtask/logger/TaskLogger;->sIsDebug:Z

    .line 119
    return-void
.end method

.method public static setIsLogThreadName(Z)V
    .locals 0
    .param p0, "isLogThreadName"    # Z

    .line 136
    sput-boolean p0, Lcom/xuexiang/xtask/logger/TaskLogger;->sIsLogThreadName:Z

    .line 137
    return-void
.end method

.method public static setLogger(Lcom/xuexiang/xtask/logger/ILogger;)V
    .locals 0
    .param p0, "logger"    # Lcom/xuexiang/xtask/logger/ILogger;

    .line 100
    sput-object p0, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    .line 101
    return-void
.end method

.method public static setPriority(I)V
    .locals 0
    .param p0, "priority"    # I

    .line 127
    sput p0, Lcom/xuexiang/xtask/logger/TaskLogger;->sLogPriority:I

    .line 128
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;

    .line 109
    sput-object p0, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 184
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :cond_0
    return-void
.end method

.method public static vTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 196
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 199
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 253
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    :cond_0
    return-void
.end method

.method public static wTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 265
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;

    .line 348
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    sget-object v2, Lcom/xuexiang/xtask/logger/TaskLogger;->sTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p0, v3}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 351
    :cond_0
    return-void
.end method

.method public static wtfTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 360
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/xuexiang/xtask/logger/TaskLogger;->enableLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    sget-object v1, Lcom/xuexiang/xtask/logger/TaskLogger;->sILogger:Lcom/xuexiang/xtask/logger/ILogger;

    const/4 v2, 0x0

    invoke-interface {v1, v0, p0, p1, v2}, Lcom/xuexiang/xtask/logger/ILogger;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 363
    :cond_0
    return-void
.end method
