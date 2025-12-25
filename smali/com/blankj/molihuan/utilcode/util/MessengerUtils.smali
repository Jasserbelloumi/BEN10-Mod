.class public Lcom/blankj/molihuan/utilcode/util/MessengerUtils;
.super Ljava/lang/Object;
.source "MessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/molihuan/utilcode/util/MessengerUtils$MessageCallback;,
        Lcom/blankj/molihuan/utilcode/util/MessengerUtils$ServerService;,
        Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;
    }
.end annotation


# static fields
.field private static final KEY_STRING:Ljava/lang/String; = "MESSENGER_UTILS"

.field private static final WHAT_SEND:I = 0x2

.field private static final WHAT_SUBSCRIBE:I = 0x0

.field private static final WHAT_UNSUBSCRIBE:I = 0x1

.field private static sClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;",
            ">;"
        }
    .end annotation
.end field

.field private static sLocalClient:Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

.field private static subscribers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/blankj/molihuan/utilcode/util/MessengerUtils$MessageCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 36
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public static post(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;

    .line 117
    const-string v0, "MESSENGER_UTILS"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;->sendMsg2Server(Landroid/os/Bundle;)V

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 123
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->startServiceCompat(Landroid/content/Intent;)V

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    .line 126
    .local v1, "client":Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;
    invoke-virtual {v1, p1}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;->sendMsg2Server(Landroid/os/Bundle;)V

    .line 127
    .end local v1    # "client":Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;
    goto :goto_1

    .line 128
    :cond_1
    return-void
.end method

.method public static register()V
    .locals 3

    .line 49
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isMainProcess()Z

    move-result v0

    const-string v1, "MessengerUtils"

    if-eqz v0, :cond_1

    .line 50
    const-class v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$ServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isServiceRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string v0, "Server service is running."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 54
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->startServiceCompat(Landroid/content/Intent;)V

    .line 55
    return-void

    .line 57
    :cond_1
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    if-nez v0, :cond_3

    .line 58
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "client":Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;->bind()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    sput-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    goto :goto_0

    .line 62
    :cond_2
    const-string v2, "Bind service failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .end local v0    # "client":Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;
    :goto_0
    goto :goto_1

    .line 65
    :cond_3
    const-string v0, "The client have been bind."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :goto_1
    return-void
.end method

.method public static register(Ljava/lang/String;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MessengerUtils"

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register: client registered: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    invoke-direct {v0, p0}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "client":Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;->bind()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    sget-object v1, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register: client bind failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void
.end method

.method private static startServiceCompat(Landroid/content/Intent;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .line 132
    const/16 v0, 0x20

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 134
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 136
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static subscribe(Ljava/lang/String;Lcom/blankj/molihuan/utilcode/util/MessengerUtils$MessageCallback;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/blankj/molihuan/utilcode/util/MessengerUtils$MessageCallback;

    .line 109
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static unregister()V
    .locals 3

    .line 70
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isMainProcess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-class v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$ServerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isServiceRunning(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    const-string v0, "MessengerUtils"

    const-string v1, "Server service isn\'t running."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$ServerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sLocalClient:Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    if-eqz v0, :cond_2

    .line 79
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;->unbind()V

    .line 81
    :cond_2
    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregister: client didn\'t register: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MessengerUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;

    .line 102
    .local v0, "client":Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;
    sget-object v1, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->sClientMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/MessengerUtils$Client;->unbind()V

    .line 106
    :cond_1
    return-void
.end method

.method public static unsubscribe(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 113
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/MessengerUtils;->subscribers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method
