.class public abstract Lcom/molihuan/pathselector/activity/AbstractActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbstractActivity.java"

# interfaces
.implements Lcom/molihuan/pathselector/interfaces/IActivityAndFragment;


# instance fields
.field protected mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

.field protected pathSelectFragment:Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 27
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/activity/AbstractActivity;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-void
.end method


# virtual methods
.method public getComponents()V
    .locals 0

    .line 50
    return-void
.end method

.method protected hideActionBar()V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/molihuan/pathselector/activity/AbstractActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 67
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroidx/appcompat/app/ActionBar;->hide()V

    .line 70
    :cond_0
    return-void
.end method

.method public initData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    return-void
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-virtual {p0}, Lcom/molihuan/pathselector/activity/AbstractActivity;->hideActionBar()V

    .line 59
    return-void
.end method

.method public invoke(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "data"    # Ljava/util/Map;

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 100
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/molihuan/pathselector/activity/AbstractActivity;->setContentViewID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/molihuan/pathselector/activity/AbstractActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/molihuan/pathselector/activity/AbstractActivity;->getComponents()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/molihuan/pathselector/activity/AbstractActivity;->initData(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/molihuan/pathselector/activity/AbstractActivity;->initView(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/molihuan/pathselector/activity/AbstractActivity;->setListeners()V

    .line 44
    return-void
.end method

.method public abstract setContentViewID()I
.end method

.method public setListeners()V
    .locals 0

    .line 62
    return-void
.end method
