.class public Lcom/molihuan/pathselector/dao/SelectConfigData;
.super Ljava/lang/Object;
.source "SelectConfigData.java"


# instance fields
.field public alwaysShowHandleFragment:Ljava/lang/Boolean;

.field public buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

.field public buildType:Ljava/lang/Integer;

.field public context:Landroid/content/Context;

.field public fileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

.field public fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

.field public fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

.field public fragmentManager:Landroidx/fragment/app/FragmentManager;

.field public frameLayoutId:Ljava/lang/Integer;

.field public handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

.field public handleItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

.field public lifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

.field public maxCount:Ljava/lang/Integer;

.field public morePopupItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

.field public pathSelectDialogHeight:Ljava/lang/Integer;

.field public pathSelectDialogWidth:Ljava/lang/Integer;

.field public radio:Ljava/lang/Boolean;

.field public requestCode:Ljava/lang/Integer;

.field public rootPath:Ljava/lang/String;

.field public selectFileTypes:[Ljava/lang/String;

.field public showFileTypes:[Ljava/lang/String;

.field public showHandleFragment:Ljava/lang/Boolean;

.field public showSelectStorageBtn:Ljava/lang/Boolean;

.field public showTabbarFragment:Ljava/lang/Boolean;

.field public showTitlebarFragment:Ljava/lang/Boolean;

.field public sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

.field public statusBarHexColor:Ljava/lang/String;

.field public tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

.field public titlebarBG:Ljava/lang/Integer;

.field public titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

.field public titlebarMainTitle:Lcom/molihuan/pathselector/entity/FontBean;

.field public titlebarSubtitleTitle:Lcom/molihuan/pathselector/entity/FontBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initAllFragment()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 172
    const-string/jumbo v0, "\u5404\u79cdFragment  init  start"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    goto :goto_1

    .line 176
    :cond_1
    :goto_0
    new-instance v0, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;

    invoke-direct {v0}, Lcom/molihuan/pathselector/fragment/impl/FileShowFragment;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTitlebarFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    goto :goto_3

    .line 186
    :cond_3
    :goto_2
    new-instance v0, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;

    invoke-direct {v0}, Lcom/molihuan/pathselector/fragment/impl/TitlebarFragment;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    .line 192
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTabbarFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    goto :goto_5

    .line 194
    :cond_6
    :goto_4
    new-instance v0, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;

    invoke-direct {v0}, Lcom/molihuan/pathselector/fragment/impl/TabbarFragment;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    .line 200
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showHandleFragment:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 201
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    .line 204
    :cond_8
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    goto :goto_7

    .line 202
    :cond_9
    :goto_6
    new-instance v0, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;

    invoke-direct {v0}, Lcom/molihuan/pathselector/fragment/impl/HandleFragment;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    .line 207
    :cond_a
    :goto_7
    const-string/jumbo v0, "\u5404\u79cdFragment  init  end"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public initController()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Lcom/molihuan/pathselector/controller/impl/FileBeanControllerImpl;

    invoke-direct {v0}, Lcom/molihuan/pathselector/controller/impl/FileBeanControllerImpl;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    .line 222
    :cond_0
    return-void
.end method

.method public initDefaultConfig(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 96
    const-string/jumbo v0, "\u9ed8\u8ba4\u914d\u7f6eSelectConfigData  init  start"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->context:Landroid/content/Context;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildType:Ljava/lang/Integer;

    .line 100
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->requestCode:Ljava/lang/Integer;

    .line 101
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->frameLayoutId:Ljava/lang/Integer;

    .line 103
    sget-object v1, Lcom/molihuan/pathselector/utils/MConstants$SortRules;->SORT_NAME_ASC:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    iput-object v1, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 104
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->radio:Ljava/lang/Boolean;

    .line 105
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->maxCount:Ljava/lang/Integer;

    .line 106
    sget-object v3, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    iput-object v3, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->rootPath:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 108
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showFileTypes:[Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->selectFileTypes:[Ljava/lang/String;

    .line 110
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showSelectStorageBtn:Ljava/lang/Boolean;

    .line 111
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x50

    div-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->pathSelectDialogWidth:Ljava/lang/Integer;

    .line 112
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ScreenUtils;->getScreenHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x50

    div-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->pathSelectDialogHeight:Ljava/lang/Integer;

    .line 113
    iput-object v4, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTitlebarFragment:Ljava/lang/Boolean;

    .line 114
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarMainTitle:Lcom/molihuan/pathselector/entity/FontBean;

    .line 115
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarSubtitleTitle:Lcom/molihuan/pathselector/entity/FontBean;

    .line 116
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    .line 117
    sget v5, Lcom/molihuan/pathselector/R$color;->orange_mlh:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarBG:Ljava/lang/Integer;

    goto :goto_0

    .line 119
    :cond_0
    const/16 v5, 0xff

    const/16 v7, 0xa5

    invoke-static {v5, v7, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarBG:Ljava/lang/Integer;

    .line 121
    :goto_0
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->morePopupItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 122
    iput-object v4, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTabbarFragment:Ljava/lang/Boolean;

    .line 123
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

    .line 124
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    .line 125
    iput-object v4, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showHandleFragment:Ljava/lang/Boolean;

    .line 126
    iput-object v2, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->alwaysShowHandleFragment:Ljava/lang/Boolean;

    .line 127
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 129
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->lifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    .line 131
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_1

    .line 132
    sget v2, Lcom/molihuan/pathselector/R$color;->orange_mlh:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 133
    .local v2, "colorInt":I
    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0xffffff

    and-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "#%06X"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->statusBarHexColor:Ljava/lang/String;

    .line 136
    .end local v2    # "colorInt":I
    :cond_1
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    .line 137
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    .line 138
    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    .line 140
    const-string/jumbo v0, "\u9ed8\u8ba4\u914d\u7f6eSelectConfigData  init  end"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public initHook()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->lifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Lcom/molihuan/pathselector/dao/SelectConfigData$1;

    invoke-direct {v0, p0}, Lcom/molihuan/pathselector/dao/SelectConfigData$1;-><init>(Lcom/molihuan/pathselector/dao/SelectConfigData;)V

    iput-object v0, p0, Lcom/molihuan/pathselector/dao/SelectConfigData;->lifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    .line 235
    :cond_0
    return-void
.end method
