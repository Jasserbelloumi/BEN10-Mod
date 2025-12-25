.class public Lpubgm/loader/service/OreoNotification;
.super Landroid/content/ContextWrapper;
.source "OreoNotification.java"


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String;

.field private static final CHANNEL_NAME:Ljava/lang/String;


# instance fields
.field private notificationManager:Landroid/app/NotificationManager;


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x6e178c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/service/OreoNotification;->CHANNEL_ID:Ljava/lang/String;

    const-wide v0, -0x6e048c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/service/OreoNotification;->CHANNEL_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 26
    invoke-direct {p0}, Lpubgm/loader/service/OreoNotification;->createChannel()V

    .line 28
    :cond_0
    return-void
.end method

.method private createChannel()V
    .locals 4

    .line 33
    new-instance v0, Landroid/app/NotificationChannel;

    const-wide v1, -0x6e5b8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x6e488c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 36
    .local v0, "channel":Landroid/app/NotificationChannel;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 37
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 40
    invoke-virtual {p0}, Lpubgm/loader/service/OreoNotification;->getManager()Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getManager()Landroid/app/NotificationManager;
    .locals 2

    .line 44
    iget-object v0, p0, Lpubgm/loader/service/OreoNotification;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 45
    const-wide v0, -0x6e778c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/service/OreoNotification;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lpubgm/loader/service/OreoNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 48
    :cond_0
    iget-object v0, p0, Lpubgm/loader/service/OreoNotification;->notificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getOreoNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "soundUri"    # Landroid/net/Uri;
    .param p5, "icon"    # Ljava/lang/String;

    .line 54
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lpubgm/loader/service/OreoNotification;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-wide v2, -0x6e628c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 58
    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 54
    return-object v0
.end method
