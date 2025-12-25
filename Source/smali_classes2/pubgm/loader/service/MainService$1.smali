.class Lpubgm/loader/service/MainService$1;
.super Ljava/lang/Object;
.source "MainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpubgm/loader/service/MainService;->RunServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 72
    invoke-static {}, Lpubgm/loader/service/MainService;->InitBase()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "respon":Ljava/lang/String;
    const-wide v1, -0x6e8f8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const v1, 0x7f0800e8

    const-wide v2, -0x6eb98c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lpubgm/loader/service/MainService;->access$000(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_0
    const v1, 0x7f0800f3

    invoke-static {v1, v0}, Lpubgm/loader/service/MainService;->access$000(ILjava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Lpubgm/loader/service/MainService;->stopService()V

    .line 79
    :goto_0
    return-void
.end method
