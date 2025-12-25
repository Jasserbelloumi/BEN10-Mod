.class public Lpubgm/loader/floating/FightMode;
.super Landroid/app/Service;
.source "FightMode.java"


# instance fields
.field private checkStatus:Z

.field private mainView:Landroid/view/View;

.field private miniFloatView:Landroid/widget/RelativeLayout;

.field private paramsView:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    :try_start_0
    const-string v0, "JungliCheatz"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 37
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private InitShowMainView()V
    .locals 3

    .line 97
    iget-object v0, p0, Lpubgm/loader/floating/FightMode;->mainView:Landroid/view/View;

    const v1, 0x7f0a0259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lpubgm/loader/floating/FightMode;->miniFloatView:Landroid/widget/RelativeLayout;

    .line 98
    iget-object v0, p0, Lpubgm/loader/floating/FightMode;->mainView:Landroid/view/View;

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 99
    .local v0, "layoutView":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lpubgm/loader/floating/FightMode;->mainView:Landroid/view/View;

    const v2, 0x7f0a01d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 101
    .local v1, "myImageView":Landroid/widget/ImageView;
    new-instance v2, Lpubgm/loader/floating/FightMode$1;

    invoke-direct {v2, p0, v1}, Lpubgm/loader/floating/FightMode$1;-><init>(Lpubgm/loader/floating/FightMode;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    return-void
.end method

.method private ShowMainView()V
    .locals 3

    .line 51
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/FightMode;->mainView:Landroid/view/View;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FightMode;->getParaams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/FightMode;->paramsView:Landroid/view/WindowManager$LayoutParams;

    .line 53
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FightMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lpubgm/loader/floating/FightMode;->windowManager:Landroid/view/WindowManager;

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lpubgm/loader/floating/FightMode;->mainView:Landroid/view/View;

    iget-object v2, p0, Lpubgm/loader/floating/FightMode;->paramsView:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_0
    invoke-direct {p0}, Lpubgm/loader/floating/FightMode;->InitShowMainView()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lpubgm/loader/floating/FightMode;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FightMode;

    .line 23
    iget-object v0, p0, Lpubgm/loader/floating/FightMode;->paramsView:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lpubgm/loader/floating/FightMode;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FightMode;

    .line 23
    iget-object v0, p0, Lpubgm/loader/floating/FightMode;->miniFloatView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lpubgm/loader/floating/FightMode;)Z
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FightMode;

    .line 23
    iget-boolean v0, p0, Lpubgm/loader/floating/FightMode;->checkStatus:Z

    return v0
.end method

.method static synthetic access$202(Lpubgm/loader/floating/FightMode;Z)Z
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FightMode;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lpubgm/loader/floating/FightMode;->checkStatus:Z

    return p1
.end method

.method static synthetic access$300(Lpubgm/loader/floating/FightMode;Z)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FightMode;
    .param p1, "x1"    # Z

    .line 23
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FightMode;->toggleBooleanValues(Z)V

    return-void
.end method

.method static synthetic access$400(Lpubgm/loader/floating/FightMode;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FightMode;

    .line 23
    iget-object v0, p0, Lpubgm/loader/floating/FightMode;->mainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lpubgm/loader/floating/FightMode;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FightMode;

    .line 23
    iget-object v0, p0, Lpubgm/loader/floating/FightMode;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private static getLayoutType()I
    .locals 2

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 85
    const/16 v0, 0x7f6

    .local v0, "LAYOUT_FLAG":I
    goto :goto_0

    .line 86
    .end local v0    # "LAYOUT_FLAG":I
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 87
    const/16 v0, 0x7d2

    .restart local v0    # "LAYOUT_FLAG":I
    goto :goto_0

    .line 88
    .end local v0    # "LAYOUT_FLAG":I
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 89
    const/16 v0, 0x7d5

    .restart local v0    # "LAYOUT_FLAG":I
    goto :goto_0

    .line 91
    .end local v0    # "LAYOUT_FLAG":I
    :cond_2
    const/16 v0, 0x7d3

    .line 93
    .restart local v0    # "LAYOUT_FLAG":I
    :goto_0
    return v0
.end method

.method private getParaams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 63
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 66
    invoke-static {}, Lpubgm/loader/floating/FightMode;->getLayoutType()I

    move-result v3

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 70
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "espValue"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lpubgm/loader/floating/FightMode;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    const-string v3, "hiderecord"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 73
    .local v1, "isHideRecordEnabled":Z
    if-eqz v1, :cond_0

    .line 74
    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    :cond_0
    const/16 v3, 0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 77
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 78
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 79
    return-object v0
.end method

.method private shouldIgnoreBooleanKey(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ignoredBooleans"    # [Ljava/lang/String;

    .line 171
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 172
    .local v3, "ignoredKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const/4 v0, 0x1

    return v0

    .line 171
    .end local v3    # "ignoredKey":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_1
    return v1
.end method

.method private toggleBooleanValues(Z)V
    .locals 18
    .param p1, "isFightModeOn"    # Z

    .line 149
    move-object/from16 v0, p0

    const-string v1, "espValue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/floating/FightMode;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 150
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 152
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "Health"

    const-string v5, "Throwables"

    const-string v6, "Box"

    const-string v7, "Weapon"

    const-string v8, "Name"

    const-string v9, "Weapon Icon"

    const-string v10, "Hide Bot"

    const-string v11, "Line"

    const-string v12, "Head Dots"

    const-string v13, "Skeleton"

    const-string v14, "Alert"

    const-string v15, "kernelSelected"

    const-string v16, "esp64Selected"

    const-string v17, "espSafe"

    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "ignoredBooleans":[Ljava/lang/String;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 155
    .local v6, "key":Ljava/lang/String;
    invoke-direct {v0, v6, v4}, Lpubgm/loader/floating/FightMode;->shouldIgnoreBooleanKey(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 156
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 157
    .local v7, "value":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_1

    .line 158
    move-object v8, v7

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 159
    .local v8, "currentValue":Z
    if-eqz p1, :cond_0

    if-eqz v8, :cond_0

    .line 160
    invoke-interface {v3, v6, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 161
    :cond_0
    if-nez p1, :cond_1

    if-nez v8, :cond_1

    .line 162
    const/4 v9, 0x1

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    .end local v8    # "currentValue":Z
    :cond_1
    :goto_1
    goto :goto_0

    .line 167
    :cond_2
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    return-void
.end method


# virtual methods
.method public getPref()Lpubgm/loader/utils/FPrefs;
    .locals 1

    .line 60
    invoke-static {p0}, Lpubgm/loader/utils/FPrefs;->with(Landroid/content/Context;)Lpubgm/loader/utils/FPrefs;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 46
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    invoke-direct {p0}, Lpubgm/loader/floating/FightMode;->ShowMainView()V

    .line 48
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 181
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpubgm/loader/floating/FightMode;->checkStatus:Z

    .line 183
    iget-object v0, p0, Lpubgm/loader/floating/FightMode;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lpubgm/loader/floating/FightMode;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 186
    :cond_0
    return-void
.end method
