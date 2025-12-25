.class public Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;
.super Ljava/lang/Object;
.source "ConfigDataBuilderImpl.java"

# interfaces
.implements Lcom/molihuan/pathselector/service/IConfigDataBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$ConfigDataBuilderHolder;
    }
.end annotation


# static fields
.field private static securityCode:Ljava/lang/String;


# instance fields
.field private final mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 323
    const-string v0, "jofisdhgoergd54fgd65f4g"

    sput-object v0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->securityCode:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-direct {v0}, Lcom/molihuan/pathselector/dao/SelectConfigData;-><init>()V

    iput-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    .line 326
    const-class v0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    monitor-enter v0

    .line 327
    :try_start_0
    sget-object v1, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->securityCode:Ljava/lang/String;

    const-string v2, "jofisdhgoergd54fgd65f4g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const-string v1, "hkhd254if54shd52ufhs"

    sput-object v1, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->securityCode:Ljava/lang/String;

    .line 332
    monitor-exit v0

    .line 333
    return-void

    .line 330
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Do not use reflection to break the singleton pattern!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic constructor <init>(Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$1;

    .line 35
    invoke-direct {p0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;
    .locals 1

    .line 316
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$ConfigDataBuilderHolder;->access$000()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-object v0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-virtual {v0, p1}, Lcom/molihuan/pathselector/dao/SelectConfigData;->initDefaultConfig(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public setAlwaysShowHandleFragment(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 2
    .param p1, "alwaysShowHandleFragment"    # Ljava/lang/Boolean;

    .line 261
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->alwaysShowHandleFragment:Ljava/lang/Boolean;

    .line 262
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showHandleFragment:Ljava/lang/Boolean;

    .line 265
    :cond_0
    return-object p0
.end method

.method public setBuildType(I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 3
    .param p1, "buildType"    # I

    .line 55
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildType:Ljava/lang/Integer;

    .line 56
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    .line 57
    .local v0, "controller":Lcom/molihuan/pathselector/controller/AbstractBuildController;
    packed-switch p1, :pswitch_data_0

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "buildType is not a predetermined parameter and see the interface for this class for more details"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :pswitch_0
    instance-of v1, v0, Lcom/molihuan/pathselector/controller/impl/DialogController;

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    new-instance v2, Lcom/molihuan/pathselector/controller/impl/DialogController;

    invoke-direct {v2}, Lcom/molihuan/pathselector/controller/impl/DialogController;-><init>()V

    iput-object v2, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    goto :goto_0

    .line 66
    :pswitch_1
    instance-of v1, v0, Lcom/molihuan/pathselector/controller/impl/FragmentController;

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    new-instance v2, Lcom/molihuan/pathselector/controller/impl/FragmentController;

    invoke-direct {v2}, Lcom/molihuan/pathselector/controller/impl/FragmentController;-><init>()V

    iput-object v2, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    goto :goto_0

    .line 60
    :pswitch_2
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/molihuan/pathselector/controller/impl/ActivityController;

    if-nez v1, :cond_1

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    new-instance v2, Lcom/molihuan/pathselector/controller/impl/ActivityController;

    invoke-direct {v2}, Lcom/molihuan/pathselector/controller/impl/ActivityController;-><init>()V

    iput-object v2, v1, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    .line 78
    :cond_1
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setContext(Landroid/content/Context;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-virtual {p0, p1}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->init(Landroid/content/Context;)V

    .line 50
    return-object p0
.end method

.method public setFileBeanController(Lcom/molihuan/pathselector/controller/AbstractFileBeanController;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "fileBeanController"    # Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    .line 241
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileBeanController:Lcom/molihuan/pathselector/controller/AbstractFileBeanController;

    .line 242
    return-object p0
.end method

.method public setFileItemListener(Lcom/molihuan/pathselector/listener/FileItemListener;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "fileItemListener"    # Lcom/molihuan/pathselector/listener/FileItemListener;

    .line 235
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileItemListener:Lcom/molihuan/pathselector/listener/FileItemListener;

    .line 236
    return-object p0
.end method

.method public setFileShowFragment(Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "fileShowFragment"    # Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    .line 217
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fileShowFragment:Lcom/molihuan/pathselector/fragment/AbstractFileShowFragment;

    .line 218
    return-object p0
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "fragmentManager"    # Landroidx/fragment/app/FragmentManager;

    .line 124
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 125
    return-object p0
.end method

.method public setFrameLayoutId(I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 2
    .param p1, "frameLayoutId"    # I

    .line 89
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->frameLayoutId:Ljava/lang/Integer;

    .line 90
    return-object p0
.end method

.method public setHandleFragment(Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "handleFragment"    # Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    .line 249
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleFragment:Lcom/molihuan/pathselector/fragment/AbstractHandleFragment;

    .line 250
    return-object p0
.end method

.method public varargs setHandleItemListeners([Lcom/molihuan/pathselector/listener/CommonItemListener;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "handleItemListeners"    # [Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 270
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->handleItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 271
    return-object p0
.end method

.method public setLifeCycle(Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "lifeCycle"    # Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    .line 276
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->lifeCycle:Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;

    .line 277
    return-object p0
.end method

.method public setMaxCount(Ljava/lang/Integer;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "maxCount"    # Ljava/lang/Integer;

    .line 108
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->maxCount:Ljava/lang/Integer;

    .line 109
    return-object p0
.end method

.method public varargs setMorePopupItemListeners([Lcom/molihuan/pathselector/listener/CommonItemListener;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "morePopupItemListeners"    # [Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 195
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->morePopupItemListeners:[Lcom/molihuan/pathselector/listener/CommonItemListener;

    .line 196
    return-object p0
.end method

.method public setOnlyShowImage()Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    const-string v1, "png"

    const-string v2, "jpg"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showFileTypes:[Ljava/lang/String;

    .line 224
    return-object p0
.end method

.method public setOnlyShowVideo()Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    const-string v1, "mp4"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showFileTypes:[Ljava/lang/String;

    .line 230
    return-object p0
.end method

.method public setPathSelectDialogHeight(Ljava/lang/Integer;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "height"    # Ljava/lang/Integer;

    .line 156
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->pathSelectDialogHeight:Ljava/lang/Integer;

    .line 157
    return-object p0
.end method

.method public setPathSelectDialogWidth(Ljava/lang/Integer;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "width"    # Ljava/lang/Integer;

    .line 150
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->pathSelectDialogWidth:Ljava/lang/Integer;

    .line 151
    return-object p0
.end method

.method public setRadio()Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->radio:Ljava/lang/Boolean;

    .line 102
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->maxCount:Ljava/lang/Integer;

    .line 103
    return-object p0
.end method

.method public setRequestCode(I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 2
    .param p1, "requestCode"    # I

    .line 83
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->requestCode:Ljava/lang/Integer;

    .line 84
    return-object p0
.end method

.method public setRootPath(Ljava/lang/String;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 114
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->rootPath:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->rootPath:Ljava/lang/String;

    .line 119
    :goto_0
    return-object p0
.end method

.method public varargs setSelectFileTypes([Ljava/lang/String;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "selectFileTypes"    # [Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->selectFileTypes:[Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public varargs setShowFileTypes([Ljava/lang/String;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "showFileTypes"    # [Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showFileTypes:[Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setShowHandleFragment(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "showHandleFragment"    # Ljava/lang/Boolean;

    .line 255
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showHandleFragment:Ljava/lang/Boolean;

    .line 256
    return-object p0
.end method

.method public setShowSelectStorageBtn(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "showSelectStorageBtn"    # Ljava/lang/Boolean;

    .line 142
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showSelectStorageBtn:Ljava/lang/Boolean;

    .line 143
    return-object p0
.end method

.method public setShowTabbarFragment(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "showTabbarFragment"    # Ljava/lang/Boolean;

    .line 209
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTabbarFragment:Ljava/lang/Boolean;

    .line 210
    return-object p0
.end method

.method public setShowTitlebarFragment(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "showTitlebarFragment"    # Ljava/lang/Boolean;

    .line 171
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->showTitlebarFragment:Ljava/lang/Boolean;

    .line 172
    return-object p0
.end method

.method public setSortType(Lcom/molihuan/pathselector/utils/MConstants$SortRules;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "sortType"    # Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 95
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->sortType:Lcom/molihuan/pathselector/utils/MConstants$SortRules;

    .line 96
    return-object p0
.end method

.method public setStatusBarColor(Ljava/lang/String;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "hexColor"    # Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->statusBarHexColor:Ljava/lang/String;

    .line 283
    return-object p0
.end method

.method public setTabbarFragment(Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "tabbarFragment"    # Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    .line 203
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->tabbarFragment:Lcom/molihuan/pathselector/fragment/AbstractTabbarFragment;

    .line 204
    return-object p0
.end method

.method public setTitlebarBG(Ljava/lang/Integer;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "titlebarBG"    # Ljava/lang/Integer;

    .line 189
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarBG:Ljava/lang/Integer;

    .line 190
    return-object p0
.end method

.method public setTitlebarFragment(Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "titlebarFragment"    # Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    .line 165
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarFragment:Lcom/molihuan/pathselector/fragment/AbstractTitlebarFragment;

    .line 166
    return-object p0
.end method

.method public setTitlebarMainTitle(Lcom/molihuan/pathselector/entity/FontBean;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "titlebarMainTitle"    # Lcom/molihuan/pathselector/entity/FontBean;

    .line 177
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarMainTitle:Lcom/molihuan/pathselector/entity/FontBean;

    .line 178
    return-object p0
.end method

.method public setTitlebarSubtitleTitle(Lcom/molihuan/pathselector/entity/FontBean;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p1, "titlebarSubtitleTitle"    # Lcom/molihuan/pathselector/entity/FontBean;

    .line 183
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iput-object p1, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->titlebarSubtitleTitle:Lcom/molihuan/pathselector/entity/FontBean;

    .line 184
    return-object p0
.end method

.method public show()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
    .locals 1

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dao/SelectConfigData;->initAllFragment()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 293
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 297
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_0
    nop

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dao/SelectConfigData;->initController()V

    .line 303
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/dao/SelectConfigData;->initHook()V

    .line 305
    iget-object v0, p0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    iget-object v0, v0, Lcom/molihuan/pathselector/dao/SelectConfigData;->buildController:Lcom/molihuan/pathselector/controller/AbstractBuildController;

    invoke-virtual {v0}, Lcom/molihuan/pathselector/controller/AbstractBuildController;->show()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;

    move-result-object v0

    return-object v0
.end method
