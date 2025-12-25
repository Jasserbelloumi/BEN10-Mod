.class public Lcom/xuexiang/xtask/logger/LogcatLogger;
.super Ljava/lang/Object;
.source "LogcatLogger.java"

# interfaces
.implements Lcom/xuexiang/xtask/logger/ILogger;


# static fields
.field private static final MAX_LOG_LENGTH:I = 0xfa0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 70
    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    .line 71
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 72
    .local v1, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 73
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 74
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private logSub(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "sub"    # Ljava/lang/String;

    .line 110
    packed-switch p1, :pswitch_data_0

    .line 130
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    goto :goto_0

    .line 124
    :pswitch_1
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_0

    .line 121
    :pswitch_2
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto :goto_0

    .line 118
    :pswitch_3
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    goto :goto_0

    .line 115
    :pswitch_4
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    goto :goto_0

    .line 112
    :pswitch_5
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    nop

    .line 133
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v0, v0, 0xfa0

    .line 87
    .local v0, "subNum":I
    if-lez v0, :cond_1

    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 90
    add-int/lit16 v3, v1, 0xfa0

    .line 91
    .local v3, "lastIndex":I
    invoke-virtual {p3, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "sub":Ljava/lang/String;
    invoke-direct {p0, p1, p2, v4}, Lcom/xuexiang/xtask/logger/LogcatLogger;->logSub(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    move v1, v3

    .line 89
    .end local v3    # "lastIndex":I
    .end local v4    # "sub":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2}, Lcom/xuexiang/xtask/logger/LogcatLogger;->logSub(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v1    # "index":I
    goto :goto_1

    .line 97
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/xuexiang/xtask/logger/LogcatLogger;->logSub(ILjava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_1
    return-void
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;

    .line 50
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const/4 p3, 0x0

    .line 53
    :cond_0
    if-nez p3, :cond_2

    .line 54
    if-nez p4, :cond_1

    .line 55
    return-void

    .line 57
    :cond_1
    invoke-static {p4}, Lcom/xuexiang/xtask/logger/LogcatLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 59
    :cond_2
    if-eqz p4, :cond_3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Lcom/xuexiang/xtask/logger/LogcatLogger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 64
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/xuexiang/xtask/logger/LogcatLogger;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method
