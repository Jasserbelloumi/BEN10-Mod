.class public Lio/michaelrocks/paranoid/RandomHelper;
.super Ljava/lang/Object;
.source "RandomHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static next(J)J
    .locals 8
    .param p0, "state"    # J

    .line 30
    const-wide/32 v0, 0xffff

    and-long v2, p0, v0

    long-to-int v2, v2

    int-to-short v2, v2

    .line 31
    .local v2, "s0":S
    const/16 v3, 0x10

    ushr-long v4, p0, v3

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-short v0, v0

    .line 32
    .local v0, "s1":S
    move v1, v2

    .line 33
    .local v1, "next":S
    add-int v4, v1, v0

    int-to-short v1, v4

    .line 34
    const/16 v4, 0x9

    invoke-static {v1, v4}, Lio/michaelrocks/paranoid/RandomHelper;->rotl(SI)S

    move-result v1

    .line 35
    add-int v4, v1, v2

    int-to-short v1, v4

    .line 37
    xor-int v4, v0, v2

    int-to-short v0, v4

    .line 38
    const/16 v4, 0xd

    invoke-static {v2, v4}, Lio/michaelrocks/paranoid/RandomHelper;->rotl(SI)S

    move-result v2

    .line 39
    xor-int v4, v2, v0

    int-to-short v2, v4

    .line 40
    shl-int/lit8 v4, v0, 0x5

    xor-int/2addr v4, v2

    int-to-short v2, v4

    .line 41
    const/16 v4, 0xa

    invoke-static {v0, v4}, Lio/michaelrocks/paranoid/RandomHelper;->rotl(SI)S

    move-result v0

    .line 43
    int-to-long v4, v1

    .line 44
    .local v4, "result":J
    shl-long/2addr v4, v3

    .line 45
    int-to-long v6, v0

    or-long/2addr v4, v6

    .line 46
    shl-long v3, v4, v3

    .line 47
    .end local v4    # "result":J
    .local v3, "result":J
    int-to-long v5, v2

    or-long/2addr v3, v5

    .line 48
    return-wide v3
.end method

.method private static rotl(SI)S
    .locals 2
    .param p0, "x"    # S
    .param p1, "k"    # I

    .line 52
    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static seed(J)J
    .locals 6
    .param p0, "x"    # J

    .line 25
    const/16 v0, 0x21

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0x62a9d9ed799705f5L    # 1.905503099867627E167

    mul-long/2addr v0, v2

    .line 26
    .local v0, "z":J
    const/16 v2, 0x1c

    ushr-long v2, v0, v2

    xor-long/2addr v2, v0

    const-wide v4, -0x34db2f5a3773ca4dL    # -9.968418789810265E53

    mul-long/2addr v2, v4

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    return-wide v2
.end method
