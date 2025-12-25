.class public Lpubgm/loader/libhelper/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field private gamename:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "gamename"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "url"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lpubgm/loader/libhelper/Loader;->gamename:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lpubgm/loader/libhelper/Loader;->name:Ljava/lang/String;

    .line 14
    iput p3, p0, Lpubgm/loader/libhelper/Loader;->version:I

    .line 15
    iput-object p4, p0, Lpubgm/loader/libhelper/Loader;->url:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getGameName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lpubgm/loader/libhelper/Loader;->gamename:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lpubgm/loader/libhelper/Loader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lpubgm/loader/libhelper/Loader;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 39
    iget v0, p0, Lpubgm/loader/libhelper/Loader;->version:I

    return v0
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gamename"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lpubgm/loader/libhelper/Loader;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lpubgm/loader/libhelper/Loader;->name:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lpubgm/loader/libhelper/Loader;->url:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .line 43
    iput p1, p0, Lpubgm/loader/libhelper/Loader;->version:I

    .line 44
    return-void
.end method
