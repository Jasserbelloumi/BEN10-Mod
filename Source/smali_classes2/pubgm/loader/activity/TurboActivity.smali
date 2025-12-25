.class public Lpubgm/loader/activity/TurboActivity;
.super Lpubgm/loader/utils/ActivityCompat;
.source "TurboActivity.java"


# instance fields
.field private binding:Lpubgm/loader/databinding/ActivityCrashBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lpubgm/loader/utils/ActivityCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 82
    invoke-super {p0}, Lpubgm/loader/utils/ActivityCompat;->finish()V

    .line 83
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->finishAndRemoveTask()V

    .line 84
    return-void
.end method

.method synthetic lambda$onCreate$0$pubgm-loader-activity-TurboActivity(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 44
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setBgColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    const v1, 0x7f0800fa

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setLeftIcon(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setNotUseSystemToast()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setTextColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    const-string v1, "Text Copy"

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lpubgm/loader/activity/TurboActivity;->binding:Lpubgm/loader/databinding/ActivityCrashBinding;

    iget-object v0, v0, Lpubgm/loader/databinding/ActivityCrashBinding;->result:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0}, Lcom/google/android/material/textview/MaterialTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/ClipboardUtils;->copyText(Ljava/lang/CharSequence;)V

    .line 46
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 51
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->finish()V

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 24
    invoke-super {p0, p1}, Lpubgm/loader/utils/ActivityCompat;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const-string v0, "Application Crash"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lpubgm/loader/databinding/ActivityCrashBinding;->inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/ActivityCrashBinding;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/activity/TurboActivity;->binding:Lpubgm/loader/databinding/ActivityCrashBinding;

    .line 28
    iget-object v0, v0, Lpubgm/loader/databinding/ActivityCrashBinding;->topAppBar:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/TurboActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 29
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "FoxCheats M1 Crash"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .local v0, "error":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manufacturer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/DeviceUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/DeviceUtils;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Software"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "Error"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lpubgm/loader/activity/TurboActivity;->binding:Lpubgm/loader/databinding/ActivityCrashBinding;

    iget-object v1, v1, Lpubgm/loader/databinding/ActivityCrashBinding;->result:Lcom/google/android/material/textview/MaterialTextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/textview/MaterialTextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lpubgm/loader/activity/TurboActivity;->binding:Lpubgm/loader/databinding/ActivityCrashBinding;

    iget-object v1, v1, Lpubgm/loader/databinding/ActivityCrashBinding;->fab:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    new-instance v2, Lpubgm/loader/activity/TurboActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/TurboActivity$$ExternalSyntheticLambda0;-><init>(Lpubgm/loader/activity/TurboActivity;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .line 57
    const v0, 0x7f130052

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/TurboActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 58
    .local v0, "close":Landroid/view/MenuItem;
    const-string v1, "Close App"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 59
    const v1, 0x7f0800ed

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 60
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 62
    invoke-super {p0, p1}, Lpubgm/loader/utils/ActivityCompat;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .line 76
    invoke-super {p0}, Lpubgm/loader/utils/ActivityCompat;->onDestroy()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lpubgm/loader/activity/TurboActivity;->binding:Lpubgm/loader/databinding/ActivityCrashBinding;

    .line 78
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 67
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f130052

    invoke-virtual {p0, v1}, Lpubgm/loader/activity/TurboActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lpubgm/loader/activity/TurboActivity;->finish()V

    .line 69
    const/4 v0, 0x1

    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
