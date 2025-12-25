.class public Lpubgm/loader/server/ApiServer;
.super Ljava/lang/Object;
.source "ApiServer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    :try_start_0
    const-string v0, "JungliCheatz"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 13
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native activity()Ljava/lang/String;
.end method

.method public static native getOwner()Ljava/lang/String;
.end method

.method public static native mainURL()Ljava/lang/String;
.end method
