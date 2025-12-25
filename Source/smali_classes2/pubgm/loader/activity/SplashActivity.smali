.class public Lpubgm/loader/activity/SplashActivity;
.super Lpubgm/loader/utils/ActivityCompat;
.source "SplashActivity.java"


# static fields
.field public static mahyong:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lpubgm/loader/activity/SplashActivity;->mahyong:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lpubgm/loader/utils/ActivityCompat;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 19
    invoke-super {p0, p1}, Lpubgm/loader/utils/ActivityCompat;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/SplashActivity;->setContentView(I)V

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpubgm/loader/activity/SplashActivity$1;

    invoke-direct {v1, p0}, Lpubgm/loader/activity/SplashActivity$1;-><init>(Lpubgm/loader/activity/SplashActivity;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    return-void
.end method
